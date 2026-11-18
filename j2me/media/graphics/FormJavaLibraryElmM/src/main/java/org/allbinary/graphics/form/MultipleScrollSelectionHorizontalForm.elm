module Org.Allbinary.Graphics.Form.MultipleScrollSelectionHorizontalForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Form.FormTypeFactory as FormTypeFactory
import Org.Allbinary.Graphics.Form.ItemIndexPaintable as ItemIndexPaintable
import Org.Allbinary.Graphics.Form.ItemPaintableFactory as ItemPaintableFactory
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Graphics.Form.MultipleScrollSelectionFormHorizontalPaintable as MultipleScrollSelectionFormHorizontalPaintable
import Org.Allbinary.Graphics.Form.MultipleScrollSelectionFormRectPaintable as MultipleScrollSelectionFormRectPaintable
import Org.Allbinary.Graphics.Form.MultipleScrollSelectionFormVerticalPaintable as MultipleScrollSelectionFormVerticalPaintable
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Graphics.Form.ScrollSelectionForm as ScrollSelectionForm
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "MultipleScrollSelectionHorizontalForm"


jchain : List String
jchain =
    [ "MultipleScrollSelectionHorizontalForm" ]
        ++ ScrollSelectionForm.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    ScrollSelectionForm.jfields ++ [ ( "rectPaintable", JR.defaultOf "" ), ( "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable", JR.defaultOf "" ), ( "backgroundColor", JR.defaultOf "I" ), ( "myFontProcessor", JR.defaultOf "" ), ( "logged", JR.defaultOf "Z" ), ( "fontHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createForm_7", jm_createForm_7 )
        , ( "fillRect_1", jm_fillRect_1 )
        , ( "init_2", jm_init_2 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "paintHorizontal_5", jm_paintHorizontal_5 )
        , ( "paintVertical_5", jm_paintVertical_5 )
        , ( "getStartIndex_0", jm_getStartIndex_0 )
        , ( "paint_1", jm_paint_1 ) ]
        ScrollSelectionForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultipleScrollSelectionHorizontalForm"
        [ ( "jm_createForm_7", jm_createForm_7 ), ( "jm_fillRect_1", jm_fillRect_1 ), ( "jm_init_2", jm_init_2 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_paintHorizontal_5", jm_paintHorizontal_5 ), ( "jm_paintVertical_5", jm_paintVertical_5 ), ( "jm_getStartIndex_0", jm_getStartIndex_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "formPaintableFactory", "" ), ( "border", "I" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ScrollSelectionForm.jinit_7 JR.this [ (JR.local "title"), (JR.local "items"), (JR.local "formPaintableFactory"), (JR.local "border"), (JR.int 3), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "rectPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable" "" JR.this (JR.callStatic ItemIndexPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "backgroundColor" "I" JR.this (JR.invoke "intValue_0" (JR.field "TRANSPARENT_GREY" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) [])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "logged" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "fontHeight" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) identity (JR.run [ 
                        JR.exec (JR.setField "rectPaintable" "" JR.this (JR.new MultipleScrollSelectionFormRectPaintable.jnew_1 [ JR.this ])) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_createForm_7 : JR.Method
jm_createForm_7 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "rectangle", "" ), ( "formType", "" ), ( "border", "I" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "scrollSelectionForm" "" (JR.new jnew_6 [ (JR.local "title"), (JR.local "items"), (JR.callStatic ItemPaintableFactory.jm_getInstance_0 []), (JR.local "border"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]), 
                    JR.exec (JR.invoke "init_2" (JR.local "scrollSelectionForm") [ (JR.local "rectangle"), (JR.local "formType") ]), 
                    JR.return (JR.local "scrollSelectionForm") ])
        (jregister jheap)
        jthis
        jargs


jm_fillRect_1 : JR.Method
jm_fillRect_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "backgroundColor") ]), 
                    JR.exec (JR.invoke "fillRect_4" (JR.local "graphics") [ (JR.thisField "x"), (JR.thisField "y"), (JR.invoke "getWidth_0" (JR.thisField "rectangle") []), (JR.invoke "getHeight_0" (JR.thisField "rectangle") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ), ( "formType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ScrollSelectionForm.jvtable "init_2" JR.this [ (JR.local "rectangle"), (JR.local "formType") ]), 
                    JR.declare "formTypeFactory" "" (JR.callStatic FormTypeFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable" "" JR.this (JR.new MultipleScrollSelectionFormHorizontalPaintable.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "VERTICAL_CENTER_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable" "" JR.this (JR.new MultipleScrollSelectionFormVerticalPaintable.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "NULL_FORM_TYPE" (JR.local "formTypeFactory"))) identity (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "UNK" (JR.local "formTypeFactory")) ]) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "fontHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paintHorizontal_5 : JR.Method
jm_paintHorizontal_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "dx2" "I" (JR.plus (JR.invoke "paintItem_5" JR.this [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "dx"), (JR.local "dy") ]) (JR.thisField "border")), 
                    JR.exec (JR.invoke "paint_4" (JR.thisField "paintable") [ (JR.local "graphics"), (JR.local "index"), (JR.local "dx"), (JR.local "dy") ]), 
                    JR.exec (JR.setLocal "dx" "I" (JR.local "dx2")), 
                    JR.return (JR.local "dx") ])
        (jregister jheap)
        jthis
        jargs


jm_paintVertical_5 : JR.Method
jm_paintVertical_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.exec (JR.invoke "paintItem_5" JR.this [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "dx"), (JR.local "dy") ]), 
                    JR.exec (JR.invoke "paint_4" (JR.thisField "paintable") [ (JR.local "graphics"), (JR.local "index"), (JR.local "dx"), (JR.local "dy") ]), 
                    JR.return (JR.local "dx") ])
        (jregister jheap)
        jthis
        jargs


jm_getStartIndex_0 : JR.Method
jm_getStartIndex_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSelectedIndex_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                        JR.declare "start" "I" (JR.invoke "getStartIndex_0" JR.this []), 
                        JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                        JR.declare "dx" "I" (JR.thisField "x"), 
                        JR.declare "dy" "I" (JR.thisField "y"), 
                        JR.exec (JR.invoke "paint_1" (JR.thisField "rectPaintable") [ (JR.local "graphics") ]), 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.invoke "getTitle_0" JR.this []), (JR.thisField "x"), (JR.map2 JR.sub (JR.thisField "y") (JR.thisField "fontHeight")), (JR.int 0) ]), 
                        JR.declare "item" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.local "start"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71183 -> (JR.setLocal "index" "I" (JR.lit jwN71183))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "item" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ])), 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.local "dx") (JR.invoke "getMaxX_0" (JR.thisField "rectangle") [])) (JR.run [ 
                                JR.ifElse (JR.thisField "logged") identity (JR.run [ 
                                    JR.exec (JR.setField "logged" "Z" JR.this (JR.bool True)), 
                                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "painting beyond maxx: ") ]) [ (JR.invoke "getMaxX_0" (JR.thisField "rectangle") []) ]) []), JR.this, (JR.field "PAINT" (JR.thisField "canvasStrings")) ]) ]) ]) identity, 
                            JR.exec (JR.setLocal "dx" "I" (JR.invoke "paint_5" (JR.thisField "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable") [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "dx"), (JR.local "dy") ])) ]) ] ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PAINT" (JR.thisField "canvasStrings")) ]) ]) ) ] identity ])
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

