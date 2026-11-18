module Org.Allbinary.Graphics.Color.BasicColor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorUtil as BasicColorUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BasicColor"


jchain : List String
jchain =
    [ "BasicColor" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "value", JR.defaultOf "I" ), ( "redComponent", JR.defaultOf "F" ), ( "greenComponent", JR.defaultOf "F" ), ( "blueComponent", JR.defaultOf "F" ), ( "alphaComponent", JR.defaultOf "F" ), ( "red", JR.defaultOf "S" ), ( "green", JR.defaultOf "S" ), ( "blue", JR.defaultOf "S" ), ( "alpha", JR.defaultOf "S" ) ]


jvtable =
    JR.vtable
        [ ( "intValue_0", jm_intValue_0 )
        , ( "toInt_0", jm_toInt_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getRedComponent_0", jm_getRedComponent_0 )
        , ( "getGreenComponent_0", jm_getGreenComponent_0 )
        , ( "getBlueComponent_0", jm_getBlueComponent_0 )
        , ( "getAlphaComponent_0", jm_getAlphaComponent_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicColor"
        [ ( "jm_intValue_0", jm_intValue_0 ), ( "jm_toInt_0", jm_toInt_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getRedComponent_0", jm_getRedComponent_0 ), ( "jm_getGreenComponent_0", jm_getGreenComponent_0 ), ( "jm_getBlueComponent_0", jm_getBlueComponent_0 ), ( "jm_getAlphaComponent_0", jm_getAlphaComponent_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "alphaValue", "I" ), ( "value", "I" ), ( "name", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.declare "tempValue" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "basicColorUtil" "" (JR.callStatic BasicColorUtil.jm_getInstance_0 []), 
                    JR.ifElse (JR.field "isAlpha" (JR.local "basicColorUtil")) (JR.run [ 
                        JR.ifElse (JR.field "ffOpaque" (JR.local "basicColorUtil")) (JR.run [ 
                            JR.exec (JR.setLocal "tempValue" "I" (JR.map2 JR.bor (JR.local "alphaValue") (JR.local "value"))) ]) (JR.run [ 
                            JR.exec (JR.setLocal "tempValue" "I" (JR.map2 JR.bor (JR.int (JR.i32 0x00000000)) (JR.local "value"))) ]) ]) (JR.run [ 
                        JR.exec (JR.setLocal "tempValue" "I" (JR.local "value")) ]), 
                    JR.declare "alphaInt" "I" ((JR.map2 JR.band ((JR.map2 JR.shr (JR.local "tempValue") (JR.int 24))) (JR.int 255))), 
                    JR.exec (JR.setField "alpha" "S" JR.this (JR.cast "S" (JR.local "alphaInt"))), 
                    JR.exec (JR.setField "alphaComponent" "F" JR.this (JR.map2 JR.div ((JR.cast "F" (JR.local "alphaInt"))) (JR.float 255.0))), 
                    JR.declare "redInt" "I" ((JR.map2 JR.band ((JR.map2 JR.shr (JR.local "tempValue") (JR.int 16))) (JR.int 255))), 
                    JR.exec (JR.setField "red" "S" JR.this (JR.cast "S" (JR.local "redInt"))), 
                    JR.exec (JR.setField "redComponent" "F" JR.this (JR.map2 JR.div ((JR.cast "F" (JR.local "redInt"))) (JR.float 255.0))), 
                    JR.declare "greenInt" "I" ((JR.map2 JR.band ((JR.map2 JR.shr (JR.local "tempValue") (JR.int 8))) (JR.int 255))), 
                    JR.exec (JR.setField "green" "S" JR.this (JR.cast "S" (JR.local "greenInt"))), 
                    JR.exec (JR.setField "greenComponent" "F" JR.this (JR.map2 JR.div ((JR.cast "F" (JR.local "greenInt"))) (JR.float 255.0))), 
                    JR.declare "blueInt" "I" ((JR.map2 JR.band ((JR.local "tempValue")) (JR.int 255))), 
                    JR.exec (JR.setField "blue" "S" JR.this (JR.cast "S" (JR.local "blueInt"))), 
                    JR.exec (JR.setField "blueComponent" "F" JR.this (JR.map2 JR.div ((JR.cast "F" (JR.local "blueInt"))) (JR.float 255.0))), 
                    JR.exec (JR.setField "value" "I" JR.this (JR.local "tempValue")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_intValue_0 : JR.Method
jm_intValue_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "value") ])
        (jregister jheap)
        jthis
        jargs


jm_toInt_0 : JR.Method
jm_toInt_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "value") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "BasicColor: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Alpha: ") ]), 
                    JR.exec (JR.invoke "appendshort_1" (JR.local "stringBuffer") [ (JR.thisField "alpha") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Red: ") ]), 
                    JR.exec (JR.invoke "appendshort_1" (JR.local "stringBuffer") [ (JR.thisField "red") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Green: ") ]), 
                    JR.exec (JR.invoke "appendshort_1" (JR.local "stringBuffer") [ (JR.thisField "green") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Blue: ") ]), 
                    JR.exec (JR.invoke "appendshort_1" (JR.local "stringBuffer") [ (JR.thisField "blue") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Value: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "value") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getRedComponent_0 : JR.Method
jm_getRedComponent_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "redComponent") ])
        (jregister jheap)
        jthis
        jargs


jm_getGreenComponent_0 : JR.Method
jm_getGreenComponent_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "greenComponent") ])
        (jregister jheap)
        jthis
        jargs


jm_getBlueComponent_0 : JR.Method
jm_getBlueComponent_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "blueComponent") ])
        (jregister jheap)
        jthis
        jargs


jm_getAlphaComponent_0 : JR.Method
jm_getAlphaComponent_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "alphaComponent") ])
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

