module Org.Allbinary.Graphics.CustomGPoint exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Graphics.GPoint as GPoint


jclass : String
jclass =
    "CustomGPoint"


jchain : List String
jchain =
    [ "CustomGPoint" ]
        ++ GPoint.jchain


jfields : List ( String, JR.JValue )
jfields =
    GPoint.jfields ++ [ ( "cx", JR.defaultOf "I" ), ( "cy", JR.defaultOf "I" ), ( "cz", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstance3_2", jm_getInstance3_2 )
        , ( "setX_1", jm_setX_1 )
        , ( "getX_0", jm_getX_0 )
        , ( "setY_1", jm_setY_1 )
        , ( "getY_0", jm_getY_0 )
        , ( "setZ_1", jm_setZ_1 )
        , ( "getZ_0", jm_getZ_0 ) ]
        GPoint.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomGPoint"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstance3_2", jm_getInstance3_2 ), ( "jm_setX_1", jm_setX_1 ), ( "jm_getX_0", jm_getX_0 ), ( "jm_setY_1", jm_setY_1 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_setZ_1", jm_setZ_1 ), ( "jm_getZ_0", jm_getZ_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_CUSTOM_POINT", jstatic_NULL_CUSTOM_POINT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_CUSTOM_POINT : JR.M
jstatic_NULL_CUSTOM_POINT s =
    JR.static "CustomGPoint" jclinit "NULL_CUSTOM_POINT"
        (JR.new jnew_3 [ (JR.int 0), (JR.int 0), (JR.int 0) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GPoint.jinit_3 JR.this [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]),
                identity,
                identity ])
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


jm_getInstance3_2 : JR.Method
jm_getInstance3_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_3 [ (JR.local "x"), (JR.local "y"), (JR.int 3) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setX_1 : JR.Method
jm_setX_1 jheap jthis jargs =
    JR.method [ ( "x", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "cx" "I" JR.this (JR.local "x")) ])
        (jregister jheap)
        jthis
        jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "cx") ])
        (jregister jheap)
        jthis
        jargs


jm_setY_1 : JR.Method
jm_setY_1 jheap jthis jargs =
    JR.method [ ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "cy" "I" JR.this (JR.local "y")) ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "cy") ])
        (jregister jheap)
        jthis
        jargs


jm_setZ_1 : JR.Method
jm_setZ_1 jheap jthis jargs =
    JR.method [ ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "cz" "I" JR.this (JR.local "z")) ])
        (jregister jheap)
        jthis
        jargs


jm_getZ_0 : JR.Method
jm_getZ_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "cz") ])
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

