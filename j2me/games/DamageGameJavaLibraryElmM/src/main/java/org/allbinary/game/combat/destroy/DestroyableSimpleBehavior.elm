module Org.Allbinary.Game.Combat.Destroy.DestroyableSimpleBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.destroy
-}

import JR
import Org.Allbinary.Game.Combat.Destroy.DestroyableBaseBehavior as DestroyableBaseBehavior
import Org.Allbinary.Game.Combat.Destroy.DestroyedLayerProcessor as DestroyedLayerProcessor


jclass : String
jclass =
    "DestroyableSimpleBehavior"


jchain : List String
jchain =
    [ "DestroyableSimpleBehavior" ]
        ++ DestroyableBaseBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    DestroyableBaseBehavior.jfields ++ [ ( "ownerLayer", JR.defaultOf "" ), ( "destroyed", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "isDestroyed_0", jm_isDestroyed_0 )
        , ( "setDestroyed_1", jm_setDestroyed_1 ) ]
        DestroyableBaseBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DestroyableSimpleBehavior"
        [ ( "jm_isDestroyed_0", jm_isDestroyed_0 ), ( "jm_setDestroyed_1", jm_setDestroyed_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect DestroyableBaseBehavior.jinit_0 JR.this []),
                JR.exec (JR.setField "destroyed" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "ownerLayer" "" JR.this (JR.local "ownerLayer")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_isDestroyed_0 : JR.Method
jm_isDestroyed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "destroyed") ])
        (jregister jheap)
        jthis
        jargs


jm_setDestroyed_1 : JR.Method
jm_setDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "destroyed" "Z" JR.this (JR.local "destroyed")), 
                    JR.ifElse (JR.invoke "isDestroyed_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.callStatic DestroyedLayerProcessor.jm_getInstance_0 []) [ (JR.thisField "ownerLayer") ]) ]) identity ])
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

