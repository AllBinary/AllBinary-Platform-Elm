module Org.Allbinary.Input.DirectionalAnalogLocationInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input
-}

import JR
import Org.Allbinary.Android.Input.Motion.AnalogLocationInputProcessor as AnalogLocationInputProcessor
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Event.GameKeyEvent as GameKeyEvent
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.GameKeyEventSourceInterface as GameKeyEventSourceInterface
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "DirectionalAnalogLocationInputProcessor"


jchain : List String
jchain =
    [ "DirectionalAnalogLocationInputProcessor" ]
        ++ AnalogLocationInputProcessor.jchain
        ++ GameKeyEventSourceInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AnalogLocationInputProcessor.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "inputProcessorArray", JR.defaultOf "" ), ( "gameKeyFactory", JR.defaultOf "" ), ( "leftGameKeyEvent", JR.defaultOf "" ), ( "rightGameKeyEvent", JR.defaultOf "" ), ( "upGameKeyEvent", JR.defaultOf "" ), ( "downGameKeyEvent", JR.defaultOf "" ), ( "leftTriggerGameKeyEvent", JR.defaultOf "" ), ( "rightTriggerGameKeyEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_2", jm_process_2 )
        , ( "getSourceId_0", jm_getSourceId_0 ) ]
        AnalogLocationInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DirectionalAnalogLocationInputProcessor"
        [ ( "jm_process_2", jm_process_2 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "inputProcessorArray", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AnalogLocationInputProcessor.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameKeyFactory" "" JR.this (JR.callStatic GameKeyFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "leftGameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                JR.exec (JR.setField "rightGameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                JR.exec (JR.setField "upGameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                JR.exec (JR.setField "downGameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                JR.exec (JR.setField "leftTriggerGameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                JR.exec (JR.setField "rightTriggerGameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "inputProcessorArray" "" JR.this (JR.local "inputProcessorArray")), 
                    JR.try (JR.run [ 
                        JR.exec (JR.setField "leftGameKeyEvent" "" JR.this (JR.invoke "getInstanceForInput_2" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) [ JR.this, (JR.field "LEFT" (JR.thisField "gameKeyFactory")) ])), 
                        JR.exec (JR.setField "rightGameKeyEvent" "" JR.this (JR.invoke "getInstanceForInput_2" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) [ JR.this, (JR.field "RIGHT" (JR.thisField "gameKeyFactory")) ])), 
                        JR.exec (JR.setField "upGameKeyEvent" "" JR.this (JR.invoke "getInstanceForInput_2" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) [ JR.this, (JR.field "UP" (JR.thisField "gameKeyFactory")) ])), 
                        JR.exec (JR.setField "downGameKeyEvent" "" JR.this (JR.invoke "getInstanceForInput_2" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) [ JR.this, (JR.field "DOWN" (JR.thisField "gameKeyFactory")) ])), 
                        JR.exec (JR.setField "leftTriggerGameKeyEvent" "" JR.this (JR.invoke "getInstanceForInput_2" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) [ JR.this, (JR.field "KEY_NUM0" (JR.thisField "gameKeyFactory")) ])), 
                        JR.exec (JR.setField "rightTriggerGameKeyEvent" "" JR.this (JR.invoke "getInstanceForInput_2" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) [ JR.this, (JR.field "KEY_NUM5" (JR.thisField "gameKeyFactory")) ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "analogLocationInput", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "customGPoint" "" (JR.lit (JR.defaultOf "")), 
                        JR.exec (JR.setLocal "customGPoint" "" (JR.invoke "getCustomGPoint_0" (JR.local "analogLocationInput") [])), 
                        JR.declare "x" "I" (JR.invoke "getX_0" (JR.local "customGPoint") []), 
                        JR.declare "y" "I" (JR.invoke "getY_0" (JR.local "customGPoint") []), 
                        JR.declare "leftTrigger" "I" (JR.invoke "getLeftTrigger_0" (JR.local "analogLocationInput") []), 
                        JR.declare "rightTrigger" "I" (JR.invoke "getRightTrigger_0" (JR.local "analogLocationInput") []), 
                        JR.ifElse (JR.map2 JR.less (JR.local "x") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "processAnalog_3" (JR.aget (JR.thisField "inputProcessorArray") (JR.invoke "getKey_0" (JR.thisField "leftGameKeyEvent") [])) [ (JR.local "allbinaryLayerManager"), (JR.thisField "leftGameKeyEvent"), (JR.local "x") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.local "x") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "processAnalog_3" (JR.aget (JR.thisField "inputProcessorArray") (JR.invoke "getKey_0" (JR.thisField "rightGameKeyEvent") [])) [ (JR.local "allbinaryLayerManager"), (JR.thisField "rightGameKeyEvent"), (JR.local "x") ]) ]) identity ]), 
                        JR.ifElse (JR.map2 JR.less (JR.local "y") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "processAnalog_3" (JR.aget (JR.thisField "inputProcessorArray") (JR.invoke "getKey_0" (JR.thisField "downGameKeyEvent") [])) [ (JR.local "allbinaryLayerManager"), (JR.thisField "downGameKeyEvent"), (JR.local "y") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.local "y") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "processAnalog_3" (JR.aget (JR.thisField "inputProcessorArray") (JR.invoke "getKey_0" (JR.thisField "upGameKeyEvent") [])) [ (JR.local "allbinaryLayerManager"), (JR.thisField "upGameKeyEvent"), (JR.local "y") ]) ]) identity ]), 
                        JR.ifElse (JR.map2 JR.greater (JR.local "leftTrigger") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "processAnalog_3" (JR.aget (JR.thisField "inputProcessorArray") (JR.invoke "getKey_0" (JR.thisField "leftTriggerGameKeyEvent") [])) [ (JR.local "allbinaryLayerManager"), (JR.thisField "leftTriggerGameKeyEvent"), (JR.local "leftTrigger") ]) ]) identity, 
                        JR.ifElse (JR.map2 JR.greater (JR.local "rightTrigger") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "processAnalog_3" (JR.aget (JR.thisField "inputProcessorArray") (JR.invoke "getKey_0" (JR.thisField "rightTriggerGameKeyEvent") [])) [ (JR.local "allbinaryLayerManager"), (JR.thisField "rightTriggerGameKeyEvent"), (JR.local "rightTrigger") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Unable to process analog input"), JR.this, (JR.field "PROCESS" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

