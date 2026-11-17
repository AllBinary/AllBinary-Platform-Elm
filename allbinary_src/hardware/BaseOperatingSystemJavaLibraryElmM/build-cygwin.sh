#!/usr/bin/env bash

# Compiles the Elm modules the Elm converter generated with elm make. An Elm module is found by its name in a source folder, so
# the hand written runtime, the Elm sources of the dependencies (META-INF/elm/src of their jars),
# and this project are copied to one tree first. This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Elm sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
tree="$object_dir/tree"
mkdir -p "$output_dir/src" "$tree"
cp -R "$source_dir/." "$output_dir/src/"
cp -R "$runtime_dir/." "$tree/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$tree/"
fi
cp -R "$source_dir/." "$tree/"

# One Elm project: every module in one source folder and elm.json with elm/core (the package cache of elm make)
project="$object_dir/project"
mkdir -p "$project/src"
find "$tree" -type f -name '*.elm' -exec cp {} "$project/src/" \;
cat > "$project/elm.json" <<'JSON'
{
    "type": "application",
    "source-directories": [
        "src"
    ],
    "elm-version": "0.19.3",
    "dependencies": {
        "direct": {
            "elm/core": "1.0.5",
            "elm/json": "1.1.3"
        },
        "indirect": {}
    },
    "test-dependencies": {
        "direct": {},
        "indirect": {}
    }
}
JSON
cd "$project" || exit 1
modules=()
while IFS= read -r file; do
    modules+=("src/$(basename "$file")")
done < <(find "$source_dir" -type f -name '*.elm' | sort)
echo "Elm modules: ${#modules[@]}"
if [ "${#modules[@]}" = "0" ]; then
    exit 0
fi
output="$("$compiler" make "${compiler_flags[@]}" "${modules[@]}" --output=/dev/null 2>&1)"
status=$?
# Elm compiles every module a module imports. A module of an optional dependency of a dependency (TsUtil) is not a
# transitive Maven dependency (Java only needs the compiled classes), so its source is taken from the installed sources
# jar of the Elm project that has it.
repository="$(sed -n 's:.*<localRepository>\(.*\)</localRepository>.*:\1:p' "$(cygpath -u "${USERPROFILE:-$HOME}")/.m2/settings.xml" 2>/dev/null | head -1)"
[ -z "$repository" ] && repository="$(cygpath -u "${USERPROFILE:-$HOME}")/.m2/repository"
repository="$(cygpath -u "$repository")"

# Elm modules can not import each other. Where 2 or more classes use each other (such as AngleFactory and FrameUtil
# that call getInstance of each other) Elm reports the cycle and one of its imports is broken: the module calls the
# static methods, constructors, and static fields of the other one by name (JR.namedMethod and JR.namedStatic) from
# the classes the heap has registered (see JR.register), and it no longer imports it. Only this build's copy changes.
break_cycle() {
    local cycle=("$@")
    local count="${#cycle[@]}"
    local index from to file
    for ((index = count - 1; index >= 0; index--)); do
        from="${cycle[$index]}"
        to="${cycle[$(((index + 1) % count))]}"
        file="src/$from.elm"
        if [ -f "$file" ] && grep -q -E "^import $to"$'\r'"?\$" "$file"; then
            sed -E -i \
                -e "s/(^|[^A-Za-z0-9_.])$to\.(jm_[A-Za-z0-9_]+|jnew_[0-9]+|jinit_[0-9]+)/\1(JR.namedMethod \"$to.\2\")/g" \
                -e "s/(^|[^A-Za-z0-9_.])$to\.(jstatic_[A-Za-z0-9_]+)/\1(JR.namedStatic \"$to.\2\")/g" \
                -e "s/(^|[^A-Za-z0-9_.])$to\.jchain([^A-Za-z0-9_]|$)/\1[ \"$to\" ]\2/g" \
                -e "s/(^|[^A-Za-z0-9_.])$to\.jvtable([^A-Za-z0-9_]|$)/\1JR.noMethods\2/g" \
                -e "s/(^|[^A-Za-z0-9_.])$to\.jfields([^A-Za-z0-9_]|$)/\1[]\2/g" \
                -e "/^import $to"$'\r'"?\$/d" \
                "$file"
            echo "Elm import cycle: $from uses $to by name"
            return 0
        fi
    done
    return 1
}

# The newest sources jar first: an older jar can have a module of an older conversion
jars=()
while IFS= read -r jar; do
    jars+=("$jar")
done < <(ls -t "$repository"/org/allbinary/*Elm/*/*-sources.jar 2>/dev/null)

round=0
while [ "$status" != "0" ] && [ "$round" -lt 40 ]; do
    round=$((round + 1))
    if echo "$output" | grep -q 'You are trying to import a `'; then
        found=0
        for missing in $(echo "$output" | sed -n 's/^You are trying to import a `\([A-Za-z0-9_]*\)` module:.*/\1/p' | sort -u); do
            for jar in "${jars[@]}"; do
                entry="$(unzip -Z1 "$jar" 2>/dev/null | grep -E "(^|/)$missing\.elm$" | head -1)"
                if [ -n "$entry" ]; then
                    unzip -p "$jar" "$entry" > "src/$missing.elm"
                    echo "Elm module of an optional dependency: $missing from $(basename "$jar")"
                    found=1
                    break
                fi
            done
        done
        [ "$found" = "0" ] && break
    elif echo "$output" | grep -q 'Your module imports form a cycle'; then
        # elm.exe writes Windows line endings
        mapfile -t cycle < <(echo "$output" | tr -d '\r' | sed -n '/Your module imports form a cycle/,/+-<---+/p' | sed -n 's/^ *| *\([A-Za-z0-9_][A-Za-z0-9_]*\) *$/\1/p')
        [ "${#cycle[@]}" -lt 2 ] && break
        break_cycle "${cycle[@]}" || break
    else
        break
    fi
    output="$("$compiler" make "${compiler_flags[@]}" "${modules[@]}" --output=/dev/null 2>&1)"
    status=$?
done
echo "$output" | grep -v -E '^Compiling|DEV mode|^$'
if [ "$status" = "0" ]; then
    echo "Elm compiled: $artifact"
    exit 0
fi
echo "Elm build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
