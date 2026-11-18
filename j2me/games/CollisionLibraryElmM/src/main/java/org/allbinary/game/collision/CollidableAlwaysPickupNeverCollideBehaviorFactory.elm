module Org.Allbinary.Game.Collision.CollidableAlwaysPickupNeverCollideBehaviorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollidableAlwaysPickupNeverCollideBehavior as CollidableAlwaysPickupNeverCollideBehavior
import Org.Allbinary.Game.Collision.CollidableBaseBehaviorFactory as CollidableBaseBehaviorFactory


jclass : String
jclass =
    "CollidableAlwaysPickupNeverCollideBehaviorFactory"


jchain : List String
jchain =
    [ "CollidableAlwaysPickupNeverCollideBehaviorFactory" ]
        ++ CollidableBaseBehaviorFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableBaseBehaviorFactory.jfields ++ [ ( "instance", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createBehavior_0", jm_createBehavior_0 ) ]
        CollidableBaseBehaviorFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableAlwaysPickupNeverCollideBehaviorFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createBehavior_0", jm_createBehavior_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "CollidableAlwaysPickupNeverCollideBehaviorFactory" jclinit "instanceC"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CollidableBaseBehaviorFactory.jinit_0 JR.this []),
            JR.exec (JR.setField "instance" "" JR.this (JR.new CollidableAlwaysPickupNeverCollideBehavior.jnew_0 [])),
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
                    JR.return jstatic_instanceC ])
        (jregister jheap)
        jthis
        jargs


jm_createBehavior_0 : JR.Method
jm_createBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "instance") ])
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

