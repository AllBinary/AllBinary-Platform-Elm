module Org.Allbinary.Input.Motion.Button.BasicTouchButtonCellPositionFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Graphics.CellPositionFactory as CellPositionFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Button.TouchButtonLocationHelper as TouchButtonLocationHelper


jclass : String
jclass =
    "BasicTouchButtonCellPositionFactory"


jchain : List String
jchain =
    [ "BasicTouchButtonCellPositionFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "TOP_RIGHT", JR.defaultOf "" ), ( "TOP_LEFT", JR.defaultOf "" ), ( "SECOND_FROM_TOP_LEFT", JR.defaultOf "" ), ( "SECOND_FROM_TOP_RIGHT", JR.defaultOf "" ), ( "TOP_SECOND_FROM_LEFT", JR.defaultOf "" ), ( "TOP_SECOND_FROM_RIGHT", JR.defaultOf "" ), ( "BOTTOM_RIGHT", JR.defaultOf "" ), ( "BOTTOM_SECOND_FROM_RIGHT", JR.defaultOf "" ), ( "SECOND_FROM_BOTTOM_RIGHT", JR.defaultOf "" ), ( "THIRD_FROM_BOTTOM_RIGHT", JR.defaultOf "" ), ( "FOURTH_FROM_BOTTOM_RIGHT", JR.defaultOf "" ), ( "SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT", JR.defaultOf "" ), ( "SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT", JR.defaultOf "" ), ( "SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT", JR.defaultOf "" ), ( "BOTTOM_THIRD_FROM_RIGHT", JR.defaultOf "" ), ( "BOTTOM_FOURTH_FROM_RIGHT", JR.defaultOf "" ), ( "BOTTOM_SECOND_FROM_LEFT", JR.defaultOf "" ), ( "SECOND_FROM_BOTTOM_LEFT", JR.defaultOf "" ), ( "THIRD_FROM_BOTTOM_LEFT", JR.defaultOf "" ), ( "BOTTOM_LEFT", JR.defaultOf "" ), ( "SECOND_FROM_BOTTOM_SECOND_FROM_LEFT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicTouchButtonCellPositionFactory"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.declare "touchButtonLocationHelper" "" (JR.new TouchButtonLocationHelper.jnew_0 []), 
                    JR.declare "cellPositionFactory" "" (JR.callStatic CellPositionFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "init_2" (JR.local "cellPositionFactory") [ (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []), (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) ]), 
                    JR.exec (JR.setField "TOP_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 0), (JR.int 0) ])), 
                    JR.exec (JR.setField "TOP_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)), (JR.int 0) ])), 
                    JR.exec (JR.setField "BOTTOM_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 0), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)) ])), 
                    JR.exec (JR.setField "BOTTOM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)) ])), 
                    JR.exec (JR.setField "BOTTOM_SECOND_FROM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)) ])), 
                    JR.exec (JR.setField "SECOND_FROM_BOTTOM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)) ])), 
                    JR.exec (JR.setField "SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)) ])), 
                    JR.exec (JR.setField "BOTTOM_SECOND_FROM_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 1), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)) ])), 
                    JR.exec (JR.setField "SECOND_FROM_BOTTOM_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 0), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)) ])), 
                    JR.exec (JR.setField "SECOND_FROM_BOTTOM_SECOND_FROM_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 1), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)) ])), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)) (JR.run [ 
                        JR.exec (JR.setField "SECOND_FROM_TOP_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 0), (JR.int 1) ])), 
                        JR.exec (JR.setField "SECOND_FROM_TOP_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)), (JR.int 1) ])) ]) (JR.run [ 
                        JR.exec (JR.setField "SECOND_FROM_TOP_LEFT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "SECOND_FROM_TOP_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))) ]), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 4)) (JR.run [ 
                        JR.exec (JR.setField "THIRD_FROM_BOTTOM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 3)) ])), 
                        JR.exec (JR.setField "FOURTH_FROM_BOTTOM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 4)) ])), 
                        JR.exec (JR.setField "THIRD_FROM_BOTTOM_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 0), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 3)) ])) ]) (JR.run [ 
                        JR.exec (JR.setField "THIRD_FROM_BOTTOM_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "FOURTH_FROM_BOTTOM_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "THIRD_FROM_BOTTOM_LEFT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))) ]), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 4)) (JR.run [ 
                        JR.exec (JR.setField "SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 3)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)) ])), 
                        JR.exec (JR.setField "SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 4)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)) ])), 
                        JR.exec (JR.setField "BOTTOM_THIRD_FROM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 3)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)) ])), 
                        JR.exec (JR.setField "BOTTOM_FOURTH_FROM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 4)), (JR.map2 JR.sub (JR.invoke "getTotalRows_0" (JR.local "touchButtonLocationHelper") []) (JR.int 1)) ])), 
                        JR.exec (JR.setField "TOP_SECOND_FROM_LEFT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.int 1), (JR.int 0) ])), 
                        JR.exec (JR.setField "TOP_SECOND_FROM_RIGHT" "" JR.this (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.map2 JR.sub (JR.invoke "getTotalColumns_0" (JR.local "touchButtonLocationHelper") []) (JR.int 2)), (JR.int 0) ])) ]) (JR.run [ 
                        JR.exec (JR.setField "SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "BOTTOM_THIRD_FROM_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "BOTTOM_FOURTH_FROM_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "TOP_SECOND_FROM_LEFT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))), 
                        JR.exec (JR.setField "TOP_SECOND_FROM_RIGHT" "" JR.this (JR.field "NONE" (JR.local "cellPositionFactory"))) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

