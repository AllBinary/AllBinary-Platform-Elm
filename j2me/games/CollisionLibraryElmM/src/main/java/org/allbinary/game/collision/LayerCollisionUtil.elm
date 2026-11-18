module Org.Allbinary.Game.Collision.LayerCollisionUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.Collision2DProcessor as Collision2DProcessor
import Org.Allbinary.Game.Collision.CollisionThreedProcessor as CollisionThreedProcessor
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureUtil as OpenGLFeatureUtil


jclass : String
jclass =
    "LayerCollisionUtil"


jchain : List String
jchain =
    [ "LayerCollisionUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "collisionProcessor", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isCollision_2", jm_isCollision_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerCollisionUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isCollision_2", jm_isCollision_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LayerCollisionUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "gameFeatureFactory" "" (JR.callStatic GameFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.invoke "isAnyThreed_0" (JR.callStatic OpenGLFeatureUtil.jm_getInstance_0 []) []) (JR.map JR.not_ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "COLLISIONS_FORCED_TWO_DIMENSIONAL" (JR.local "gameFeatureFactory")) ]))) (JR.run [ 
                        JR.exec (JR.setField "collisionProcessor" "" JR.this (JR.new CollisionThreedProcessor.jnew_0 [])) ]) (JR.run [ 
                        JR.exec (JR.setField "collisionProcessor" "" JR.this (JR.new Collision2DProcessor.jnew_0 [])) ]) ]) ])
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


jm_isCollision_2 : JR.Method
jm_isCollision_2 jheap jthis jargs =
    JR.method [ ( "myLayer", "" ), ( "myLayer2", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isCollision_2" (JR.thisField "collisionProcessor") [ (JR.local "myLayer"), (JR.local "myLayer2") ]) ])
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

