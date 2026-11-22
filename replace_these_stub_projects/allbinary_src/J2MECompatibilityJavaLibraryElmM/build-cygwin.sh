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

# One Elm project: every module in one source folder and elm.json with elm/core (the package cache of elm make).
# A module is named by the package of its class (Org.Microemu.Device.Impl.Font) so it is put in the folder of its name
# (src/Org/Microemu/Device/Impl/Font.elm). A Windows program can not open a path over 260 characters, which a deep
# project folder plus a deep package reaches, so the project is a short temporary folder.
project="$(mktemp -d /tmp/elmXXXXXX)"
trap 'rm -rf "$project"' EXIT
mkdir -p "$project/src"
# The path in src of the module of a file: its module name with / for each .
module_path() {
    local name
    name="$(sed -n '1,40s/^module \([A-Za-z0-9_.]*\).*/\1/p' "$1" | head -1 | tr -d '\r')"
    [ -z "$name" ] && name="$(basename "$1" .elm)"
    echo "${name//.//}.elm"
}
while IFS= read -r file; do
    target="$project/src/$(module_path "$file")"
    mkdir -p "$(dirname "$target")"
    cp "$file" "$target"
done < <(find "$tree" -type f -name '*.elm')
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
    modules+=("src/$(module_path "$file")")
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
    local index from to alias module file
    for ((index = count - 1; index >= 0; index--)); do
        from="${cycle[$index]}"
        to="${cycle[$(((index + 1) % count))]}"
        # The code names the module by its class name (import Org.X.Name as Name), which is also its registered name
        alias="${to##*.}"
        module="${to//./\\.}"
        file="src/${from//.//}.elm"
        if [ -f "$file" ] && grep -q -E "^import $module( as $alias)?"$'\r'"?\$" "$file"; then
            use_by_name "$file" "$to"
            echo "Elm import cycle: $from uses $to by name"
            return 0
        fi
    done
    return 1
}

# true for the Elm module name of a Java library class: java.*, javax.* except javax.microedition, com.sun.*,
# com.jogamp.*, org.lwjgl.*, android.* (the packages ElmFromJavaParserConverter.isLibraryClass calls by name)
is_library_module() {
    case "$1" in
        Javax.Microedition.*) return 1 ;;
        Java.*|Javax.*|Com.Sun.*|Com.Jogamp.*|Org.Lwjgl.*|Android.*|Com.Google.Android.*) return 0 ;;
    esac
    return 1
}

# A module file uses another module (Org.X.Name) by name instead of importing it
use_by_name() {
    local file="$1"
    local to="$2"
    local alias="${to##*.}"
    local module="${to//./\\.}"
    sed -E -i \
        -e "s/(^|[^A-Za-z0-9_.])$alias\.(jm_[A-Za-z0-9_]+|jnew_[0-9]+|jinit_[0-9]+)/\1(JR.namedMethod \"$alias.\2\")/g" \
        -e "s/(^|[^A-Za-z0-9_.])$alias\.(jstatic_[A-Za-z0-9_]+)/\1(JR.namedStatic \"$alias.\2\")/g" \
        -e "s/(^|[^A-Za-z0-9_.])$alias\.jchain([^A-Za-z0-9_]|$)/\1[ \"$alias\" ]\2/g" \
        -e "s/(^|[^A-Za-z0-9_.])$alias\.jvtable([^A-Za-z0-9_]|$)/\1JR.noMethods\2/g" \
        -e "s/(^|[^A-Za-z0-9_.])$alias\.jfields([^A-Za-z0-9_]|$)/\1[]\2/g" \
        -e "/^import $module( as $alias)?"$'\r'"?\$/d" \
        "$file"
}

# The newest sources jar first: an older jar can have a module of an older conversion. The microemu for polyglot jars
# (org/microemu) have the javax.microedition modules. Modules of an org.allbinary sub-group (org.allbinary.game
# GameResourceNone, org.allbinary.data BaseData) are one folder deeper.
jars=()
while IFS= read -r jar; do
    jars+=("$jar")
