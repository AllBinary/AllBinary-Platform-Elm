module Org.Allbinary.Game.Input.Motion.Action.GameKeyCompleteMotionGestureInputEventFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.motion.action
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GameKeyCompleteMotionGestureInputEventFactory"


jchain : List String
jchain =
    [ "GameKeyCompleteMotionGestureInputEventFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "eventList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "add_1", jm_add_1 )
        , ( "updateAll_0", jm_updateAll_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyCompleteMotionGestureInputEventFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_updateAll_0", jm_updateAll_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "GameKeyCompleteMotionGestureInputEventFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "eventList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "gameKeyCompleteMotionGestureInputEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "eventList") [ (JR.local "gameKeyCompleteMotionGestureInputEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateAll_0 : JR.Method
jm_updateAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "size_0" (JR.thisField "eventList") []) ]) []), JR.this, (JR.str "updateAll") ]), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "eventList") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67666 -> (JR.setLocal "index" "I" (JR.lit jwN67666))) JR.decrement) ]) (JR.run [ 
                        JR.declare "gameKeyCompleteMotionGestureInputEvent" "" (JR.aget (JR.field "objectArray" (JR.thisField "eventList")) (JR.local "index")), 
                        JR.exec (JR.invoke "update_0" (JR.local "gameKeyCompleteMotionGestureInputEvent") []) ]) ] ])
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

