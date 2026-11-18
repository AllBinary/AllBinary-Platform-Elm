module Org.Allbinary.Game.Ag.Ai.DiveAndDirectionalTrackingAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEventHandler as DestroyedEventHandler
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEventListenerInterface as DestroyedEventListenerInterface
import Org.Allbinary.Direction.Direction as Direction
import Org.Allbinary.Direction.DirectionFactory as DirectionFactory
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Logic.Math.MathUtil as MathUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Game.Tracking.TrackingEventHandler as TrackingEventHandler
import Org.Allbinary.Game.Tracking.TrackingEventListenerInterface as TrackingEventListenerInterface


jclass : String
jclass =
    "DiveAndDirectionalTrackingAI"


jchain : List String
jchain =
    [ "DiveAndDirectionalTrackingAI" ]
        ++ BasicAI.jchain
        ++ TrackingEventListenerInterface.jchain
        ++ DestroyedEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "mathUtil", JR.defaultOf "" ), ( "directionFactory", JR.defaultOf "" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "directionalInterface", JR.defaultOf "" ), ( "velocityInterface", JR.defaultOf "" ), ( "directionToKeyMap", JR.defaultOf "" ), ( "initialDropped", JR.defaultOf "Z" ), ( "diveP", JR.defaultOf "Z" ), ( "directionOfTarget", JR.defaultOf "" ), ( "MIN_DISTANCE", JR.defaultOf "I" ), ( "lastTrackingLayerInterface", JR.defaultOf "" ), ( "artificialIntelligenceInterface", JR.defaultOf "" ), ( "aiVistor", JR.defaultOf "" ), ( "lastDirection", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "init_0", jm_init_0 )
        , ( "target_1", jm_target_1 )
        , ( "verticalTargeting_1", jm_verticalTargeting_1 )
        , ( "horizontalTargeting_1", jm_horizontalTargeting_1 )
        , ( "setDive_0", jm_setDive_0 )
        , ( "moveRight_0", jm_moveRight_0 )
        , ( "moveLeft_0", jm_moveLeft_0 )
        , ( "moveDown_0", jm_moveDown_0 )
        , ( "moveUp_0", jm_moveUp_0 )
        , ( "dive_0", jm_dive_0 )
        , ( "attack_0", jm_attack_0 )
        , ( "drop_0", jm_drop_0 )
        , ( "isBeyondTarget_0", jm_isBeyondTarget_0 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onMovement_1", jm_onMovement_1 )
        , ( "onDestroyed_1", jm_onDestroyed_1 )
        , ( "setLastDirection_1", jm_setLastDirection_1 )
        , ( "setLastKey_1", jm_setLastKey_1 )
        , ( "getLastDirection_0", jm_getLastDirection_0 )
        , ( "toString_0", jm_toString_0 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DiveAndDirectionalTrackingAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_init_0", jm_init_0 ), ( "jm_target_1", jm_target_1 ), ( "jm_verticalTargeting_1", jm_verticalTargeting_1 ), ( "jm_horizontalTargeting_1", jm_horizontalTargeting_1 ), ( "jm_setDive_0", jm_setDive_0 ), ( "jm_moveRight_0", jm_moveRight_0 ), ( "jm_moveLeft_0", jm_moveLeft_0 ), ( "jm_moveDown_0", jm_moveDown_0 ), ( "jm_moveUp_0", jm_moveUp_0 ), ( "jm_dive_0", jm_dive_0 ), ( "jm_attack_0", jm_attack_0 ), ( "jm_drop_0", jm_drop_0 ), ( "jm_isBeyondTarget_0", jm_isBeyondTarget_0 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onMovement_1", jm_onMovement_1 ), ( "jm_onDestroyed_1", jm_onDestroyed_1 ), ( "jm_setLastDirection_1", jm_setLastDirection_1 ), ( "jm_setLastKey_1", jm_setLastKey_1 ), ( "jm_getLastDirection_0", jm_getLastDirection_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "artificialIntelligenceInterface", "" ), ( "gameInput", "" ), ( "visitor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "mathUtil" "" JR.this (JR.callStatic MathUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "directionFactory" "" JR.this (JR.callStatic DirectionFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 500) ])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "directionToKeyMap" "" JR.this (JR.arrayOf "I" [ Canvas.jstatic_LEFT, Canvas.jstatic_DOWN, Canvas.jstatic_UP, Canvas.jstatic_RIGHT ])),
                JR.exec (JR.setField "directionOfTarget" "" JR.this (JR.callStatic Direction.jm_getInstance_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "MIN_DISTANCE" "I" JR.this (JR.int 40)),
                JR.exec (JR.setField "lastTrackingLayerInterface" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                JR.exec (JR.setField "lastDirection" "" JR.this (JR.field "NO_DIRECTION" (JR.callStatic DirectionFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "aiVistor" "" JR.this (JR.local "visitor")), 
                    JR.exec (JR.setField "artificialIntelligenceInterface" "" JR.this (JR.local "artificialIntelligenceInterface")), 
                    JR.declare "directionalCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.setField "directionalInterface" "" JR.this (JR.invoke "getDirectionalInterface_0" (JR.local "directionalCompositeInterface") [])), 
                    JR.declare "velocityInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.setField "velocityInterface" "" JR.this (JR.invoke "getVelocityProperties_0" (JR.local "velocityInterfaceCompositeInterface") [])), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic DestroyedEventHandler.jm_getInstance_0 []) [ JR.this ]), 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isBeyondTarget_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "init_0" JR.this []), 
                        JR.exec (JR.invoke "zero_0" (JR.thisField "velocityInterface") []) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "diveP")) (JR.run [ 
                        JR.exec (JR.invoke "target_1" JR.this [ (JR.local "allBinaryLayerManager") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "dive_0" JR.this []), 
                        JR.exec (JR.invoke "attack_0" JR.this []) ]), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "diveP" "Z" JR.this (JR.bool False)), 
                    JR.exec (JR.setField "directionOfTarget" "" JR.this (JR.field "NOT_BORDERED_WITH" (JR.callStatic DirectionFactory.jm_getInstance_0 []))), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic TrackingEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_target_1 : JR.Method
jm_target_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.thisField "list") []) (JR.int 0)) (JR.run [ 
                        JR.returnVoid ]) identity, 
                    JR.declare "lastTrackingEvent" "" (JR.invoke "removeAt_1" (JR.thisField "list") [ (JR.int 0) ]), 
                    JR.exec (JR.setField "lastTrackingLayerInterface" "" JR.this (JR.invoke "getLayerInterface_0" (JR.local "lastTrackingEvent") [])), 
                    JR.declare "layerInterface" "" (JR.thisField "lastTrackingLayerInterface"), 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "groupArray" "" (JR.invoke "getGroupInterface_0" (JR.local "layerInterface") []), 
                    JR.declare "ownerGroupArray" "" (JR.invoke "getGroupInterface_0" (JR.local "ownerLayerInterface") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "groupArray") (JR.local "ownerGroupArray")) (JR.run [ 
                        JR.returnVoid ]) identity, 
                    JR.declare "x" "I" (JR.invoke "getXP_0" (JR.thisField "lastTrackingLayerInterface") []), 
                    JR.declare "y" "I" (JR.invoke "getYP_0" (JR.thisField "lastTrackingLayerInterface") []), 
                    JR.declare "yDistance" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []) (JR.local "y")) (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") [])), 
                    JR.declare "xDistance" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.local "x")) (JR.invoke "getWidth_0" (JR.local "ownerLayerInterface") [])), 
                    JR.declare "directionFactory" "" (JR.callStatic DirectionFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "abs_1" (JR.thisField "mathUtil") [ (JR.local "yDistance") ]) (JR.invoke "abs_1" (JR.thisField "mathUtil") [ (JR.local "xDistance") ])) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.local "yDistance") (JR.thisField "MIN_DISTANCE")) (JR.run [ 
                            JR.exec (JR.setField "directionOfTarget" "" JR.this (JR.field "UP" (JR.local "directionFactory"))) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "yDistance") (JR.map JR.neg (JR.thisField "MIN_DISTANCE"))) (JR.run [ 
                            JR.exec (JR.setField "directionOfTarget" "" JR.this (JR.field "DOWN" (JR.local "directionFactory"))) ]) identity ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.local "xDistance") (JR.thisField "MIN_DISTANCE")) (JR.run [ 
                            JR.exec (JR.setField "directionOfTarget" "" JR.this (JR.field "LEFT" (JR.local "directionFactory"))) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "xDistance") (JR.map JR.neg (JR.thisField "MIN_DISTANCE"))) (JR.run [ 
                            JR.exec (JR.setField "directionOfTarget" "" JR.this (JR.field "RIGHT" (JR.local "directionFactory"))) ]) identity ]) ]), 
                    JR.ifElse (JR.and (JR.map JR.not_ (JR.thisField "initialDropped")) (JR.map2 JR.notEquals (JR.thisField "directionOfTarget") (JR.field "NOT_BORDERED_WITH" (JR.local "directionFactory")))) (JR.run [ 
                        JR.exec (JR.invoke "drop_0" JR.this []) ]) identity, 
                    JR.ifElse (JR.thisField "initialDropped") (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "UP" (JR.local "directionFactory"))) (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "DOWN" (JR.local "directionFactory")))) (JR.run [ 
                            JR.exec (JR.invoke "verticalTargeting_1" JR.this [ (JR.local "x") ]) ]) (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "LEFT" (JR.local "directionFactory"))) (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "RIGHT" (JR.local "directionFactory")))) (JR.run [ 
                            JR.exec (JR.invoke "horizontalTargeting_1" JR.this [ (JR.local "y") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "processAI_1" (JR.thisField "artificialIntelligenceInterface") [ (JR.local "allBinaryLayerManager") ]) ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_verticalTargeting_1 : JR.Method
jm_verticalTargeting_1 jheap jthis jargs =
    JR.method [ ( "x", "I" ) ] ""
        (JR.run [ 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.local "x")) (JR.run [ 
                        JR.exec (JR.invoke "moveRight_0" JR.this []) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.local "x")) (JR.run [ 
                        JR.exec (JR.invoke "moveLeft_0" JR.this []) ]) identity, 
                    JR.ifElse (JR.and (JR.map2 JR.greater (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.map2 JR.sub (JR.local "x") (JR.int 3))) (JR.map2 JR.less (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.map2 JR.add (JR.local "x") (JR.int 3)))) (JR.run [ 
                        JR.exec (JR.invoke "setDive_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_horizontalTargeting_1 : JR.Method
jm_horizontalTargeting_1 jheap jthis jargs =
    JR.method [ ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []) (JR.local "y")) (JR.run [ 
                        JR.exec (JR.invoke "moveDown_0" JR.this []) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []) (JR.local "y")) (JR.run [ 
                        JR.exec (JR.invoke "moveUp_0" JR.this []) ]) identity, 
                    JR.ifElse (JR.and (JR.map2 JR.greater (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []) (JR.map2 JR.sub (JR.local "y") (JR.int 3))) (JR.map2 JR.less (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []) (JR.map2 JR.add (JR.local "y") (JR.int 3)))) (JR.run [ 
                        JR.exec (JR.invoke "setDive_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setDive_0 : JR.Method
jm_setDive_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "diveP" "Z" JR.this (JR.bool True)), 
                    JR.exec (JR.invoke "zero_0" (JR.thisField "velocityInterface") []), 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic TrackingEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_moveRight_0 : JR.Method
jm_moveRight_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLastDirection_1" JR.this [ (JR.field "RIGHT" (JR.thisField "directionFactory")) ]), 
                    JR.exec (JR.invoke "setFrameByDirection_1" (JR.thisField "directionalInterface") [ (JR.thisField "lastDirection") ]), 
                    JR.exec (JR.invoke "visit_1" (JR.thisField "aiVistor") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_moveLeft_0 : JR.Method
jm_moveLeft_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLastDirection_1" JR.this [ (JR.field "LEFT" (JR.thisField "directionFactory")) ]), 
                    JR.exec (JR.invoke "setFrameByDirection_1" (JR.thisField "directionalInterface") [ (JR.thisField "lastDirection") ]), 
                    JR.exec (JR.invoke "visit_1" (JR.thisField "aiVistor") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_moveDown_0 : JR.Method
jm_moveDown_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLastDirection_1" JR.this [ (JR.field "DOWN" (JR.thisField "directionFactory")) ]), 
                    JR.exec (JR.invoke "setFrameByDirection_1" (JR.thisField "directionalInterface") [ (JR.thisField "lastDirection") ]), 
                    JR.exec (JR.invoke "visit_1" (JR.thisField "aiVistor") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_moveUp_0 : JR.Method
jm_moveUp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLastDirection_1" JR.this [ (JR.field "UP" (JR.thisField "directionFactory")) ]), 
                    JR.exec (JR.invoke "setFrameByDirection_1" (JR.thisField "directionalInterface") [ (JR.thisField "lastDirection") ]), 
                    JR.exec (JR.invoke "visit_1" (JR.thisField "aiVistor") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_dive_0 : JR.Method
jm_dive_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrameByDirection_1" (JR.thisField "directionalInterface") [ (JR.thisField "directionOfTarget") ]), 
                    JR.exec (JR.invoke "visit_1" (JR.thisField "aiVistor") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_attack_0 : JR.Method
jm_attack_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM1 ]) ])
        (jregister jheap)
        jthis
        jargs


jm_drop_0 : JR.Method
jm_drop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]) (JR.run [ 
                        JR.exec (JR.setField "initialDropped" "Z" JR.this (JR.bool True)), 
                        JR.exec (JR.invoke "visit_1" (JR.thisField "aiVistor") [ JR.this ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isBeyondTarget_0 : JR.Method
jm_isBeyondTarget_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "DOWN" (JR.thisField "directionFactory"))) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getYP_0" (JR.invoke "getOwnerLayerInterface_0" JR.this []) []) (JR.map2 JR.add (JR.invoke "getYP_0" (JR.thisField "lastTrackingLayerInterface") []) (JR.thisField "MIN_DISTANCE"))) (JR.run [ 
                            JR.return (JR.bool True) ]) (JR.run [ 
                            JR.return (JR.bool False) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "UP" (JR.thisField "directionFactory"))) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.invoke "getYP_0" (JR.invoke "getOwnerLayerInterface_0" JR.this []) []) (JR.map2 JR.add (JR.invoke "getYP_0" (JR.thisField "lastTrackingLayerInterface") []) (JR.thisField "MIN_DISTANCE"))) (JR.run [ 
                            JR.return (JR.bool True) ]) (JR.run [ 
                            JR.return (JR.bool False) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "RIGHT" (JR.thisField "directionFactory"))) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getXP_0" (JR.invoke "getOwnerLayerInterface_0" JR.this []) []) (JR.map2 JR.add (JR.invoke "getXP_0" (JR.thisField "lastTrackingLayerInterface") []) (JR.thisField "MIN_DISTANCE"))) (JR.run [ 
                            JR.return (JR.bool True) ]) (JR.run [ 
                            JR.return (JR.bool False) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "directionOfTarget") (JR.field "LEFT" (JR.thisField "directionFactory"))) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.invoke "getXP_0" (JR.invoke "getOwnerLayerInterface_0" JR.this []) []) (JR.map2 JR.add (JR.invoke "getXP_0" (JR.thisField "lastTrackingLayerInterface") []) (JR.thisField "MIN_DISTANCE"))) (JR.run [ 
                            JR.return (JR.bool True) ]) (JR.run [ 
                            JR.return (JR.bool False) ]) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onMovement_1 : JR.Method
