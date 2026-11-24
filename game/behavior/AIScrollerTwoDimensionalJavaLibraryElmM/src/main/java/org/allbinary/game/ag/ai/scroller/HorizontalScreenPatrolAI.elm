module Org.Allbinary.Game.Ag.Ai.Scroller.HorizontalScreenPatrolAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import JInteger
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory
import Org.Allbinary.Media.Audio.SecondaryPlayerQueueFactory as SecondaryPlayerQueueFactory
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "HorizontalScreenPatrolAI"


jchain : List String
jchain =
    [ "HorizontalScreenPatrolAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "keyDirection", JR.defaultOf "I" ), ( "displayInfoSingleton", JR.defaultOf "" ), ( "firingX", JR.defaultOf "I" ), ( "firedIndex", JR.defaultOf "I" ), ( "MAX_FIRE", JR.defaultOf "I" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "secondaryPlayerQueue", JR.defaultOf "" ), ( "sound", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "nextDirection_0", jm_nextDirection_0 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HorizontalScreenPatrolAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_nextDirection_0", jm_nextDirection_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_SOUND", jstatic_SOUND ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SOUND : JR.M
jstatic_SOUND s =
    JR.static "HorizontalScreenPatrolAI" jclinit "SOUND"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 433) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "keyDirection" "I" JR.this Canvas.jstatic_LEFT),
                JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "firingX" "I" JR.this (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfoSingleton") [])),
                JR.exec (JR.setField "firedIndex" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "MAX_FIRE" "I" JR.this (JR.int 28)),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 240) ])),
                JR.exec (JR.setField "secondaryPlayerQueue" "" JR.this (JR.callStatic SecondaryPlayerQueueFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "sound" "" JR.this (JR.invoke "get_1" (JR.local "hashtable") [ jstatic_SOUND ])), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "sound") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Sound Provided!!") ]) ]) identity ]) ])
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
                    JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ (JR.thisField "keyDirection") ]), 
                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "timeDelayHelper") []) (JR.run [ 
                        JR.declare "layerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                        JR.declare "currentOwnerLayerX" "I" (JR.invoke "getXP_0" (JR.local "layerInterface") []), 
                        JR.ifElse (JR.map2 JR.less (JR.local "currentOwnerLayerX") (JR.map JR.neg (JR.invoke "getWidth_0" (JR.local "layerInterface") []))) (JR.run [ 
                            JR.declare "y" "I" (JR.invoke "getAbsoluteNextIntAllowZero_1" (JR.callStatic MyRandomFactory.jm_getInstance_0 []) [ (JR.int 50) ]), 
                            JR.exec (JR.invoke "setPosition_3" (JR.local "layerInterface") [ (JR.map2 JR.add (JR.map2 JR.add (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") []) (JR.invoke "getWidth_0" (JR.local "layerInterface") [])) (JR.int 50)), (JR.local "y"), (JR.invoke "getZP_0" (JR.local "layerInterface") []) ]), 
                            JR.exec (JR.setField "firedIndex" "I" JR.this (JR.int 0)), 
                            JR.exec (JR.setField "firingX" "I" JR.this (JR.map2 JR.add (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfoSingleton") []) (JR.invoke "getNextInt_1" (JR.callStatic MyRandomFactory.jm_getInstance_0 []) [ (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfoSingleton") []) ]))), 
                            JR.exec (JR.invoke "add_1" (JR.thisField "secondaryPlayerQueue") [ (JR.thisField "sound") ]) ]) identity, 
                        JR.ifElse (JR.and (JR.map2 JR.less (JR.local "currentOwnerLayerX") (JR.thisField "firingX")) (JR.map2 JR.greater (JR.local "currentOwnerLayerX") (JR.map JR.neg (JR.invoke "getWidth_0" (JR.local "layerInterface") [])))) (JR.run [ 
                            JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM1 ]), 
                            JR.declare "gameLayerManager" "" (JR.local "allBinaryLayerManager"), 
                            JR.declare "FIRE" "I" (JR.map2 JR.shr ((JR.map2 JR.add (JR.invoke "getCurrentLevel_0" (JR.invoke "getGameInfo_0" (JR.local "gameLayerManager") []) []) (JR.int 12))) (JR.int 2)), 
                            JR.ifElse (JR.map2 JR.greater (JR.local "FIRE") (JR.thisField "MAX_FIRE")) (JR.run [ 
                                JR.exec (JR.setLocal "FIRE" "I" (JR.thisField "MAX_FIRE")) ]) identity, 
                            JR.ifElse (JR.map2 JR.greater (JR.thisField "firedIndex") (JR.local "FIRE")) (JR.run [ 
                                JR.exec (JR.setField "firedIndex" "I" JR.this (JR.int 0)), 
                                JR.exec (JR.setField "firingX" "I" JR.this JInteger.jstatic_MIN_VALUE) ]) identity, 
                            JR.exec (JR.postUpdate (JR.thisField "firedIndex") (\jwN71691 -> (JR.setField "firedIndex" "I" JR.this (JR.lit jwN71691))) JR.increment) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_nextDirection_0 : JR.Method
jm_nextDirection_0 jheap jthis jargs =
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

