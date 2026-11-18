module Org.Allbinary.Game.Configuration.Feature.MultiPlayerGameFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory


jclass : String
jclass =
    "MultiPlayerGameFeatureFactory"


jchain : List String
jchain =
    [ "MultiPlayerGameFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "addCommands_1", jm_addCommands_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultiPlayerGameFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_addCommands_1", jm_addCommands_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MultiPlayerGameFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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


jm_addCommands_1 : JR.Method
jm_addCommands_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.declare "canvas" "" (JR.local "anyType"), 
                    JR.exec (JR.invoke "addCommand_1" (JR.local "canvas") [ (JR.field "QUIT_COMMAND" (JR.local "gameCommandsFactory")) ]) ])
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

