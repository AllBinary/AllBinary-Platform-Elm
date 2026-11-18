module Org.Allbinary.Game.Ag.Ai.Scroller.BasePatrolAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Logic.Math.MathUtil as MathUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "BasePatrolAI"


jchain : List String
jchain =
    [ "BasePatrolAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "maxDistance", JR.defaultOf "" ), ( "currentDistance", JR.defaultOf "I" ), ( "xTotalDistance", JR.defaultOf "I" ), ( "lastKeyDirection", JR.defaultOf "I" ), ( "keyDirection", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "update_0", jm_update_0 )
        , ( "updateTotalDistance_0", jm_updateTotalDistance_0 )
        , ( "changeDirectionIfReachedPacingAreaMax_0", jm_changeDirectionIfReachedPacingAreaMax_0 )
        , ( "nextDirection_0", jm_nextDirection_0 )
        , ( "disable_0", jm_disable_0 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasePatrolAI"
        [ ( "jm_update_0", jm_update_0 ), ( "jm_updateTotalDistance_0", jm_updateTotalDistance_0 ), ( "jm_changeDirectionIfReachedPacingAreaMax_0", jm_changeDirectionIfReachedPacingAreaMax_0 ), ( "jm_nextDirection_0", jm_nextDirection_0 ), ( "jm_disable_0", jm_disable_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_MAX_DISTANCE", jstatic_MAX_DISTANCE ), ( "jstatic_DIRECTION_ARRAY", jstatic_DIRECTION_ARRAY ), ( "jstatic_FIRING_DISTANCE", jstatic_FIRING_DISTANCE ), ( "jstatic_SPEED", jstatic_SPEED ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAX_DISTANCE : JR.M
jstatic_MAX_DISTANCE s =
    JR.static "BasePatrolAI" jclinit "MAX_DISTANCE"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 2) ])
        s


jstatic_DIRECTION_ARRAY : JR.M
jstatic_DIRECTION_ARRAY s =
    JR.static "BasePatrolAI" jclinit "DIRECTION_ARRAY"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 3) ])
        s


jstatic_FIRING_DISTANCE : JR.M
jstatic_FIRING_DISTANCE s =
    JR.static "BasePatrolAI" jclinit "FIRING_DISTANCE"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 4) ])
        s


jstatic_SPEED : JR.M
jstatic_SPEED s =
    JR.static "BasePatrolAI" jclinit "SPEED"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 5) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "lastKeyDirection" "I" JR.this Canvas.jstatic_RIGHT),
                JR.exec (JR.setField "keyDirection" "I" JR.this Canvas.jstatic_RIGHT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "maxDistance" "" JR.this (JR.invoke "get_1" (JR.local "hashtable") [ jstatic_MAX_DISTANCE ])), 
                    JR.exec (JR.setField "currentDistance" "I" JR.this (JR.invoke "intValue_0" (JR.thisField "maxDistance") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateTotalDistance_0" JR.this []), 
                    JR.exec (JR.invoke "changeDirectionIfReachedPacingAreaMax_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateTotalDistance_0 : JR.Method
jm_updateTotalDistance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "velocityInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "velocityProperties" "" (JR.invoke "getVelocityProperties_0" (JR.local "velocityInterfaceCompositeInterface") []), 
                    JR.exec (JR.setField "xTotalDistance" "I" JR.this (JR.map2 JR.add (JR.thisField "xTotalDistance") (JR.invoke "getScaled_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.local "velocityProperties") []) []))) ])
        (jregister jheap)
        jthis
        jargs


jm_changeDirectionIfReachedPacingAreaMax_0 : JR.Method
jm_changeDirectionIfReachedPacingAreaMax_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "mathUtil" "" (JR.callStatic MathUtil.jm_getInstance_0 []), 
                    JR.declare "totalDistance" "I" (JR.invoke "abs_1" (JR.local "mathUtil") [ (JR.thisField "xTotalDistance") ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "totalDistance") (JR.thisField "currentDistance")) (JR.run [ 
                        JR.exec (JR.invoke "nextDirection_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_nextDirection_0 : JR.Method
jm_nextDirection_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "lastKeyDirection") Canvas.jstatic_LEFT) (JR.run [ 
                        JR.exec (JR.setField "keyDirection" "I" JR.this Canvas.jstatic_RIGHT), 
                        JR.exec (JR.setField "lastKeyDirection" "I" JR.this (JR.thisField "keyDirection")), 
                        JR.exec (JR.setField "xTotalDistance" "I" JR.this (JR.int 0)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "lastKeyDirection") Canvas.jstatic_RIGHT) (JR.run [ 
                        JR.exec (JR.setField "keyDirection" "I" JR.this Canvas.jstatic_LEFT), 
                        JR.exec (JR.setField "lastKeyDirection" "I" JR.this (JR.thisField "keyDirection")), 
                        JR.exec (JR.setField "xTotalDistance" "I" JR.this (JR.int 0)) ]) identity ]) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

