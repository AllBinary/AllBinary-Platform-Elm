module Org.Allbinary.View.StaticViewPosition exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.view
-}

import JR
import Org.Allbinary.View.ViewPosition as ViewPosition


jclass : String
jclass =
    "StaticViewPosition"


jchain : List String
jchain =
    [ "StaticViewPosition" ]
        ++ ViewPosition.jchain


jfields : List ( String, JR.JValue )
jfields =
    ViewPosition.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getX_0", jm_getX_0 )
        , ( "getY_0", jm_getY_0 )
        , ( "getZ_0", jm_getZ_0 ) ]
        ViewPosition.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StaticViewPosition"
        [ ( "jm_getX_0", jm_getX_0 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_getZ_0", jm_getZ_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ViewPosition.jinit_3 JR.this [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getRawX_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getRawY_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getZ_0 : JR.Method
jm_getZ_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getRawZ_0" JR.this []) ])
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

