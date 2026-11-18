module Org.Allbinary.View.ViewPositionBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.view
-}

import JR
import Org.Allbinary.Graphics.GPoint as GPoint


jclass : String
jclass =
    "ViewPositionBase"


jchain : List String
jchain =
    [ "ViewPositionBase" ]
        ++ GPoint.jchain


jfields : List ( String, JR.JValue )
jfields =
    GPoint.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getX2_0", jm_getX2_0 )
        , ( "getY2_0", jm_getY2_0 )
        , ( "getZ2_0", jm_getZ2_0 )
        , ( "setAllbinaryLayer_1", jm_setAllbinaryLayer_1 ) ]
        GPoint.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ViewPositionBase"
        [ ( "jm_getX2_0", jm_getX2_0 ), ( "jm_getY2_0", jm_getY2_0 ), ( "jm_getZ2_0", jm_getZ2_0 ), ( "jm_setAllbinaryLayer_1", jm_setAllbinaryLayer_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_VIEW_POSITION", jstatic_NULL_VIEW_POSITION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_VIEW_POSITION : JR.M
jstatic_NULL_VIEW_POSITION s =
    JR.static "ViewPositionBase" jclinit "NULL_VIEW_POSITION"
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


jm_getX2_0 : JR.Method
jm_getX2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getX_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getY2_0 : JR.Method
jm_getY2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getY_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getZ2_0 : JR.Method
jm_getZ2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getZ_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setAllbinaryLayer_1 : JR.Method
jm_setAllbinaryLayer_1 jheap jthis jargs =
    JR.method [ ( "allbinaryLayer", "" ) ] ""
        identity
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

