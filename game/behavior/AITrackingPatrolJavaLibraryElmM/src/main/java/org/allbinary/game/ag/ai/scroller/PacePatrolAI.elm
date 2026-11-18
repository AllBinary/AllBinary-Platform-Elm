module Org.Allbinary.Game.Ag.Ai.Scroller.PacePatrolAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Game.Ag.Ai.Scroller.BasePatrolAI as BasePatrolAI
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Direction.DirectionFactory as DirectionFactory
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Tracking.TrackingEventHandler as TrackingEventHandler
import Org.Allbinary.Game.Tracking.TrackingEventListenerInterface as TrackingEventListenerInterface


jclass : String
jclass =
    "PacePatrolAI"


jchain : List String
jchain =
    [ "PacePatrolAI" ]
        ++ BasePatrolAI.jchain
        ++ TrackingEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasePatrolAI.jfields ++ [ ( "trackingList", JR.defaultOf "" ), ( "firingDistance", JR.defaultOf "I" ), ( "isFollowLimitedByTerrain", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "setFiringDirectionForTargetIfInRange_0", jm_setFiringDirectionForTargetIfInRange_0 )
        , ( "disable_0", jm_disable_0 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onMovement_1", jm_onMovement_1 )
        , ( "getFiringDistance_0", jm_getFiringDistance_0 )
        , ( "setFiringDistance_1", jm_setFiringDistance_1 ) ]
        BasePatrolAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PacePatrolAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_setFiringDirectionForTargetIfInRange_0", jm_setFiringDirectionForTargetIfInRange_0 ), ( "jm_disable_0", jm_disable_0 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onMovement_1", jm_onMovement_1 ), ( "jm_getFiringDistance_0", jm_getFiringDistance_0 ), ( "jm_setFiringDistance_1", jm_setFiringDistance_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasePatrolAI.jinit_3 JR.this [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "isFollowLimitedByTerrain" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic TrackingEventHandler.jm_getInstance_0 []) [ JR.this ]), 
                    JR.exec (JR.setField "trackingList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "update_0" JR.this []), 
                    JR.declare "direction" "" (JR.invoke "setFiringDirectionForTargetIfInRange_0" JR.this []), 
                    JR.declare "directionFactory" "" (JR.callStatic DirectionFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "direction") (JR.field "LEFT" (JR.local "directionFactory"))) (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.thisField "lastKeyDirection") (JR.thisField "keyDirection")) (JR.map JR.not_ (JR.thisField "isFollowLimitedByTerrain"))) (JR.run [ 
                            JR.exec (JR.callVia BasePatrolAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_LEFT ]) ]) identity, 
                        JR.exec (JR.setField "keyDirection" "" JR.this Canvas.jstatic_LEFT), 
                        JR.exec (JR.setField "lastKeyDirection" "" JR.this (JR.thisField "keyDirection")), 
                        JR.exec (JR.setField "xTotalDistance" "" JR.this (JR.int 0)), 
                        JR.exec (JR.callVia BasePatrolAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM1 ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "direction") (JR.field "RIGHT" (JR.local "directionFactory"))) (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.thisField "lastKeyDirection") (JR.thisField "keyDirection")) (JR.map JR.not_ (JR.thisField "isFollowLimitedByTerrain"))) (JR.run [ 
                            JR.exec (JR.callVia BasePatrolAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_RIGHT ]) ]) identity, 
                        JR.exec (JR.setField "keyDirection" "" JR.this Canvas.jstatic_RIGHT), 
                        JR.exec (JR.setField "lastKeyDirection" "" JR.this (JR.thisField "keyDirection")), 
                        JR.exec (JR.setField "xTotalDistance" "" JR.this (JR.int 0)), 
                        JR.exec (JR.callVia BasePatrolAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM1 ]) ]) (JR.run [ 
                        JR.exec (JR.callVia BasePatrolAI.jvtable "processKeyAI_1" JR.this [ (JR.thisField "keyDirection") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setFiringDirectionForTargetIfInRange_0 : JR.Method
jm_setFiringDirectionForTargetIfInRange_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "directionFactory" "" (JR.callStatic DirectionFactory.jm_getInstance_0 []), 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "direction" "" (JR.field "NOT_BORDERED_WITH" (JR.local "directionFactory")), 
                    JR.declare "lastTrackingEvent" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "lastTrackingLayerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "directionCompositeInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "trackingList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71162 -> (JR.setLocal "index" "I" (JR.lit jwN71162))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "lastTrackingEvent" "" (JR.invoke "get_1" (JR.thisField "trackingList") [ (JR.int 0) ])), 
                        JR.exec (JR.setLocal "lastTrackingLayerInterface" "" (JR.invoke "getLayerInterface_0" (JR.local "lastTrackingEvent") [])), 
                        JR.declare "x" "I" (JR.invoke "getXP_0" (JR.local "lastTrackingLayerInterface") []), 
                        JR.declare "y" "I" (JR.invoke "getYP_0" (JR.local "lastTrackingLayerInterface") []), 
                        JR.declare "yDistance" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []) (JR.local "y")) (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") [])), 
                        JR.declare "xDistance" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.local "x")) (JR.invoke "getWidth_0" (JR.local "ownerLayerInterface") [])), 
                        JR.declare "absXDistance" "I" (JR.math "abs" [ (JR.local "xDistance") ]), 
                        JR.declare "absYDistance" "I" (JR.math "abs" [ (JR.local "yDistance") ]), 
                        JR.ifElse (JR.map2 JR.lessEquals (JR.local "absYDistance") (JR.int 100)) (JR.run [ 
                            JR.ifElse (JR.map2 JR.less (JR.local "absXDistance") (JR.map2 JR.div (JR.invoke "getFiringDistance_0" JR.this []) (JR.int 2))) (JR.run [ 
                                JR.exec (JR.setLocal "directionCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this [])), 
                                JR.ifElse (JR.and (JR.map2 JR.less (JR.local "xDistance") (JR.int 0)) (JR.map2 JR.equals (JR.invoke "getDirection_0" (JR.local "directionCompositeInterface") []) (JR.field "RIGHT" (JR.local "directionFactory")))) (JR.run [ 
                                    JR.exec (JR.setLocal "direction" "" (JR.field "RIGHT" (JR.local "directionFactory"))) ]) (JR.run [ 
                                JR.ifElse (JR.and (JR.map2 JR.greater (JR.local "xDistance") (JR.int 0)) (JR.map2 JR.equals (JR.invoke "getDirection_0" (JR.local "directionCompositeInterface") []) (JR.field "LEFT" (JR.local "directionFactory")))) (JR.run [ 
                                    JR.exec (JR.setLocal "direction" "" (JR.field "LEFT" (JR.local "directionFactory"))) ]) identity ]) ]) identity ]) identity ]) ], 
                    JR.return (JR.local "direction") ])
        (jregister jheap)
        jthis
        jargs


jm_disable_0 : JR.Method
jm_disable_0 jheap jthis jargs =
    JR.method [] ""
        identity
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
                    JR.exec (JR.invoke "clear_0" (JR.thisField "trackingList") []), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "trackingList") [ (JR.local "trackingEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFiringDistance_0 : JR.Method
jm_getFiringDistance_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "firingDistance") ])
        (jregister jheap)
        jthis
        jargs


jm_setFiringDistance_1 : JR.Method
jm_setFiringDistance_1 jheap jthis jargs =
    JR.method [ ( "firingDistance", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "firingDistance" "I" JR.this (JR.local "firingDistance")) ])
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