done < <(ls -t "$repository"/org/allbinary/*Elm/*/*-sources.jar "$repository"/org/allbinary/*/*Elm/*/*-sources.jar "$repository"/org/microemu/*Elm/*/*-sources.jar 2>/dev/null)

# The .elm entries of every jar (jar|entry) in the order of jars, made once when a module is missing
entries="$object_dir/jar-entries.txt"
jar_entries() {
    [ -f "$entries" ] && return 0
    : > "$entries"
    local jar
    for jar in "${jars[@]}"; do
        unzip -Z1 "$jar" 2>/dev/null | grep -E '\.elm$' | sed "s|^|$jar\||" >> "$entries"
    done
}

# true when every module a module file imports is in the project or in a jar
imports_found() {
    local module path
    for module in $(tr -d '\r' < "$1" | sed -n 's/^import \([A-Za-z0-9_.]*\).*/\1/p'); do
        path="${module//.//}.elm"
        [ -f "src/$path" ] && continue
        grep -q -i -E "[|/]${path//./\\.}\$" "$entries" && continue
        return 1
    done
    return 0
}

round=0
while [ "$status" != "0" ] && [ "$round" -lt 40 ]; do
    round=$((round + 1))
    # elm.exe wraps the message, so the name of a long module is on the line after "You are trying to import a"
    if echo "$output" | tr -d '\r' | tr '\n' ' ' | grep -q 'You are trying to import a *`'; then
        jar_entries
        found=0
        for missing in $(echo "$output" | tr -d '\r' | tr '\n' ' ' | grep -o 'You are trying to import a *`[A-Za-z0-9_.]*`' | sed 's/.*`\([A-Za-z0-9_.]*\)`/\1/' | sort -u); do
            # The jar has the module at the path of its Java package (org/allbinary/util/ABVector.elm for
            # Org.Allbinary.Util.ABVector). Classes of the same name are in more than one module (HardwareFactory of
            # NoHardware and of PersonalComputerSystem), so the first jar whose module has all of its imports is used,
            # or the newest jar when none has.
            path="${missing//.//}.elm"
            chosen=""
            candidate="$object_dir/candidate.elm"
            while IFS='|' read -r jar entry; do
                [ -z "$jar" ] && continue
                unzip -p "$jar" "$entry" > "$candidate"
                [ -z "$chosen" ] && chosen="$jar|$entry"
                if imports_found "$candidate"; then
                    chosen="$jar|$entry"
                    break
                fi
            done < <(grep -i -E "[|/]${path//./\\.}\$" "$entries")
            if [ -n "$chosen" ]; then
                jar="${chosen%%|*}"
                entry="${chosen#*|}"
                mkdir -p "$(dirname "src/$path")"
                unzip -p "$jar" "$entry" > "src/$path"
                echo "Elm module of an optional dependency: $missing from $(basename "$jar")"
                found=1
            elif is_library_module "$missing"; then
                # A Java library class (JDK or external library, the classes the converter calls by name) that the
                # converter could not see as one: the modules that import it call it by name. A missing AllBinary
                # module is a dependency gap of the pom and still fails the build.
                module="${missing//./\\.}"
                while IFS= read -r importer; do
                    use_by_name "$importer" "$missing"
                    echo "Elm module not found, used by name: $missing in ${importer#src/}"
                    found=1
                done < <(grep -r -l -E "^import $module( as ${missing##*.})?"$'\r'"?\$" src --include='*.elm')
            fi
        done
        [ "$found" = "0" ] && break
    elif echo "$output" | grep -q 'Your module imports form a cycle'; then
        # elm.exe writes Windows line endings
        mapfile -t cycle < <(echo "$output" | tr -d '\r' | sed -n '/Your module imports form a cycle/,/+-<---+/p' | sed -n 's/^ *| *\([A-Za-z0-9_][A-Za-z0-9_.]*\) *$/\1/p')
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
