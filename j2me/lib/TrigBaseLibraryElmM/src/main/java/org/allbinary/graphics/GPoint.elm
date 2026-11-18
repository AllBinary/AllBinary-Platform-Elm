module Org.Allbinary.Graphics.GPoint exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Math.PositionStrings as PositionStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GPoint"


jchain : List String
jchain =
    [ "GPoint" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "x", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ), ( "z", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "getX_0", jm_getX_0 )
        , ( "getY_0", jm_getY_0 )
        , ( "getZ_0", jm_getZ_0 )
        , ( "getRawX_0", jm_getRawX_0 )
        , ( "getRawY_0", jm_getRawY_0 )
        , ( "getRawZ_0", jm_getRawZ_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "toStringStatic_3", jm_toStringStatic_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GPoint"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getX_0", jm_getX_0 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_getZ_0", jm_getZ_0 ), ( "jm_getRawX_0", jm_getRawX_0 ), ( "jm_getRawY_0", jm_getRawY_0 ), ( "jm_getRawZ_0", jm_getRawZ_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_toStringStatic_3", jm_toStringStatic_3 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_POINT_LABEL", jstatic_POINT_LABEL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_POINT_LABEL : JR.M
jstatic_POINT_LABEL s =
    JR.static "GPoint" jclinit "POINT_LABEL"
        (JR.str "Point: ")
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "x" "I" JR.this (JR.local "x")), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.local "y")), 
                    JR.exec (JR.setField "z" "I" JR.this (JR.local "z")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "point", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_3 [ (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []), (JR.invoke "getZ_0" (JR.local "point") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "x") ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "y") ])
        (jregister jheap)
        jthis
        jargs


jm_getZ_0 : JR.Method
jm_getZ_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "z") ])
        (jregister jheap)
        jthis
        jargs


jm_getRawX_0 : JR.Method
jm_getRawX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "x") ])
        (jregister jheap)
        jthis
        jargs


jm_getRawY_0 : JR.Method
jm_getRawY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "y") ])
        (jregister jheap)
        jthis
        jargs


jm_getRawZ_0 : JR.Method
jm_getRawZ_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "z") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_toStringStatic_3 [ (JR.invoke "getX_0" JR.this []), (JR.invoke "getY_0" JR.this []), (JR.invoke "getZ_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringStatic_3 : JR.Method
jm_toStringStatic_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "positionStrings" "" (JR.callStatic PositionStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_POINT_LABEL ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "X_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "x") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Y_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "y") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Z_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "z") ]), 
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

