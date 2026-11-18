module Org.Allbinary.Util.ArrayUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Math.MathUtil as MathUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ArrayUtil"


jchain : List String
jchain =
    [ "ArrayUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "mathUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "copyOf_2", jm_copyOf_2 )
        , ( "copyOfType_3", jm_copyOfType_3 )
        , ( "copyOfbyte_2", jm_copyOfbyte_2 )
        , ( "copyOfshort_2", jm_copyOfshort_2 )
        , ( "copyOfint_2", jm_copyOfint_2 )
        , ( "copyOflong_2", jm_copyOflong_2 )
        , ( "copyOfchar_2", jm_copyOfchar_2 )
        , ( "copyOffloat_2", jm_copyOffloat_2 )
        , ( "copyOfdouble_2", jm_copyOfdouble_2 )
        , ( "copyOfboolean_2", jm_copyOfboolean_2 )
        , ( "reverse_1", jm_reverse_1 )
        , ( "flip_3", jm_flip_3 )
        , ( "toStringFromTwoDimensionaArray_1", jm_toStringFromTwoDimensionaArray_1 )
        , ( "toStringFromObjectArray_1", jm_toStringFromObjectArray_1 )
        , ( "toStringFromByteArray_1", jm_toStringFromByteArray_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ArrayUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_copyOf_2", jm_copyOf_2 ), ( "jm_copyOfType_3", jm_copyOfType_3 ), ( "jm_copyOfbyte_2", jm_copyOfbyte_2 ), ( "jm_copyOfshort_2", jm_copyOfshort_2 ), ( "jm_copyOfint_2", jm_copyOfint_2 ), ( "jm_copyOflong_2", jm_copyOflong_2 ), ( "jm_copyOfchar_2", jm_copyOfchar_2 ), ( "jm_copyOffloat_2", jm_copyOffloat_2 ), ( "jm_copyOfdouble_2", jm_copyOfdouble_2 ), ( "jm_copyOfboolean_2", jm_copyOfboolean_2 ), ( "jm_reverse_1", jm_reverse_1 ), ( "jm_flip_3", jm_flip_3 ), ( "jm_toStringFromTwoDimensionaArray_1", jm_toStringFromTwoDimensionaArray_1 ), ( "jm_toStringFromObjectArray_1", jm_toStringFromObjectArray_1 ), ( "jm_toStringFromByteArray_1", jm_toStringFromByteArray_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ArrayUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "mathUtil" "" JR.this (JR.callStatic MathUtil.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_copyOf_2 : JR.Method
jm_copyOf_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "copyOfType_3" JR.this [ (JR.local "original"), (JR.local "newLength"), (JR.getClass (JR.local "original")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_copyOfType_3 : JR.Method
jm_copyOfType_3 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ), ( "newType", "" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOfbyte_2 : JR.Method
jm_copyOfbyte_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "B" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOfshort_2 : JR.Method
jm_copyOfshort_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "S" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOfint_2 : JR.Method
jm_copyOfint_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "I" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOflong_2 : JR.Method
jm_copyOflong_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "J" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOfchar_2 : JR.Method
jm_copyOfchar_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "C" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOffloat_2 : JR.Method
jm_copyOffloat_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "F" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOfdouble_2 : JR.Method
jm_copyOfdouble_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "D" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_copyOfboolean_2 : JR.Method
jm_copyOfboolean_2 jheap jthis jargs =
    JR.method [ ( "original", "" ), ( "newLength", "I" ) ] ""
        (JR.run [ 
                    JR.declare "copy" "" (JR.newArray "Z" [ (JR.local "newLength") ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "original"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.invoke "min_2" (JR.thisField "mathUtil") [ (JR.alength (JR.local "original")), (JR.local "newLength") ]) ]), 
                    JR.return (JR.local "copy") ])
        (jregister jheap)
        jthis
        jargs


jm_reverse_1 : JR.Method
jm_reverse_1 jheap jthis jargs =
    JR.method [ ( "intArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "length" "I" (JR.map2 JR.sub (JR.alength (JR.local "intArray")) (JR.int 1)), 
                    JR.declare "temp" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "size" "I" (JR.map2 JR.div (JR.local "length") (JR.int 2)), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.lessEquals (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69196 -> (JR.setLocal "index" "I" (JR.lit jwN69196))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "temp" "I" (JR.aget (JR.local "intArray") (JR.local "index"))), 
                        JR.exec (JR.andThen (JR.local "intArray") (\jaN69036 -> JR.andThen (JR.local "index") (\jiN69036 -> (JR.aset (JR.lit jaN69036) (JR.lit jiN69036) (JR.aget (JR.local "intArray") (JR.map2 JR.sub (JR.local "length") (JR.local "index"))))))), 
                        JR.exec (JR.andThen (JR.local "intArray") (\jaN69098 -> JR.andThen (JR.map2 JR.sub (JR.local "length") (JR.local "index")) (\jiN69098 -> (JR.aset (JR.lit jaN69098) (JR.lit jiN69098) (JR.local "temp"))))) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_flip_3 : JR.Method
jm_flip_3 jheap jthis jargs =
    JR.method [ ( "intArray", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.declare "length" "I" (JR.map2 JR.sub (JR.local "height") (JR.int 1)), 
                    JR.declare "temp" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "index" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "rowIndex" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "y" "I" (JR.int 0), JR.for (JR.map2 JR.lessEquals (JR.local "y") (JR.map2 JR.div (JR.local "length") (JR.int 2))) (JR.run [ JR.exec (JR.postUpdate (JR.local "y") (\jwN69796 -> (JR.setLocal "y" "I" (JR.lit jwN69796))) JR.increment) ]) (JR.run [ 
                        JR.run [ JR.declare "x" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "x") (JR.local "width")) (JR.run [ JR.exec (JR.postUpdate (JR.local "x") (\jwN69721 -> (JR.setLocal "x" "I" (JR.lit jwN69721))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "rowIndex" "I" ((JR.map2 JR.mul ((JR.map2 JR.sub (JR.local "length") (JR.local "y"))) (JR.local "width")))), 
                            JR.exec (JR.setLocal "index" "I" (JR.map2 JR.add (JR.local "x") ((JR.map2 JR.mul (JR.local "y") (JR.local "width"))))), 
                            JR.exec (JR.setLocal "temp" "I" (JR.aget (JR.local "intArray") (JR.local "index"))), 
                            JR.exec (JR.andThen (JR.local "intArray") (\jaN69561 -> JR.andThen (JR.local "index") (\jiN69561 -> (JR.aset (JR.lit jaN69561) (JR.lit jiN69561) (JR.aget (JR.local "intArray") (JR.map2 JR.add (JR.local "rowIndex") (JR.local "x"))))))), 
                            JR.exec (JR.andThen (JR.local "intArray") (\jaN69623 -> JR.andThen (JR.map2 JR.add (JR.local "rowIndex") (JR.local "x")) (\jiN69623 -> (JR.aset (JR.lit jaN69623) (JR.lit jiN69623) (JR.local "temp"))))) ]) ] ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_toStringFromTwoDimensionaArray_1 : JR.Method
jm_toStringFromTwoDimensionaArray_1 jheap jthis jargs =
    JR.method [ ( "twoDimensionalIntArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "endIndex" "I" (JR.alength (JR.local "twoDimensionalIntArray")), 
                    JR.declare "endIndex2" "I" (JR.alength (JR.aget (JR.local "twoDimensionalIntArray") (JR.int 0))), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "endIndex")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70455 -> (JR.setLocal "index" "I" (JR.lit jwN70455))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "BRACE_OPEN" (JR.local "commonSeps")) ]), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "endIndex2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN70311 -> (JR.setLocal "index2" "I" (JR.lit jwN70311))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.aget (JR.aget (JR.local "twoDimensionalIntArray") (JR.local "index")) (JR.local "index2"))) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]) ]) ], 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "BRACE_CLOSE" (JR.local "commonSeps")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.local "commonSeps")) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringFromObjectArray_1 : JR.Method
jm_toStringFromObjectArray_1 jheap jthis jargs =
    JR.method [ ( "objectArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "objectArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70836 -> (JR.setLocal "index" "I" (JR.lit jwN70836))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.aget (JR.local "objectArray") (JR.local "index")) ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringFromByteArray_1 : JR.Method
jm_toStringFromByteArray_1 jheap jthis jargs =
    JR.method [ ( "byteArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "byteArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71189 -> (JR.setLocal "index" "I" (JR.lit jwN71189))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "appendbyte_1" (JR.local "stringBuffer") [ (JR.aget (JR.local "byteArray") (JR.local "index")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

