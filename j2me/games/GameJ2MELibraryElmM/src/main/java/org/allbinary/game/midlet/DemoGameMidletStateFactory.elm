module Org.Allbinary.Game.Midlet.DemoGameMidletStateFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.Game.Midlet.DemoGameMidletState as DemoGameMidletState


jclass : String
jclass =
    "DemoGameMidletStateFactory"


jchain : List String
jchain =
    [ "DemoGameMidletStateFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NONE", JR.defaultOf "" ), ( "START_DEMO", JR.defaultOf "" ), ( "START_GAME", JR.defaultOf "" ), ( "START_INPUT_MAPPING", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoGameMidletStateFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_STATE", jstatic_STATE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_STATE : JR.M
jstatic_STATE s =
    JR.static "DemoGameMidletStateFactory" jclinit "STATE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NONE" "" JR.this (JR.new DemoGameMidletState.jnew_0 [])),
                JR.exec (JR.setField "START_DEMO" "" JR.this (JR.new DemoGameMidletState.jnew_0 [])),
                JR.exec (JR.setField "START_GAME" "" JR.this (JR.new DemoGameMidletState.jnew_0 [])),
                JR.exec (JR.setField "START_INPUT_MAPPING" "" JR.this (JR.new DemoGameMidletState.jnew_0 [])),
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
                    JR.return jstatic_STATE ])
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

