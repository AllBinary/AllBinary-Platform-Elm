module Org.Allbinary.Game.Multiplayer.Layer.MultiPlayerGameLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.multiplayer.layer
-}

import JR
import Org.Allbinary.Game.Layer.Special.CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayer
import Org.Allbinary.Game.Multiplayer.Layer.MultiPlayerGameLayerInterface as MultiPlayerGameLayerInterface
import Org.Allbinary.Game.Multiplayer.Layer.MultiplayerBehavior as MultiplayerBehavior


jclass : String
jclass =
    "MultiPlayerGameLayer"


jchain : List String
jchain =
    [ "MultiPlayerGameLayer" ]
        ++ CollidableDestroyableDamageableLayer.jchain
        ++ MultiPlayerGameLayerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableDestroyableDamageableLayer.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getMultiplayerBehavior_0", jm_getMultiplayerBehavior_0 )
        , ( "setPingInfo_1", jm_setPingInfo_1 )
        , ( "setFiring_1", jm_setFiring_1 )
        , ( "getFiring_0", jm_getFiring_0 ) ]
        CollidableDestroyableDamageableLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultiPlayerGameLayer"
        [ ( "jm_getMultiplayerBehavior_0", jm_getMultiplayerBehavior_0 ), ( "jm_setPingInfo_1", jm_setPingInfo_1 ), ( "jm_setFiring_1", jm_setFiring_1 ), ( "jm_getFiring_0", jm_getFiring_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "remoteInfo", "" ), ( "groupInterface", "" ), ( "name", "" ), ( "layerInfo", "" ), ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CollidableDestroyableDamageableLayer.jinit_4 JR.this [ (JR.local "groupInterface"), (JR.local "name"), (JR.local "layerInfo"), (JR.local "viewPosition") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getMultiplayerBehavior_0 : JR.Method
jm_getMultiplayerBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR ])
        (jregister jheap)
        jthis
        jargs


jm_setPingInfo_1 : JR.Method
jm_setPingInfo_1 jheap jthis jargs =
    JR.method [ ( "show", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setFiring_1 : JR.Method
jm_setFiring_1 jheap jthis jargs =
    JR.method [ ( "firing", "S" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getFiring_0 : JR.Method
jm_getFiring_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

