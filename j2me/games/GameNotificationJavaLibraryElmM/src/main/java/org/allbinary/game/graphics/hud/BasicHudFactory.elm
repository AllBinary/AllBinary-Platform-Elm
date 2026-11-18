module Org.Allbinary.Game.Graphics.Hud.BasicHudFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.graphics.hud
-}

import JR



jclass : String
jclass =
    "BasicHudFactory"


jchain : List String
jchain =
    [ "BasicHudFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "DIRECTION_EXCEPTION", JR.defaultOf "" ), ( "VERTICAL", JR.defaultOf "I" ), ( "HORIZONTAL", JR.defaultOf "I" ), ( "BOTTOMLEFT", JR.defaultOf "I" ), ( "BOTTOMRIGHT", JR.defaultOf "I" ), ( "TOPLEFT", JR.defaultOf "I" ), ( "TOPRIGHT", JR.defaultOf "I" ), ( "BOTTOMCENTER", JR.defaultOf "I" ), ( "TOPCENTER", JR.defaultOf "I" ), ( "ABSOLUTE", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicHudFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicHudFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "DIRECTION_EXCEPTION" "" JR.this (JR.str "Only Horizontal Direction is Allowed Currently")),
                JR.exec (JR.setField "VERTICAL" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "HORIZONTAL" "I" JR.this (JR.int 1)),
                JR.exec (JR.setField "BOTTOMLEFT" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "BOTTOMRIGHT" "I" JR.this (JR.int 1)),
                JR.exec (JR.setField "TOPLEFT" "I" JR.this (JR.int 2)),
                JR.exec (JR.setField "TOPRIGHT" "I" JR.this (JR.int 3)),
                JR.exec (JR.setField "BOTTOMCENTER" "I" JR.this (JR.int 4)),
                JR.exec (JR.setField "TOPCENTER" "I" JR.this (JR.int 5)),
                JR.exec (JR.setField "ABSOLUTE" "I" JR.this (JR.int 6)),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

