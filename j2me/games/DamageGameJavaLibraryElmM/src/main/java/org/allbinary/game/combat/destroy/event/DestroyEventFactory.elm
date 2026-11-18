module Org.Allbinary.Game.Combat.Destroy.Event.DestroyEventFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.destroy.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterface
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEvent as DestroyedEvent


jclass : String
jclass =
    "DestroyEventFactory"


jchain : List String
jchain =
    [ "DestroyEventFactory" ]
        ++ AllBinaryEventObjectFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "combatGameCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DestroyEventFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "combatGameCanvas", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "combatGameCanvas" "" JR.this (JR.local "combatGameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new DestroyedEvent.jnew_1 [ (JR.thisField "combatGameCanvas") ]) ])
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

