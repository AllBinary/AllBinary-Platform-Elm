module Org.Allbinary.Game.Combat.Canvas.CombatGameCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.AllBinaryGameCanvas as AllBinaryGameCanvas
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyEventCircularStaticPool as DestroyEventCircularStaticPool
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEventHandler as DestroyedEventHandler
import Org.Allbinary.Game.Combat.Destroy.DestroyedLayerProcessor as DestroyedLayerProcessor
import Org.Allbinary.Game.Layer.Drop.DropLayerProcessor as DropLayerProcessor
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import Org.Allbinary.Game.Layer.Identification.GroupLayerManagerListener as GroupLayerManagerListener
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory


jclass : String
jclass =
    "CombatGameCanvas"


jchain : List String
jchain =
    [ "CombatGameCanvas" ]
        ++ AllBinaryGameCanvas.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryGameCanvas.jfields ++ []


jvtable =
    JR.vtable
        [ ( "CombatGameCanvas_init_0", jm_CombatGameCanvas_init_0 )
        , ( "initApp_1", jm_initApp_1 )
        , ( "initConfigurablePortion_1", jm_initConfigurablePortion_1 )
        , ( "processPlayingGame_0", jm_processPlayingGame_0 )
        , ( "cleanupGame_0", jm_cleanupGame_0 )
        , ( "cleanupManager_0", jm_cleanupManager_0 ) ]
        AllBinaryGameCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CombatGameCanvas"
        [ ( "jm_CombatGameCanvas_init_0", jm_CombatGameCanvas_init_0 ), ( "jm_initApp_1", jm_initApp_1 ), ( "jm_initConfigurablePortion_1", jm_initConfigurablePortion_1 ), ( "jm_processPlayingGame_0", jm_processPlayingGame_0 ), ( "jm_cleanupGame_0", jm_cleanupGame_0 ), ( "jm_cleanupManager_0", jm_cleanupManager_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        [ ( "jstatic_basicLayerProcessor", jstatic_basicLayerProcessor ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_basicLayerProcessor : JR.M
jstatic_basicLayerProcessor s =
    JR.static "CombatGameCanvas" jclinit "basicLayerProcessor"
        (JR.newArray "" [ (JR.int 0) ])
        s


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ), ( "gameLayerManager", "" ), ( "highScoresFactoryInterface", "" ), ( "gameInitializationInterfaceFactoryInterface", "" ), ( "buffered", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryGameCanvas.jinit_5 JR.this [ (JR.local "cmdListener"), (JR.local "gameLayerManager"), (JR.local "highScoresFactoryInterface"), (JR.local "gameInitializationInterfaceFactoryInterface"), (JR.local "buffered") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_CombatGameCanvas_init_0 : JR.Method
jm_CombatGameCanvas_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "init_1" (JR.callStatic DestroyEventCircularStaticPool.jm_getInstance_0 []) [ JR.this ]), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []) [ (JR.int 50), (JR.str "Destroy Events") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initApp_1 : JR.Method
jm_initApp_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "CombatGameCanvas_init_0" JR.this []), 
                    JR.exec (JR.callVia AllBinaryGameCanvas.jvtable "initApp_1" JR.this [ (JR.local "abeClientInformation") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initConfigurablePortion_1 : JR.Method
jm_initConfigurablePortion_1 jheap jthis jargs =
    JR.method [ ( "portion", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic DestroyedLayerProcessor.jm_init_0 []), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []) [ (JR.local "portion"), (JR.str "Basic Processors") ]), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "gameFeatureFactory" "" (JR.callStatic GameFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "DROPPED_ITEMS" (JR.local "gameFeatureFactory")) ]) (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "DROPPED_ITEMS_FROM_DEATH" (JR.local "gameFeatureFactory")) ])) (JR.run [ 
                        JR.exec (JR.setStatic "CombatGameCanvas.basicLayerProcessor" "" (JR.newArray "" [ (JR.int 2) ])), 
                        JR.exec (JR.andThen jstatic_basicLayerProcessor (\jaN76428 -> JR.andThen (JR.int 0) (\jiN76428 -> (JR.aset (JR.lit jaN76428) (JR.lit jiN76428) (JR.callStatic DestroyedLayerProcessor.jm_getInstance_0 []))))), 
                        JR.exec (JR.andThen jstatic_basicLayerProcessor (\jaN76477 -> JR.andThen (JR.int 1) (\jiN76477 -> (JR.aset (JR.lit jaN76477) (JR.lit jiN76477) (JR.callStatic DropLayerProcessor.jm_getInstance_0 []))))) ]) (JR.run [ 
                        JR.exec (JR.setStatic "CombatGameCanvas.basicLayerProcessor" "" (JR.newArray "" [ (JR.int 1) ])), 
                        JR.exec (JR.andThen jstatic_basicLayerProcessor (\jaN76324 -> JR.andThen (JR.int 0) (\jiN76324 -> (JR.aset (JR.lit jaN76324) (JR.lit jiN76324) (JR.callStatic DestroyedLayerProcessor.jm_getInstance_0 []))))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processPlayingGame_0 : JR.Method
jm_processPlayingGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia AllBinaryGameCanvas.jvtable "processPlayingGame_0" JR.this []), 
                    JR.run [ JR.declare "index" "I" (JR.alength jstatic_basicLayerProcessor), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN76657 -> (JR.setLocal "index" "I" (JR.lit jwN76657))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.invoke "process_1" (JR.aget jstatic_basicLayerProcessor (JR.local "index")) [ (JR.thisField "gameLayerManager") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_cleanupGame_0 : JR.Method
jm_cleanupGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia AllBinaryGameCanvas.jvtable "cleanupGame_0" JR.this []), 
                    JR.run [ JR.declare "index" "I" (JR.alength jstatic_basicLayerProcessor), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN76846 -> (JR.setLocal "index" "I" (JR.lit jwN76846))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.invoke "clear_0" (JR.invoke "getList_0" (JR.aget jstatic_basicLayerProcessor (JR.local "index")) []) []) ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.callStatic GroupLayerManagerListener.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "log_0" (JR.callStatic GroupLayerManagerListener.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.callStatic DestroyedEventHandler.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "cleanupManager_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_cleanupManager_0 : JR.Method
jm_cleanupManager_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "cleanup_0" (JR.thisField "gameLayerManager") []) ])
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

