module Org.Allbinary.Game.Init.BaseGameInitialization exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.init
-}

import JR
import Org.Allbinary.Input.Motion.Button.BasicTouchInputFactory as BasicTouchInputFactory
import Org.Allbinary.Input.Motion.Button.CancelTouchButtonInputFactory as CancelTouchButtonInputFactory
import Org.Allbinary.Game.Configuration.Event.ChangedGameFeatureListener as ChangedGameFeatureListener
import Org.Allbinary.Input.Motion.CompleteMotionGestureInputToGameMotionGestureInput as CompleteMotionGestureInputToGameMotionGestureInput
import Org.Allbinary.Animation.FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Game.Resource.FeaturedResourceRelativeRelationshipFactory as FeaturedResourceRelativeRelationshipFactory
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Image.GameFeatureImageCacheFactory as GameFeatureImageCacheFactory
import Org.Allbinary.Game.Init.GameInitializationInterface as GameInitializationInterface
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory


jclass : String
jclass =
    "BaseGameInitialization"


jchain : List String
jchain =
    [ "BaseGameInitialization" ]
        ++ GameInitializationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "resourceInitializationArray", JR.defaultOf "" ), ( "portion", JR.defaultOf "I" ), ( "initialized", JR.defaultOf "Z" ), ( "EARLY_RESOURCES", JR.defaultOf "I" ), ( "GAME_RESOURCES", JR.defaultOf "I" ), ( "EARLY_CHANGABLE_RESOURCES", JR.defaultOf "I" ), ( "GAME_CHANGABLE_RESOURCES", JR.defaultOf "I" ), ( "gameInitialized", JR.defaultOf "Z" ), ( "allLoaded", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "initKey_1", jm_initKey_1 )
        , ( "initKeyMapping_2", jm_initKeyMapping_2 )
        , ( "init_3", jm_init_3 )
        , ( "resourceInitialization_1", jm_resourceInitialization_1 )
        , ( "resourceAnimationChange_0", jm_resourceAnimationChange_0 )
        , ( "clearResources_0", jm_clearResources_0 )
        , ( "setGameInitialized_1", jm_setGameInitialized_1 )
        , ( "isGameInitialized_0", jm_isGameInitialized_0 )
        , ( "getPortion_0", jm_getPortion_0 )
        , ( "setInitialized_1", jm_setInitialized_1 )
        , ( "isInitialized_0", jm_isInitialized_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseGameInitialization"
        [ ( "jm_initKey_1", jm_initKey_1 ), ( "jm_initKeyMapping_2", jm_initKeyMapping_2 ), ( "jm_init_3", jm_init_3 ), ( "jm_resourceInitialization_1", jm_resourceInitialization_1 ), ( "jm_resourceAnimationChange_0", jm_resourceAnimationChange_0 ), ( "jm_clearResources_0", jm_clearResources_0 ), ( "jm_setGameInitialized_1", jm_setGameInitialized_1 ), ( "jm_isGameInitialized_0", jm_isGameInitialized_0 ), ( "jm_getPortion_0", jm_getPortion_0 ), ( "jm_setInitialized_1", jm_setInitialized_1 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_BASE_GAME_INITIALIZATION", jstatic_NULL_BASE_GAME_INITIALIZATION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_BASE_GAME_INITIALIZATION : JR.M
jstatic_NULL_BASE_GAME_INITIALIZATION s =
    JR.static "BaseGameInitialization" jclinit "NULL_BASE_GAME_INITIALIZATION"
        (JR.new jnew_2 [ (JR.newArray "" [ (JR.int 0) ]), (JR.int 0) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "resourceInitializationArray", "" ), ( "portion", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "EARLY_RESOURCES" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "GAME_RESOURCES" "I" JR.this (JR.int 1)),
                JR.exec (JR.setField "EARLY_CHANGABLE_RESOURCES" "I" JR.this (JR.int 2)),
                JR.exec (JR.setField "GAME_CHANGABLE_RESOURCES" "I" JR.this (JR.int 3)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "resourceInitializationArray" "" JR.this (JR.local "resourceInitializationArray")), 
                    JR.exec (JR.setField "portion" "I" JR.this (JR.local "portion")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_initKey_1 : JR.Method
jm_initKey_1 jheap jthis jargs =
    JR.method [ ( "portion", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_initKeyMapping_2 : JR.Method
jm_initKeyMapping_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "portion", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isChangedFeature_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ (JR.field "INPUT_MAPPING" (JR.callStatic InputFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "init_1" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []) [ (JR.local "abeClientInformation") ]), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []) [ (JR.int 50), (JR.str "Game Keys") ]), 
                        JR.exec (JR.invoke "remove_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ (JR.field "INPUT_MAPPING" (JR.callStatic InputFeatureFactory.jm_getInstance_0 [])) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_init_3 : JR.Method
jm_init_3 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "commandListener", "" ), ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.map JR.not_ (JR.invoke "isInitialized_0" JR.this [])) ((JR.or (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_ALL" (JR.local "resourceLoadingLevelFactory")) [])) (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_EARLY" (JR.local "resourceLoadingLevelFactory")) []))))) (JR.run [ 
                        JR.declare "localPortion" "I" (JR.int 40), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_EARLY" (JR.local "resourceLoadingLevelFactory")) [])) (JR.run [ 
                            JR.exec (JR.setLocal "localPortion" "I" (JR.int 8)) ]) identity, 
                        JR.exec (JR.invoke "setInitialized_1" JR.this [ (JR.bool True) ]), 
                        JR.exec (JR.invoke "initKey_1" JR.this [ (JR.invoke "getPortion_0" JR.this []) ]), 
                        JR.exec (JR.invoke "initKeyMapping_2" JR.this [ (JR.local "abeClientInformation"), (JR.invoke "getPortion_0" JR.this []) ]), 
                        JR.exec (JR.invoke "init_0" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) []), 
                        JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "localPortion"), (JR.str "Game Key Events") ]), 
                        JR.exec (JR.invoke "init_1" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 []) [ (JR.invoke "getInputMapping_0" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []) []) ]), 
                        JR.exec (JR.callStatic CancelTouchButtonInputFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "localPortion"), (JR.str "Touch Input") ]), 
                        JR.exec (JR.invoke "init_0" (JR.callStatic CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0 []) []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "localPortion"), (JR.str "Motion Input") ]), 
                        JR.exec (JR.callStatic GameFeatureImageCacheFactory.jm_init_0 []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "localPortion"), (JR.str "Image Cache") ]), 
                        JR.exec (JR.invoke "init_0" (JR.aget (JR.thisField "resourceInitializationArray") (JR.thisField "EARLY_RESOURCES")) []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_resourceInitialization_1 : JR.Method
jm_resourceInitialization_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.invoke "resourceAnimationChange_0" JR.this []) (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_EARLY" (JR.local "resourceLoadingLevelFactory")) []))) (JR.run [ 
                        JR.exec (JR.invoke "clearResources_0" JR.this []), 
                        JR.exec (JR.invoke "init_0" (JR.aget (JR.thisField "resourceInitializationArray") (JR.thisField "EARLY_CHANGABLE_RESOURCES")) []) ]) identity, 
                    JR.ifElse (JR.and (JR.invoke "resourceAnimationChange_0" JR.this []) (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_ALL" (JR.local "resourceLoadingLevelFactory")) []))) (JR.run [ 
                        JR.ifElse (JR.thisField "allLoaded") (JR.run [ 
                            JR.exec (JR.invoke "clearResources_0" JR.this []) ]) identity, 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.invoke "getList_0" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) []) []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "init_0" (JR.aget (JR.thisField "resourceInitializationArray") (JR.thisField "EARLY_CHANGABLE_RESOURCES")) []) ]) identity, 
                        JR.exec (JR.invoke "init_0" (JR.aget (JR.thisField "resourceInitializationArray") (JR.thisField "GAME_CHANGABLE_RESOURCES")) []), 
                        JR.exec (JR.setField "allLoaded" "Z" JR.this (JR.bool True)) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_resourceAnimationChange_0 : JR.Method
