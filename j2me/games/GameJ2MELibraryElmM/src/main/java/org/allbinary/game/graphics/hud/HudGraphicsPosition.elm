module Org.Allbinary.Game.Graphics.Hud.HudGraphicsPosition exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.graphics.hud
-}

import JR
import Org.Allbinary.Graphics.PointFactory as PointFactory


jclass : String
jclass =
    "HudGraphicsPosition"


jchain : List String
jchain =
    [ "HudGraphicsPosition" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "anchor", JR.defaultOf "I" ), ( "point", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAnchor_0", jm_getAnchor_0 )
        , ( "setAnchor_1", jm_setAnchor_1 )
        , ( "getPoint_0", jm_getPoint_0 )
        , ( "setPoint_1", jm_setPoint_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HudGraphicsPosition"
        [ ( "jm_getAnchor_0", jm_getAnchor_0 ), ( "jm_setAnchor_1", jm_setAnchor_1 ), ( "jm_getPoint_0", jm_getPoint_0 ), ( "jm_setPoint_1", jm_setPoint_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_HUD_GRAPHICS_POSITION", jstatic_NULL_HUD_GRAPHICS_POSITION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_HUD_GRAPHICS_POSITION : JR.M
jstatic_NULL_HUD_GRAPHICS_POSITION s =
    JR.static "HudGraphicsPosition" jclinit "NULL_HUD_GRAPHICS_POSITION"
        (JR.new jnew_2 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.int 9) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "point", "" ), ( "anchor", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "point" "" JR.this (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setAnchor_1" JR.this [ (JR.local "anchor") ]), 
                    JR.exec (JR.invoke "setPoint_1" JR.this [ (JR.local "point") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getAnchor_0 : JR.Method
jm_getAnchor_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "anchor") ])
        (jregister jheap)
        jthis
        jargs


jm_setAnchor_1 : JR.Method
jm_setAnchor_1 jheap jthis jargs =
    JR.method [ ( "anchor", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "anchor" "I" JR.this (JR.local "anchor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPoint_0 : JR.Method
jm_getPoint_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "point") ])
        (jregister jheap)
        jthis
        jargs


jm_setPoint_1 : JR.Method
jm_setPoint_1 jheap jthis jargs =
    JR.method [ ( "point", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "point" "" JR.this (JR.local "point")) ])
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