jm_onMovement_1 jheap jthis jargs =
    JR.method [ ( "trackingEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "trackingEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDestroyed_1 : JR.Method
jm_onDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyedEvent", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getOwnerLayerInterface_0" JR.this []) (JR.invoke "getLayerInterface_0" (JR.local "destroyedEvent") [])) (JR.run [ 
                        JR.exec (JR.invoke "removeListener_1" (JR.callStatic TrackingEventHandler.jm_getInstance_0 []) [ JR.this ]), 
                        JR.exec (JR.invoke "removeListener_1" (JR.callStatic DestroyedEventHandler.jm_getInstance_0 []) [ JR.this ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setLastDirection_1 : JR.Method
jm_setLastDirection_1 jheap jthis jargs =
    JR.method [ ( "lastDirection", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "lastDirection" "" JR.this (JR.local "lastDirection")), 
                    JR.declare "value" "I" (JR.invoke "getValue_0" (JR.invoke "getLastDirection_0" JR.this []) []), 
                    JR.ifElse (JR.map2 JR.less (JR.local "value") (JR.int 4)) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "setLastKey_1" JR.this [ (JR.aget (JR.thisField "directionToKeyMap") (JR.local "value")) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setLastKey_1 : JR.Method
jm_setLastKey_1 jheap jthis jargs =
    JR.method [ ( "lastKey", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicAI.jvtable "setLastKey_1" JR.this [ (JR.local "lastKey") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getLastKey_0" JR.this []) Canvas.jstatic_LEFT) (JR.run [ 
                        JR.exec (JR.setField "lastDirection" "" JR.this (JR.field "LEFT" (JR.callStatic DirectionFactory.jm_getInstance_0 []))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getLastKey_0" JR.this []) Canvas.jstatic_DOWN) (JR.run [ 
                        JR.exec (JR.setField "lastDirection" "" JR.this (JR.field "DOWN" (JR.callStatic DirectionFactory.jm_getInstance_0 []))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getLastKey_0" JR.this []) Canvas.jstatic_UP) (JR.run [ 
                        JR.exec (JR.setField "lastDirection" "" JR.this (JR.field "UP" (JR.callStatic DirectionFactory.jm_getInstance_0 []))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getLastKey_0" JR.this []) Canvas.jstatic_RIGHT) (JR.run [ 
                        JR.exec (JR.setField "lastDirection" "" JR.this (JR.field "RIGHT" (JR.callStatic DirectionFactory.jm_getInstance_0 []))) ]) identity ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLastDirection_0 : JR.Method
jm_getLastDirection_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "lastDirection") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callVia BasicAI.jvtable "toString_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " LastDirection: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getLastDirection_0" JR.this []) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

