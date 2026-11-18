module Org.Allbinary.Game.Ag.Ai.KeyPressesAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterface
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.Game.Ag.Ai.KeyPressesAI as KeyPressesAI
import Org.Allbinary.Game.Ag.Ai.MultiKeyPressesAI as MultiKeyPressesAI


jclass : String
jclass =
    "KeyPressesAIFactory"


jchain : List String
jchain =
    [ "KeyPressesAIFactory" ]
        ++ ArtificialIntelligenceInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeyPressesAIFactory"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "isSingleKeyProcessing" "Z" (JR.invoke "isSingleKeyProcessing_0" (JR.callStatic InputFeatureFactory.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.local "isSingleKeyProcessing") (JR.run [ 
                        JR.return (JR.new KeyPressesAI.jnew_3 [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]) ]) (JR.run [ 
                        JR.return (JR.new MultiKeyPressesAI.jnew_3 [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]) ]) ])
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