jm_resourceAnimationChange_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "changedGameFeatureListener" "" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []), 
                    JR.declare "gameConfigurationCentral" "" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isChangedGameConfiguration_1" (JR.local "changedGameFeatureListener") [ (JR.field "SCALE" (JR.local "gameConfigurationCentral")) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.ifElse (JR.invoke "isChangedFeature_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ (JR.field "STATIC" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_clearResources_0 : JR.Method
jm_clearResources_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "allLoaded" "Z" JR.this (JR.bool False)), 
                    JR.exec (JR.callStatic GameFeatureImageCacheFactory.jm_releaseAll_0 []), 
                    JR.declare "featuredAnimationInterfaceFactoryInterfaceFactory" "" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "clear_0" (JR.local "featuredAnimationInterfaceFactoryInterfaceFactory") []), 
                    JR.exec (JR.invoke "clear_0" (JR.callStatic FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setGameInitialized_1 : JR.Method
jm_setGameInitialized_1 jheap jthis jargs =
    JR.method [ ( "gameInitialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameInitialized" "Z" JR.this (JR.local "gameInitialized")) ])
        (jregister jheap)
        jthis
        jargs


jm_isGameInitialized_0 : JR.Method
jm_isGameInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "gameInitialized") ])
        (jregister jheap)
        jthis
        jargs


jm_getPortion_0 : JR.Method
jm_getPortion_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "portion") ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialized_1 : JR.Method
jm_setInitialized_1 jheap jthis jargs =
    JR.method [ ( "initialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initialized" "Z" JR.this (JR.local "initialized")) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "initialized") ])
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

