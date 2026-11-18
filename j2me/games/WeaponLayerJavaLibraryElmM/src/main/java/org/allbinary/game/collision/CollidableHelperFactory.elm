module Org.Allbinary.Game.Collision.CollidableHelperFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Game.Collision.CollisionHelper as CollisionHelper
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import Org.Allbinary.Game.Collision.SourceCollisionHelper as SourceCollisionHelper


jclass : String
jclass =
    "CollidableHelperFactory"


jchain : List String
jchain =
    [ "CollidableHelperFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableHelperFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "COLLISIONS_WITH_SOURCE" (JR.callStatic GameFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.return (JR.new CollisionHelper.jnew_1 [ AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER ]) ]) (JR.run [ 
                        JR.return (JR.new SourceCollisionHelper.jnew_1 [ AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER ]) ]) ])
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

