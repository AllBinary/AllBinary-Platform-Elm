module BasicColorUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR



jclass : String
jclass =
    "BasicColorUtil"


jchain : List String
jchain =
    [ "BasicColorUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ZERO_ARRAY", JR.defaultOf "" ), ( "ALPHA", JR.defaultOf "I" ), ( "isAlpha", JR.defaultOf "Z" ), ( "ffOpaque", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRGB_3", jm_getRGB_3 )
        , ( "getARGB_4", jm_getARGB_4 )
        , ( "get_2", jm_get_2 )
        , ( "invert_1", jm_invert_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicColorUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRGB_3", jm_getRGB_3 ), ( "jm_getARGB_4", jm_getARGB_4 ), ( "jm_get_2", jm_get_2 ), ( "jm_invert_1", jm_invert_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicColorUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ZERO_ARRAY" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                JR.exec (JR.setField "ALPHA" "I" JR.this (JR.int (JR.i32 0xFF000000))),
                JR.exec (JR.setField "isAlpha" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "ffOpaque" "Z" JR.this (JR.bool True)),
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


jm_getRGB_3 : JR.Method
jm_getRGB_3 jheap jthis jargs =
    JR.method [ ( "red", "I" ), ( "green", "I" ), ( "blue", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "value" "I" (JR.int 0), 
                    JR.ifElse (JR.thisField "isAlpha") (JR.run [ 
                        JR.ifElse (JR.thisField "ffOpaque") (JR.run [ 
                            JR.exec (JR.setLocal "value" "I" (JR.thisField "ALPHA")) ]) identity ]) identity, 
                    JR.exec (JR.setLocal "value" "I" (JR.map2 JR.bor ((JR.map2 JR.shl (JR.local "red") (JR.int 16))) (JR.local "value"))), 
                    JR.exec (JR.setLocal "value" "I" (JR.map2 JR.bor ((JR.map2 JR.shl (JR.local "green") (JR.int 8))) (JR.local "value"))), 
                    JR.exec (JR.setLocal "value" "I" (JR.map2 JR.bor (JR.local "blue") (JR.local "value"))), 
                    JR.return (JR.local "value") ])
        (jregister jheap)
        jthis
        jargs


jm_getARGB_4 : JR.Method
jm_getARGB_4 jheap jthis jargs =
    JR.method [ ( "alphaValue", "I" ), ( "r", "I" ), ( "g", "I" ), ( "b", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.map2 JR.add (JR.map2 JR.add ((JR.map2 JR.band ((JR.map2 JR.shl (JR.local "alphaValue") (JR.int 24))) (JR.thisField "ALPHA"))) ((JR.map2 JR.band ((JR.map2 JR.shl (JR.local "r") (JR.int 16))) (JR.int (JR.i32 0x00FF0000))))) ((JR.map2 JR.band ((JR.map2 JR.shl (JR.local "g") (JR.int 8))) (JR.int (JR.i32 0x0000FF00))))) ((JR.map2 JR.band (JR.local "b") (JR.int (JR.i32 0x000000FF))))) ])
        (jregister jheap)
        jthis
        jargs


jm_get_2 : JR.Method
jm_get_2 jheap jthis jargs =
    JR.method [ ( "alphaValue", "I" ), ( "color", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add ((JR.map2 JR.band ((JR.map2 JR.shl (JR.local "alphaValue") (JR.int 24))) (JR.thisField "ALPHA"))) (JR.local "color")) ])
        (jregister jheap)
        jthis
        jargs


jm_invert_1 : JR.Method
jm_invert_1 jheap jthis jargs =
    JR.method [ ( "color", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.bor ((JR.map2 JR.sub (JR.int (JR.i32 0xFFFFFF)) (JR.local "color"))) (JR.thisField "ALPHA")) ])
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

