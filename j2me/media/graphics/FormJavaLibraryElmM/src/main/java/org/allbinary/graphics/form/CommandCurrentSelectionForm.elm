module Org.Allbinary.Graphics.Form.CommandCurrentSelectionForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Form.ItemPaintableFactory as ItemPaintableFactory
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Animation.Vector.RectangleAdjustedAnimation as RectangleAdjustedAnimation
import Org.Allbinary.Animation.Vector.RectangleFilledAdjustedAnimation as RectangleFilledAdjustedAnimation
import Org.Allbinary.Graphics.Form.ScrollCurrentSelectionForm as ScrollCurrentSelectionForm
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface


jclass : String
jclass =
    "CommandCurrentSelectionForm"


jchain : List String
jchain =
    [ "CommandCurrentSelectionForm" ]
        ++ ScrollCurrentSelectionForm.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    ScrollCurrentSelectionForm.jfields ++ [ ( "selectedAnimationArray", JR.defaultOf "" ), ( "unSelectedAnimationArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "initAnimations_0", jm_initAnimations_0 )
        , ( "addAll_1", jm_addAll_1 )
        , ( "addAt_2", jm_addAt_2 )
        , ( "updateAll_2", jm_updateAll_2 )
        , ( "updateAt_2", jm_updateAt_2 )
        , ( "getSelectedCommand_0", jm_getSelectedCommand_0 )
        , ( "append_1", jm_append_1 )
        , ( "delete_1", jm_delete_1 )
        , ( "deleteAll_0", jm_deleteAll_0 )
        , ( "insert_2", jm_insert_2 )
        , ( "set_2", jm_set_2 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintItem_5", jm_paintItem_5 )
        , ( "paintUnselectedItem_5", jm_paintUnselectedItem_5 ) ]
        ScrollCurrentSelectionForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommandCurrentSelectionForm"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_initAnimations_0", jm_initAnimations_0 ), ( "jm_addAll_1", jm_addAll_1 ), ( "jm_addAt_2", jm_addAt_2 ), ( "jm_updateAll_2", jm_updateAll_2 ), ( "jm_updateAt_2", jm_updateAt_2 ), ( "jm_getSelectedCommand_0", jm_getSelectedCommand_0 ), ( "jm_append_1", jm_append_1 ), ( "jm_delete_1", jm_delete_1 ), ( "jm_deleteAll_0", jm_deleteAll_0 ), ( "jm_insert_2", jm_insert_2 ), ( "jm_set_2", jm_set_2 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintItem_5", jm_paintItem_5 ), ( "jm_paintUnselectedItem_5", jm_paintUnselectedItem_5 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "border", "I" ), ( "moveForSmallScreen", "Z" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ScrollCurrentSelectionForm.jinit_8 JR.this [ (JR.local "title"), (JR.local "items"), (JR.callStatic ItemPaintableFactory.jm_getInstance_0 []), (JR.local "border"), (JR.map JR.neg (JR.int 3)), (JR.local "moveForSmallScreen"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "selectedAnimationArray" "" JR.this (JR.newArray "" [ (JR.int 16) ])),
                JR.exec (JR.setField "unSelectedAnimationArray" "" JR.this (JR.newArray "" [ (JR.int 16) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "initAnimations_0" JR.this []), 
                    JR.exec (JR.invoke "addAll_1" JR.this [ (JR.local "items") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateAll_2" JR.this [ (JR.local "graphics"), (JR.invoke "getAllitems_0" JR.this []) ]), 
                    JR.exec (JR.callVia ScrollCurrentSelectionForm.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initAnimations_0 : JR.Method
jm_initAnimations_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "nullAnimation" "" (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ]), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "selectedAnimationArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN69178 -> (JR.setLocal "index" "I" (JR.lit jwN69178))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "selectedAnimationArray") (\jaN69135 -> JR.andThen (JR.local "index") (\jiN69135 -> (JR.aset (JR.lit jaN69135) (JR.lit jiN69135) (JR.local "nullAnimation"))))) ]) ], 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "unSelectedAnimationArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN69292 -> (JR.setLocal "index" "I" (JR.lit jwN69292))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "unSelectedAnimationArray") (\jaN69249 -> JR.andThen (JR.local "index") (\jiN69249 -> (JR.aset (JR.lit jaN69249) (JR.lit jiN69249) (JR.local "nullAnimation"))))) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_addAll_1 : JR.Method
jm_addAll_1 jheap jthis jargs =
    JR.method [ ( "items", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.local "items")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN69437 -> (JR.setLocal "index" "I" (JR.lit jwN69437))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.invoke "addAt_2" JR.this [ (JR.local "index"), (JR.aget (JR.local "items") (JR.local "index")) ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_addAt_2 : JR.Method
jm_addAt_2 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ) ] ""
        (JR.run [ 
                    JR.declare "basicColorFactory" "" (JR.callStatic BasicColorFactory.jm_getInstance_0 []), 
                    JR.declare "buttonColor" "" (JR.field "TRANSPARENT_GREY" (JR.local "basicColorFactory")), 
                    JR.declare "selectedButtonColor" "" (JR.field "TRANSPARENT_RED" (JR.local "basicColorFactory")), 
                    JR.declare "width" "I" (JR.invoke "getMinimumWidth_0" (JR.local "item") []), 
                    JR.declare "height" "I" (JR.invoke "getMinimumHeight_0" (JR.local "item") []), 
                    JR.declare "adjustedBorder" "I" (JR.int 3), 
                    JR.declare "offset" "I" (JR.map JR.neg ((JR.plus (JR.thisField "halfBorder") (JR.local "adjustedBorder")))), 
                    JR.declare "rectWidth" "I" (JR.map2 JR.sub (JR.plus (JR.local "width") (JR.thisField "border")) (JR.local "adjustedBorder")), 
                    JR.declare "rectHeight" "I" (JR.map2 JR.sub (JR.plus (JR.local "height") (JR.thisField "border")) (JR.local "adjustedBorder")), 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "selectedAnimationArray") (\jaN70149 -> JR.andThen (JR.local "index") (\jiN70149 -> (JR.aset (JR.lit jaN70149) (JR.lit jiN70149) (JR.new RectangleAdjustedAnimation.jnew_5 [ (JR.local "rectWidth"), (JR.local "rectHeight"), (JR.local "offset"), (JR.local "offset"), (JR.local "selectedButtonColor") ]))))) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "selectedAnimationArray") (\jaN70055 -> JR.andThen (JR.local "index") (\jiN70055 -> (JR.aset (JR.lit jaN70055) (JR.lit jiN70055) (JR.new RectangleFilledAdjustedAnimation.jnew_5 [ (JR.local "rectWidth"), (JR.local "rectHeight"), (JR.local "offset"), (JR.local "offset"), (JR.local "selectedButtonColor") ]))))) ]), 
                    JR.exec (JR.setLocal "adjustedBorder" "I" (JR.int 4)), 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "unSelectedAnimationArray") (\jaN70403 -> JR.andThen (JR.local "index") (\jiN70403 -> (JR.aset (JR.lit jaN70403) (JR.lit jiN70403) (JR.new RectangleAdjustedAnimation.jnew_5 [ (JR.local "rectWidth"), (JR.local "rectHeight"), (JR.local "offset"), (JR.local "offset"), (JR.local "buttonColor") ]))))) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "unSelectedAnimationArray") (\jaN70309 -> JR.andThen (JR.local "index") (\jiN70309 -> (JR.aset (JR.lit jaN70309) (JR.lit jiN70309) (JR.new RectangleFilledAdjustedAnimation.jnew_5 [ (JR.local "rectWidth"), (JR.local "rectHeight"), (JR.local "offset"), (JR.local "offset"), (JR.local "buttonColor") ]))))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateAll_2 : JR.Method
