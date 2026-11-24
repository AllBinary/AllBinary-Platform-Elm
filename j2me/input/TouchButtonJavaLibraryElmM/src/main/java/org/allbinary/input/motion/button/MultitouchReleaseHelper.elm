module Org.Allbinary.Input.Motion.Button.MultitouchReleaseHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.CancelTouchButtonInputFactory as CancelTouchButtonInputFactory
import Org.Allbinary.Input.Motion.Button.ReleaseHelper as ReleaseHelper


jclass : String
jclass =
    "MultitouchReleaseHelper"


jchain : List String
jchain =
    [ "MultitouchReleaseHelper" ]
        ++ ReleaseHelper.jchain


jfields : List ( String, JR.JValue )
jfields =
    ReleaseHelper.jfields ++ []


jvtable =
    JR.vtable
        [ ( "release_2", jm_release_2 ) ]
        ReleaseHelper.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultitouchReleaseHelper"
        [ ( "jm_release_2", jm_release_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "touchButtonRecognizer", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ReleaseHelper.jinit_1 JR.this [ (JR.local "touchButtonRecognizer") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_release_2 : JR.Method
jm_release_2 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "cancelTouchButtonInput" "" (JR.invoke "getCancel_1" (JR.callStatic CancelTouchButtonInputFactory.jm_getInstance_0 []) [ (JR.local "touchButtonInput") ]), 
                    JR.declare "nextTouchButtonInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "gameKeyEvent" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.field "currentlyPressedTouchButtonSingleton" (JR.thisField "touchButtonRecognizer")) []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67204 -> (JR.setLocal "index" "I" (JR.lit jwN67204))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextTouchButtonInput" "" (JR.invoke "get_1" (JR.field "currentlyPressedTouchButtonSingleton" (JR.thisField "touchButtonRecognizer")) [ (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "cancelTouchButtonInput") (JR.local "nextTouchButtonInput")) (JR.run [ 
                            JR.exec (JR.setLocal "gameKeyEvent" "" (JR.invoke "getGameKeyEvent_0" (JR.local "nextTouchButtonInput") [])), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.field "upGameKeyEventHandler" (JR.thisField "touchButtonRecognizer")) [ (JR.local "gameKeyEvent") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.field "upGameKeyEventHandler" (JR.thisField "touchButtonRecognizer")) [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]), 
                            JR.exec (JR.invoke "removeAt_1" (JR.field "currentlyPressedTouchButtonSingleton" (JR.thisField "touchButtonRecognizer")) [ (JR.local "index") ]) ]) identity ]) ] ])
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

