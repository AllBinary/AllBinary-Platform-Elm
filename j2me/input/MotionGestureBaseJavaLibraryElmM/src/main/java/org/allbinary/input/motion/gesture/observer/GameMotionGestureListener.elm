module Org.Allbinary.Input.Motion.Gesture.Observer.GameMotionGestureListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.observer
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Gesture.Observer.MotionGestureEventListener as MotionGestureEventListener
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "GameMotionGestureListener"


jchain : List String
jchain =
    [ "GameMotionGestureListener" ]
        ++ MotionGestureEventListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "motionGestureCollection", JR.defaultOf "" ), ( "touchGestureCollection", JR.defaultOf "" ), ( "signed", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onUpMotionGestureEvent_1", jm_onUpMotionGestureEvent_1 )
        , ( "onDownMotionGestureEvent_1", jm_onDownMotionGestureEvent_1 )
        , ( "onLeftMotionGestureEvent_1", jm_onLeftMotionGestureEvent_1 )
        , ( "onRightMotionGestureEvent_1", jm_onRightMotionGestureEvent_1 )
        , ( "onDiagonalDownRightMotionGestureEvent_1", jm_onDiagonalDownRightMotionGestureEvent_1 )
        , ( "onDiagonalDownLeftMotionGestureEvent_1", jm_onDiagonalDownLeftMotionGestureEvent_1 )
        , ( "onDiagonalUpRightMotionGestureEvent_1", jm_onDiagonalUpRightMotionGestureEvent_1 )
        , ( "onDiagonalUpLeftMotionGestureEvent_1", jm_onDiagonalUpLeftMotionGestureEvent_1 )
        , ( "onPressedMotionGestureEvent_1", jm_onPressedMotionGestureEvent_1 )
        , ( "released_1", jm_released_1 )
        , ( "onScrolledMotionGestureEvent_1", jm_onScrolledMotionGestureEvent_1 )
        , ( "onMotionGestureEvent_1", jm_onMotionGestureEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameMotionGestureListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onUpMotionGestureEvent_1", jm_onUpMotionGestureEvent_1 ), ( "jm_onDownMotionGestureEvent_1", jm_onDownMotionGestureEvent_1 ), ( "jm_onLeftMotionGestureEvent_1", jm_onLeftMotionGestureEvent_1 ), ( "jm_onRightMotionGestureEvent_1", jm_onRightMotionGestureEvent_1 ), ( "jm_onDiagonalDownRightMotionGestureEvent_1", jm_onDiagonalDownRightMotionGestureEvent_1 ), ( "jm_onDiagonalDownLeftMotionGestureEvent_1", jm_onDiagonalDownLeftMotionGestureEvent_1 ), ( "jm_onDiagonalUpRightMotionGestureEvent_1", jm_onDiagonalUpRightMotionGestureEvent_1 ), ( "jm_onDiagonalUpLeftMotionGestureEvent_1", jm_onDiagonalUpLeftMotionGestureEvent_1 ), ( "jm_onPressedMotionGestureEvent_1", jm_onPressedMotionGestureEvent_1 ), ( "jm_released_1", jm_released_1 ), ( "jm_onScrolledMotionGestureEvent_1", jm_onScrolledMotionGestureEvent_1 ), ( "jm_onMotionGestureEvent_1", jm_onMotionGestureEvent_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "signed", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "motionGestureCollection" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "touchGestureCollection" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.setField "signed" "" JR.this (JR.local "signed")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onUpMotionGestureEvent_1 : JR.Method
jm_onUpMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDownMotionGestureEvent_1 : JR.Method
jm_onDownMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onLeftMotionGestureEvent_1 : JR.Method
jm_onLeftMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onRightMotionGestureEvent_1 : JR.Method
jm_onRightMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDiagonalDownRightMotionGestureEvent_1 : JR.Method
jm_onDiagonalDownRightMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDiagonalDownLeftMotionGestureEvent_1 : JR.Method
jm_onDiagonalDownLeftMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDiagonalUpRightMotionGestureEvent_1 : JR.Method
jm_onDiagonalUpRightMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDiagonalUpLeftMotionGestureEvent_1 : JR.Method
jm_onDiagonalUpLeftMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onPressedMotionGestureEvent_1 : JR.Method
jm_onPressedMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "touchGestureCollection") [ (JR.invoke "getMotionGesture_0" (JR.local "ev") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_released_1 : JR.Method
jm_released_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "touchGestureCollection") [ (JR.invoke "getMotionGesture_0" (JR.local "ev") []) ]), 
                        JR.exec (JR.invoke "onMotionGestureCompleted_1" (JR.thisField "signed") [ (JR.thisField "touchGestureCollection") ]), 
                        JR.exec (JR.invoke "clear_0" (JR.thisField "touchGestureCollection") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EXCEPTION_LABEL" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getMotionGesture_0" (JR.local "ev") []) ]) ]), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "release"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_onScrolledMotionGestureEvent_1 : JR.Method
jm_onScrolledMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onMotionGestureEvent_1 : JR.Method
jm_onMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "ev", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "motionGestureInput" "" (JR.invoke "getMotionGesture_0" (JR.local "ev") []), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "motionGestureInput") (JR.field "PRESSED" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []))) (JR.run [ 
                            JR.exec (JR.invoke "onPressedMotionGestureEvent_1" JR.this [ (JR.local "ev") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "motionGestureInput") (JR.field "RELEASED" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []))) (JR.run [ 
                            JR.exec (JR.invoke "released_1" JR.this [ (JR.local "ev") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.thisField "motionGestureCollection") [ (JR.local "motionGestureInput") ]), 
                            JR.exec (JR.invoke "onMotionGestureCompleted_1" (JR.thisField "signed") [ (JR.thisField "motionGestureCollection") ]), 
                            JR.exec (JR.invoke "clear_0" (JR.thisField "motionGestureCollection") []), 
                            JR.exec (JR.invoke "clear_0" (JR.thisField "touchGestureCollection") []) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EXCEPTION_LABEL" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getMotionGesture_0" (JR.local "ev") []) ]) ]), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "onMotionGestureEvent"), (JR.local "e") ]) ]) ) ] identity ])
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

