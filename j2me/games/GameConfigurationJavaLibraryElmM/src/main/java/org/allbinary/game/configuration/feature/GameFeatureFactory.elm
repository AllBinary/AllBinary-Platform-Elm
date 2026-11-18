module Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.Feature as Feature
import Org.Allbinary.Game.Configuration.Feature.GameFeature as GameFeature


jclass : String
jclass =
    "GameFeatureFactory"


jchain : List String
jchain =
    [ "GameFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SOUND", JR.defaultOf "" ), ( "MUSIC", JR.defaultOf "" ), ( "SCREEN_SHAKE", JR.defaultOf "" ), ( "POST_IMAGE_LOADING_MODIFICATION", JR.defaultOf "" ), ( "HEALTH_BARS", JR.defaultOf "" ), ( "DAMAGE_FLOATERS", JR.defaultOf "" ), ( "GAME_INPUT_LAYER_PROCESSOR", JR.defaultOf "" ), ( "ARTIFICIAL_INTELLEGENCE_PROCESSOR", JR.defaultOf "" ), ( "COLLIDABLE_INTERFACE_LAYER_PROCESSOR", JR.defaultOf "" ), ( "TICKABLE_LAYER_PROCESSOR", JR.defaultOf "" ), ( "CHEATING", JR.defaultOf "" ), ( "DROPPED_ITEMS", JR.defaultOf "" ), ( "DROPPED_ITEMS_FROM_DEATH", JR.defaultOf "" ), ( "TEST_DESTROYED_LAYER_PROCESSOR", JR.defaultOf "" ), ( "COLLISIONS_WITH_SOURCE", JR.defaultOf "" ), ( "COLLISIONS_FORCED_TWO_DIMENSIONAL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SOUND" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Sound") ])),
                JR.exec (JR.setField "MUSIC" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Music") ])),
                JR.exec (JR.setField "SCREEN_SHAKE" "" JR.this (JR.new Feature.jnew_1 [ (JR.str "Screen Shake") ])),
                JR.exec (JR.setField "POST_IMAGE_LOADING_MODIFICATION" "" JR.this (JR.new Feature.jnew_1 [ (JR.str "Post Image Loading Modification (Scaling, Rotation, or Other)") ])),
                JR.exec (JR.setField "HEALTH_BARS" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Health Bars") ])),
                JR.exec (JR.setField "DAMAGE_FLOATERS" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Damage Floaters") ])),
                JR.exec (JR.setField "GAME_INPUT_LAYER_PROCESSOR" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Game Input Layer Processor") ])),
                JR.exec (JR.setField "ARTIFICIAL_INTELLEGENCE_PROCESSOR" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Artificial Intelligence Layer Processor") ])),
                JR.exec (JR.setField "COLLIDABLE_INTERFACE_LAYER_PROCESSOR" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Collidable Interface Layer Processor") ])),
                JR.exec (JR.setField "TICKABLE_LAYER_PROCESSOR" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Tickable Layer Processor") ])),
                JR.exec (JR.setField "CHEATING" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Cheating") ])),
                JR.exec (JR.setField "DROPPED_ITEMS" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Drops") ])),
                JR.exec (JR.setField "DROPPED_ITEMS_FROM_DEATH" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Drops from Dead") ])),
                JR.exec (JR.setField "TEST_DESTROYED_LAYER_PROCESSOR" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Destroyed Layer Processor") ])),
                JR.exec (JR.setField "COLLISIONS_WITH_SOURCE" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Allow Collisions With Source") ])),
                JR.exec (JR.setField "COLLISIONS_FORCED_TWO_DIMENSIONAL" "" JR.this (JR.new GameFeature.jnew_1 [ (JR.str "Collisions Forced Two Dimensional") ])),
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

