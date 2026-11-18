module Org.Allbinary.Input.Motion.Gesture.Observer.MotionGestureEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.observer
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "MotionGestureEvent"


jchain : List String
jchain =
    [ "MotionGestureEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "motionGesture", JR.defaultOf "" ), ( "id", JR.defaultOf "I" ), ( "previousPoint", JR.defaultOf "" ), ( "currentPoint", JR.defaultOf "" ), ( "commonLabels", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getMotionGesture_0", jm_getMotionGesture_0 )
        , ( "setMotionGesture_1", jm_setMotionGesture_1 )
        , ( "getPreviousPoint_0", jm_getPreviousPoint_0 )
        , ( "setPreviousPoint_1", jm_setPreviousPoint_1 )
        , ( "getCurrentPoint_0", jm_getCurrentPoint_0 )
        , ( "setCurrentPoint_1", jm_setCurrentPoint_1 )
        , ( "toString_0", jm_toString_0 )
        , ( "getId_0", jm_getId_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionGestureEvent"
        [ ( "jm_getMotionGesture_0", jm_getMotionGesture_0 ), ( "jm_setMotionGesture_1", jm_setMotionGesture_1 ), ( "jm_getPreviousPoint_0", jm_getPreviousPoint_0 ), ( "jm_setPreviousPoint_1", jm_setPreviousPoint_1 ), ( "jm_getCurrentPoint_0", jm_getCurrentPoint_0 ), ( "jm_setCurrentPoint_1", jm_setCurrentPoint_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getId_0", jm_getId_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_PREVIOUS", jstatic_PREVIOUS ), ( "jstatic_HASHCODE", jstatic_HASHCODE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_PREVIOUS : JR.M
jstatic_PREVIOUS s =
    JR.static "MotionGestureEvent" jclinit "PREVIOUS"
        (JR.str " Previous: ")
        s


jstatic_HASHCODE : JR.M
jstatic_HASHCODE s =
    JR.static "MotionGestureEvent" jclinit "HASHCODE"
        (JR.str " hashcode: ")
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "source", "" ), ( "id", "I" ), ( "motionGesture", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "source") ]),
                JR.exec (JR.setField "motionGesture" "" JR.this (JR.field "NO_MOTION" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "previousPoint" "" JR.this (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "currentPoint" "" JR.this (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "commonLabels" "" JR.this (JR.callStatic CommonLabels.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "id" "I" JR.this (JR.local "id")), 
                    JR.exec (JR.invoke "setMotionGesture_1" JR.this [ (JR.local "motionGesture") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getMotionGesture_0 : JR.Method
jm_getMotionGesture_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "motionGesture") ])
        (jregister jheap)
        jthis
        jargs


jm_setMotionGesture_1 : JR.Method
jm_setMotionGesture_1 jheap jthis jargs =
    JR.method [ ( "motionGesture", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "motionGesture" "" JR.this (JR.local "motionGesture")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPreviousPoint_0 : JR.Method
jm_getPreviousPoint_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "previousPoint") ])
        (jregister jheap)
        jthis
        jargs


jm_setPreviousPoint_1 : JR.Method
jm_setPreviousPoint_1 jheap jthis jargs =
    JR.method [ ( "previousPoint", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "previousPoint" "" JR.this (JR.local "previousPoint")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentPoint_0 : JR.Method
jm_getCurrentPoint_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "currentPoint") ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentPoint_1 : JR.Method
jm_setCurrentPoint_1 jheap jthis jargs =
    JR.method [ ( "currentPoint", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentPoint" "" JR.this (JR.local "currentPoint")) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "motionGesture") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "CURRENT" (JR.thisField "commonLabels")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "currentPoint") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_PREVIOUS ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "previousPoint") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_HASHCODE ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
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

