module Org.Allbinary.Input.Motion.Button.TouchButtonsMappingPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.BasicTouchInputFactory as BasicTouchInputFactory
import Org.Allbinary.Graphics.CellPositionFactory as CellPositionFactory
import Org.Allbinary.Input.Motion.Button.CommonButtons as CommonButtons
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Input.Motion.Button.TouchButton as TouchButton
import Org.Allbinary.Input.Motion.Button.TouchButtonBlankResource as TouchButtonBlankResource
import Org.Allbinary.Input.Motion.Button.TouchButtonLocationHelper as TouchButtonLocationHelper


jclass : String
jclass =
    "TouchButtonsMappingPaintable"


jchain : List String
jchain =
    [ "TouchButtonsMappingPaintable" ]
        ++ Paintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "foregroundColor", JR.defaultOf "I" ), ( "paintableTable", JR.defaultOf "" ), ( "touchButtonLocationHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "createPaintableTable_0", jm_createPaintableTable_0 )
        , ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonsMappingPaintable"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_createPaintableTable_0", jm_createPaintableTable_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "paintableTable" "" JR.this (JR.newArray "" [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "touchButtonLocationHelper" "" JR.this (JR.new TouchButtonLocationHelper.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "foregroundColor" "I" JR.this (JR.invoke "intValue_0" (JR.local "basicColor") [])), 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setField "paintableTable" "" JR.this (JR.invoke "createPaintableTable_0" JR.this [])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "updateRectangle"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createPaintableTable_0 : JR.Method
jm_createPaintableTable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "totalColumns" "I" (JR.invoke "getTotalColumns_0" (JR.thisField "touchButtonLocationHelper") []), 
                    JR.declare "totalRows" "I" (JR.invoke "getTotalRows_0" (JR.thisField "touchButtonLocationHelper") []), 
                    JR.declare "paintableTable" "" (JR.newArray "" [ (JR.local "totalColumns"), (JR.local "totalRows") ]), 
                    JR.declare "cellPositionFactory" "" (JR.callStatic CellPositionFactory.jm_getInstance_0 []), 
                    JR.declare "commonButtons" "" (JR.callStatic CommonButtons.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "totalColumns") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68646 -> (JR.setLocal "index" "I" (JR.lit jwN68646))) JR.decrement) ]) (JR.run [ 
                        JR.run [ JR.declare "rowIndex" "I" (JR.map2 JR.sub (JR.local "totalRows") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "rowIndex") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "rowIndex") (\jwN68571 -> (JR.setLocal "rowIndex" "I" (JR.lit jwN68571))) JR.decrement) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "paintableTable") (JR.local "index")) (\jaN68322 -> JR.andThen (JR.local "rowIndex") (\jiN68322 -> (JR.aset (JR.lit jaN68322) (JR.lit jiN68322) (JR.callStatic TouchButton.jm_createButton_6 [ (JR.field "NONE" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 [])), (JR.callStatic TouchButtonBlankResource.jm_getInstance_0 []), (JR.field "NORMAL_BUTTON" (JR.local "commonButtons")), (JR.invoke "getInstanceColRow_2" (JR.local "cellPositionFactory") [ (JR.local "index"), (JR.local "rowIndex") ]), (JR.invoke "getColumnsRemainderHalf_0" (JR.thisField "touchButtonLocationHelper") []), (JR.invoke "getRowsRemainderHalf_0" (JR.thisField "touchButtonLocationHelper") []) ]))))) ]) ] ]) ], 
                    JR.return (JR.local "paintableTable") ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "totalColumns" "I" (JR.invoke "getTotalColumns_0" (JR.thisField "touchButtonLocationHelper") []), 
                    JR.declare "totalRows" "I" (JR.invoke "getTotalRows_0" (JR.thisField "touchButtonLocationHelper") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "totalColumns") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69017 -> (JR.setLocal "index" "I" (JR.lit jwN69017))) JR.decrement) ]) (JR.run [ 
                        JR.run [ JR.declare "rowIndex" "I" (JR.map2 JR.sub (JR.local "totalRows") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "rowIndex") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "rowIndex") (\jwN68942 -> (JR.setLocal "rowIndex" "I" (JR.lit jwN68942))) JR.decrement) ]) (JR.run [ 
                            JR.exec (JR.invoke "paint_1" (JR.aget (JR.aget (JR.thisField "paintableTable") (JR.local "index")) (JR.local "rowIndex")) [ (JR.local "graphics") ]) ]) ] ]) ] ])
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