jm_updateAll_2 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "items", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.local "items")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN70665 -> (JR.setLocal "index" "I" (JR.lit jwN70665))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.invoke "preMeasurement_1" (JR.aget (JR.local "items") (JR.local "index")) [ (JR.local "graphics") ]), 
                        JR.exec (JR.invoke "updateAt_2" JR.this [ (JR.local "index"), (JR.aget (JR.local "items") (JR.local "index")) ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_updateAt_2 : JR.Method
jm_updateAt_2 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ) ] ""
        (JR.run [ 
                    JR.declare "basicColorFactory" "" (JR.callStatic BasicColorFactory.jm_getInstance_0 []), 
                    JR.declare "buttonColor" "" (JR.field "TRANSPARENT_GREY" (JR.local "basicColorFactory")), 
                    JR.declare "selectedButtonColor" "" (JR.field "TRANSPARENT_RED" (JR.local "basicColorFactory")), 
                    JR.declare "width" "I" (JR.invoke "getMinimumWidth_0" (JR.local "item") []), 
                    JR.declare "height" "I" (JR.invoke "getMinimumHeight_0" (JR.local "item") []), 
                    JR.declare "adjustedBorder" "I" (JR.int 3), 
                    JR.declare "offset" "I" (JR.map JR.neg ((JR.plus (JR.thisField "halfBorder") (JR.local "adjustedBorder")))), 
                    JR.declare "rectWidth" "I" (JR.map2 JR.sub (JR.plus (JR.local "width") (JR.thisField "border")) (JR.local "adjustedBorder")), 
                    JR.declare "rectHeight" "I" (JR.map2 JR.sub (JR.plus (JR.local "height") (JR.thisField "border")) (JR.local "adjustedBorder")), 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) (JR.run [ 
                        JR.declare "rectangleAdjustedAnimation" "" (JR.aget (JR.thisField "selectedAnimationArray") (JR.local "index")), 
                        JR.exec (JR.invoke "setWidth_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectWidth") ]), 
                        JR.exec (JR.invoke "setHeight_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectHeight") ]), 
                        JR.exec (JR.invoke "setOffsetX_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setOffsetY_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setBasicColorP_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "selectedButtonColor") ]) ]) (JR.run [ 
                        JR.declare "rectangleAdjustedAnimation" "" (JR.aget (JR.thisField "selectedAnimationArray") (JR.local "index")), 
                        JR.exec (JR.invoke "setWidth_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectWidth") ]), 
                        JR.exec (JR.invoke "setHeight_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectHeight") ]), 
                        JR.exec (JR.invoke "setOffsetX_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setOffsetY_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setBasicColorP_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "selectedButtonColor") ]) ]), 
                    JR.exec (JR.setLocal "adjustedBorder" "I" (JR.int 4)), 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) (JR.run [ 
                        JR.declare "rectangleAdjustedAnimation" "" (JR.aget (JR.thisField "unSelectedAnimationArray") (JR.local "index")), 
                        JR.exec (JR.invoke "setWidth_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectWidth") ]), 
                        JR.exec (JR.invoke "setHeight_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectHeight") ]), 
                        JR.exec (JR.invoke "setOffsetX_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setOffsetY_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setBasicColorP_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "buttonColor") ]) ]) (JR.run [ 
                        JR.declare "rectangleAdjustedAnimation" "" (JR.aget (JR.thisField "unSelectedAnimationArray") (JR.local "index")), 
                        JR.exec (JR.invoke "setWidth_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectWidth") ]), 
                        JR.exec (JR.invoke "setHeight_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "rectHeight") ]), 
                        JR.exec (JR.invoke "setOffsetX_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setOffsetY_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "offset") ]), 
                        JR.exec (JR.invoke "setBasicColorP_1" (JR.local "rectangleAdjustedAnimation") [ (JR.local "buttonColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedCommand_0 : JR.Method
jm_getSelectedCommand_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.callVia ScrollCurrentSelectionForm.jvtable "getSelectedIndex_0" JR.this []), 
                    JR.declare "commandTextItem" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ]), 
                    JR.return (JR.invoke "getCommand_0" (JR.local "commandTextItem") []) ])
        (jregister jheap)
        jthis
        jargs


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] "I"
        (JR.run [ 
                    JR.declare "result" "I" (JR.callVia ScrollCurrentSelectionForm.jvtable "append_1" JR.this [ (JR.local "item") ]), 
                    JR.exec (JR.invoke "addAt_2" JR.this [ (JR.local "result"), (JR.local "item") ]), 
                    JR.return (JR.local "result") ])
        (jregister jheap)
        jthis
        jargs


