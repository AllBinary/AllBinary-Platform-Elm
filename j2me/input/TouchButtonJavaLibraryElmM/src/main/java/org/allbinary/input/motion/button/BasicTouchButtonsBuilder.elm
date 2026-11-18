module Org.Allbinary.Input.Motion.Button.BasicTouchButtonsBuilder exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.BaseTouchInput as BaseTouchInput
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Input.Motion.Button.BasicTouchButtonCellPositionFactory as BasicTouchButtonCellPositionFactory
import Org.Allbinary.Input.Motion.Button.BasicTouchInputFactory as BasicTouchInputFactory
import Org.Allbinary.Input.Motion.Button.CommonButtons as CommonButtons
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Button.TouchButton as TouchButton
import Org.Allbinary.Input.Motion.Button.TouchButtonDownResource as TouchButtonDownResource
import Org.Allbinary.Input.Motion.Button.TouchButtonLocationHelper as TouchButtonLocationHelper
import Org.Allbinary.Input.Motion.Button.TouchButtonTurnLeftResource as TouchButtonTurnLeftResource
import Org.Allbinary.Input.Motion.Button.TouchButtonTurnRightResource as TouchButtonTurnRightResource
import Org.Allbinary.Input.Motion.Button.TouchButtonUpResource as TouchButtonUpResource


jclass : String
jclass =
    "BasicTouchButtonsBuilder"


jchain : List String
jchain =
    [ "BasicTouchButtonsBuilder" ]
        ++ BaseTouchInput.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseTouchInput.jfields ++ [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getList_0", jm_getList_0 ) ]
        BaseTouchInput.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicTouchButtonsBuilder"
        [ ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseTouchInput.jinit_0 JR.this []),
            JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                        JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.declare "commonButtons" "" (JR.callStatic CommonButtons.jm_getInstance_0 []), 
                        JR.declare "touchButtonLocationHelper" "" (JR.new TouchButtonLocationHelper.jnew_0 []), 
                        JR.declare "basicTouchButtonCellPositionFactory" "" (JR.new BasicTouchButtonCellPositionFactory.jnew_0 []), 
                        JR.declare "UP" "" (JR.callStatic TouchButton.jm_createButton_6 [ (JR.field "UP" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 [])), (JR.callStatic TouchButtonUpResource.jm_getInstance_0 []), (JR.field "NORMAL_BUTTON" (JR.local "commonButtons")), (JR.field "SECOND_FROM_BOTTOM_LEFT" (JR.local "basicTouchButtonCellPositionFactory")), (JR.invoke "getColumnsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []), (JR.invoke "getRowsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []) ]), 
                        JR.declare "DOWN" "" (JR.callStatic TouchButton.jm_createButton_6 [ (JR.field "DOWN" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 [])), (JR.callStatic TouchButtonDownResource.jm_getInstance_0 []), (JR.field "NORMAL_BUTTON" (JR.local "commonButtons")), (JR.field "BOTTOM_LEFT" (JR.local "basicTouchButtonCellPositionFactory")), (JR.invoke "getColumnsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []), (JR.invoke "getRowsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []) ]), 
                        JR.declare "LEFT" "" (JR.callStatic TouchButton.jm_createButton_6 [ (JR.field "SPECIAL_BUTTON_FOUR" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 [])), (JR.callStatic TouchButtonTurnLeftResource.jm_getInstance_0 []), (JR.field "NORMAL_BUTTON" (JR.local "commonButtons")), (JR.field "BOTTOM_SECOND_FROM_RIGHT" (JR.local "basicTouchButtonCellPositionFactory")), (JR.invoke "getColumnsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []), (JR.invoke "getRowsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []) ]), 
                        JR.declare "RIGHT" "" (JR.callStatic TouchButton.jm_createButton_6 [ (JR.field "SPECIAL_BUTTON_THREE" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 [])), (JR.callStatic TouchButtonTurnRightResource.jm_getInstance_0 []), (JR.field "NORMAL_BUTTON" (JR.local "commonButtons")), (JR.field "BOTTOM_RIGHT" (JR.local "basicTouchButtonCellPositionFactory")), (JR.invoke "getColumnsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []), (JR.invoke "getRowsRemainderHalf_0" (JR.local "touchButtonLocationHelper") []) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "UP") ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "LEFT") ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "RIGHT") ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "DOWN") ]), 
                        JR.return (JR.local "list") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "GET_LIST" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ]) ) ] identity ])
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

