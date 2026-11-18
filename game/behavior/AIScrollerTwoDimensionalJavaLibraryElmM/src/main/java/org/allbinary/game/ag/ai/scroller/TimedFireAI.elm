module Org.Allbinary.Game.Ag.Ai.Scroller.TimedFireAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "TimedFireAI"


jchain : List String
jchain =
    [ "TimedFireAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "maxFireDelayTimeHelper", JR.defaultOf "" ), ( "delay", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TimedFireAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_TIME", jstatic_TIME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_TIME : JR.M
jstatic_TIME s =
    JR.static "TimedFireAI" jclinit "TIME"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 1) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "delay", "I" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "maxFireDelayTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "delay" "I" JR.this (JR.local "delay")) ]) ])
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
                    JR.declare "timeFiredInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.ifElse (JR.and (JR.invoke "isTime_1" (JR.thisField "maxFireDelayTimeHelper") [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.map2 JR.less (JR.plus (JR.invoke "getLastFireTime_0" (JR.local "timeFiredInterface") []) (JR.field "delay" (JR.thisField "maxFireDelayTimeHelper"))) (JR.invoke "getStartTime_0" (JR.thisField "maxFireDelayTimeHelper") []))) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM1 ]), 
                        JR.exec (JR.andThen (JR.thisField "maxFireDelayTimeHelper") (\jtN68986 -> (JR.setField "delay" "" (JR.lit jtN68986) (JR.thisField "delay")))) ]) identity ])
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

