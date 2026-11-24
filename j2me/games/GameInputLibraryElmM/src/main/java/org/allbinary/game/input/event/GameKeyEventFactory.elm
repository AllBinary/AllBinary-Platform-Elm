module Org.Allbinary.Game.Input.Event.GameKeyEventFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR
import Org.Allbinary.Game.Input.Event.GameKeyEvent as GameKeyEvent
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "GameKeyEventFactory"


jchain : List String
jchain =
    [ "GameKeyEventFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "TOUCH_BUTTON_SOURCE_ID", JR.defaultOf "I" ), ( "MOTION_GESTURE_SOURCE_ID", JR.defaultOf "I" ), ( "MAX_SOURCES", JR.defaultOf "I" ), ( "ARRAY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 )
        , ( "getInstanceForKey_2", jm_getInstanceForKey_2 )
        , ( "getInstanceForInput_2", jm_getInstanceForInput_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyEventFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_getInstanceForKey_2", jm_getInstanceForKey_2 ), ( "jm_getInstanceForInput_2", jm_getInstanceForInput_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameKeyEventFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "TOUCH_BUTTON_SOURCE_ID" "I" JR.this (JR.int 2)),
                JR.exec (JR.setField "MOTION_GESTURE_SOURCE_ID" "I" JR.this (JR.int 3)),
                JR.exec (JR.setField "MAX_SOURCES" "I" JR.this (JR.int 4)),
                JR.exec (JR.setField "ARRAY" "" JR.this (JR.newArray "" [ (JR.thisField "MAX_SOURCES"), (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])) ])),
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "GameKeyEventFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "nullUtil" "" (JR.callStatic NullUtil.jm_getInstance_0 []), 
                    JR.declare "size" "I" (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])), 
                    JR.run [ JR.declare "index" "I" (JR.thisField "MAX_SOURCES"), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67392 -> (JR.setLocal "index" "I" (JR.lit jwN67392))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.run [ JR.declare "index2" "I" (JR.local "size"), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index2") (\jwN67337 -> (JR.setLocal "index2" "I" (JR.lit jwN67337))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "ARRAY") (JR.local "index")) (\jaN67235 -> JR.andThen (JR.local "index2") (\jiN67235 -> (JR.aset (JR.lit jaN67235) (JR.lit jiN67235) (JR.callStatic GameKeyEvent.jm_createEvent_3 [ (JR.field "NULL_OBJECT" (JR.local "nullUtil")), (JR.local "index"), (JR.local "index2") ]))))) ]) ] ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForKey_2 : JR.Method
jm_getInstanceForKey_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "key", "I" ) ] ""
        (JR.run [ 
                    JR.declare "gameKeyEvent" "" (JR.aget (JR.aget (JR.thisField "ARRAY") (JR.invoke "getSourceId_0" (JR.local "anyType") [])) (JR.local "key")), 
                    JR.return (JR.local "gameKeyEvent") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForInput_2 : JR.Method
jm_getInstanceForInput_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "input", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameKeyEvent" "" (JR.aget (JR.aget (JR.thisField "ARRAY") (JR.invoke "getSourceId_0" (JR.local "anyType") [])) (JR.invoke "getId_0" (JR.local "input") [])), 
                    JR.return (JR.local "gameKeyEvent") ])
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