jm_delete_1 : JR.Method
jm_delete_1 jheap jthis jargs =
    JR.method [ ( "itemNum", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ScrollCurrentSelectionForm.jvtable "delete_1" JR.this [ (JR.local "itemNum") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_deleteAll_0 : JR.Method
jm_deleteAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initAnimations_0" JR.this []), 
                    JR.exec (JR.callVia ScrollCurrentSelectionForm.jvtable "deleteAll_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_insert_2 : JR.Method
jm_insert_2 jheap jthis jargs =
    JR.method [ ( "itemNum", "I" ), ( "item", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ScrollCurrentSelectionForm.jvtable "insert_2" JR.this [ (JR.local "itemNum"), (JR.local "item") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_set_2 : JR.Method
jm_set_2 jheap jthis jargs =
    JR.method [ ( "itemNum", "I" ), ( "item", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ScrollCurrentSelectionForm.jvtable "set_2" JR.this [ (JR.local "itemNum"), (JR.local "item") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.callVia ScrollCurrentSelectionForm.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintItem_5 : JR.Method
jm_paintItem_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "x", "I" ), ( "y", "I" ) ] "I"
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.aget (JR.thisField "selectedAnimationArray") (JR.local "index")) [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]), 
                    JR.return (JR.callVia ScrollCurrentSelectionForm.jvtable "paintItem_5" JR.this [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintUnselectedItem_5 : JR.Method
jm_paintUnselectedItem_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "x", "I" ), ( "y", "I" ) ] "I"
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.aget (JR.thisField "unSelectedAnimationArray") (JR.local "index")) [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]), 
                    JR.return (JR.callVia ScrollCurrentSelectionForm.jvtable "paintUnselectedItem_5" JR.this [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "x"), (JR.local "y") ]) ])
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

