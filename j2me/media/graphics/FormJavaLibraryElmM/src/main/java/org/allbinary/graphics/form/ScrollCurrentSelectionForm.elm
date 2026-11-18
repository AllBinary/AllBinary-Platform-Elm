module Org.Allbinary.Graphics.Form.ScrollCurrentSelectionForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.FormTypeFactory as FormTypeFactory
import Org.Allbinary.Graphics.Form.HorizontalFormProcessor as HorizontalFormProcessor
import Org.Allbinary.Graphics.Form.HorizontalItemIndexDx as HorizontalItemIndexDx
import Org.Allbinary.Graphics.Form.ItemIndexDx as ItemIndexDx
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Canvas.Processor as Processor
import Org.Allbinary.Graphics.Form.ScrollSelectionForm as ScrollSelectionForm
import Org.Allbinary.Graphics.Form.TempHorizontalFormProcessor as TempHorizontalFormProcessor
import Org.Allbinary.Graphics.Form.TempHorizontalItemIndexDx as TempHorizontalItemIndexDx
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor
import Org.Allbinary.Graphics.Form.VerticalFormProcessor as VerticalFormProcessor
import Org.Allbinary.Graphics.Form.VerticalItemIndexDx as VerticalItemIndexDx


jclass : String
jclass =
    "ScrollCurrentSelectionForm"


jchain : List String
jchain =
    [ "ScrollCurrentSelectionForm" ]
        ++ ScrollSelectionForm.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    ScrollSelectionForm.jfields ++ [ ( "moveForSmallScreen", JR.defaultOf "Z" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "processor", JR.defaultOf "" ), ( "preItemIndexDx", JR.defaultOf "" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ), ( "maxWidth", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "init_2", jm_init_2 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "processTempHorizontalForm_0", jm_processTempHorizontalForm_0 )
        , ( "processHorizontalForm_0", jm_processHorizontalForm_0 )
        , ( "processVerticalForm_0", jm_processVerticalForm_0 )
        , ( "getXTempHorizontalForm_4", jm_getXTempHorizontalForm_4 )
        , ( "getXHorizontalForm_4", jm_getXHorizontalForm_4 )
        , ( "getXVerticalForm_4", jm_getXVerticalForm_4 )
        , ( "getDiffX_1", jm_getDiffX_1 )
        , ( "getDx_0", jm_getDx_0 )
        , ( "getDy_0", jm_getDy_0 )
        , ( "paint_1", jm_paint_1 ) ]
        ScrollSelectionForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScrollCurrentSelectionForm"
        [ ( "jm_init_2", jm_init_2 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_processTempHorizontalForm_0", jm_processTempHorizontalForm_0 ), ( "jm_processHorizontalForm_0", jm_processHorizontalForm_0 ), ( "jm_processVerticalForm_0", jm_processVerticalForm_0 ), ( "jm_getXTempHorizontalForm_4", jm_getXTempHorizontalForm_4 ), ( "jm_getXHorizontalForm_4", jm_getXHorizontalForm_4 ), ( "jm_getXVerticalForm_4", jm_getXVerticalForm_4 ), ( "jm_getDiffX_1", jm_getDiffX_1 ), ( "jm_getDx_0", jm_getDx_0 ), ( "jm_getDy_0", jm_getDy_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_8", jnew_8 ), ( "jinit_8", jinit_8 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_8 : JR.Method
jinit_8 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "formPaintableFactory", "" ), ( "border", "I" ), ( "adjustedExtraBorder", "I" ), ( "moveForSmallScreen", "Z" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ScrollSelectionForm.jinit_7 JR.this [ (JR.local "title"), (JR.local "items"), (JR.local "formPaintableFactory"), (JR.local "border"), (JR.local "adjustedExtraBorder"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "processor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "preItemIndexDx" "" JR.this (JR.callStatic ItemIndexDx.jm_getInstance_0 [])),
                JR.exec (JR.setField "maxWidth" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "moveForSmallScreen" "Z" JR.this (JR.local "moveForSmallScreen")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_8 : JR.Method
jnew_8 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_8 jheap jthis jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ), ( "formType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ScrollSelectionForm.jvtable "init_2" JR.this [ (JR.local "rectangle"), (JR.local "formType") ]), 
                    JR.declare "formTypeFactory" "" (JR.callStatic FormTypeFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "TEMP_HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "processor" "" JR.this (JR.new TempHorizontalFormProcessor.jnew_1 [ JR.this ])), 
                        JR.exec (JR.setField "preItemIndexDx" "" JR.this (JR.new TempHorizontalItemIndexDx.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "processor" "" JR.this (JR.new HorizontalFormProcessor.jnew_1 [ JR.this ])), 
                        JR.exec (JR.setField "preItemIndexDx" "" JR.this (JR.new HorizontalItemIndexDx.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "VERTICAL_CENTER_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "processor" "" JR.this (JR.new VerticalFormProcessor.jnew_1 [ JR.this ])), 
                        JR.exec (JR.setField "preItemIndexDx" "" JR.this (JR.new VerticalItemIndexDx.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "NULL_FORM_TYPE" (JR.local "formTypeFactory"))) identity (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "UNK" (JR.local "formTypeFactory")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]) ]) ]) ]) ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_processTempHorizontalForm_0 : JR.Method
jm_processTempHorizontalForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.plus (JR.map2 JR.sub (JR.thisField "x") (JR.int 30)) ((JR.map2 JR.shr (JR.invoke "getWidth_0" (JR.thisField "rectangle") []) (JR.int 1))))), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.thisField "y")) ])
        (jregister jheap)
        jthis
        jargs


jm_processHorizontalForm_0 : JR.Method
jm_processHorizontalForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                    JR.declare "totalWidth" "I" (JR.int 0), 
                    JR.declare "item" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69338 -> (JR.setLocal "index" "I" (JR.lit jwN69338))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "item" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ])), 
                        JR.exec (JR.setLocal "totalWidth" "I" (JR.map2 JR.add (JR.local "totalWidth") (JR.plus (JR.invoke "getMinimumWidth_0" (JR.local "item") []) (JR.thisField "border")))) ]) ], 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.map2 JR.sub (JR.plus (JR.thisField "x") ((JR.map2 JR.shr (JR.invoke "getWidth_0" (JR.thisField "rectangle") []) (JR.int 1)))) ((JR.map2 JR.shr (JR.local "totalWidth") (JR.int 1))))), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.plus (JR.thisField "y") ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.thisField "rectangle") []) (JR.int 1))))), 
                    JR.ifElse (JR.thisField "moveForSmallScreen") (JR.run [ 
                        JR.declare "maxTitleHeight" "I" (JR.int 175), 
                        JR.ifElse (JR.map2 JR.less (JR.thisField "dy") (JR.local "maxTitleHeight")) (JR.run [ 
                            JR.exec (JR.setField "dy" "I" JR.this (JR.local "maxTitleHeight")) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processVerticalForm_0 : JR.Method
jm_processVerticalForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "totalHeight" "I" (JR.int 0), 
                    JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                    JR.declare "item2" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69974 -> (JR.setLocal "index" "I" (JR.lit jwN69974))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "item2" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.less (JR.thisField "maxWidth") (JR.invoke "getMinimumWidth_0" (JR.local "item2") [])) (JR.run [ 
                            JR.exec (JR.setField "maxWidth" "I" JR.this (JR.invoke "getMinimumWidth_0" (JR.local "item2") [])) ]) identity, 
                        JR.exec (JR.setLocal "totalHeight" "I" (JR.map2 JR.add (JR.local "totalHeight") (JR.plus (JR.invoke "getMinimumHeight_0" (JR.local "item2") []) (JR.thisField "border")))) ]) ], 
                    JR.exec (JR.setField "dx" "I" JR.this ((JR.map2 JR.div ((JR.map2 JR.sub (JR.invoke "getWidth_0" (JR.thisField "rectangle") []) (JR.thisField "maxWidth"))) (JR.int 2)))), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" JR.this []) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setField "dy" "I" JR.this (JR.plus (JR.thisField "y") ((JR.map2 JR.div ((JR.map2 JR.sub (JR.invoke "getHeight_0" (JR.thisField "rectangle") []) (JR.local "totalHeight"))) (JR.int 2))))), 
                        JR.ifElse (JR.thisField "moveForSmallScreen") (JR.run [ 
                            JR.declare "maxTitleHeight" "I" (JR.int 175), 
                            JR.ifElse (JR.map2 JR.less (JR.thisField "dy") (JR.local "maxTitleHeight")) (JR.run [ 
                                JR.exec (JR.setField "dy" "I" JR.this (JR.local "maxTitleHeight")) ]) identity ]) identity ]) (JR.run [ 
                        JR.exec (JR.setField "dy" "I" JR.this (JR.thisField "y")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getXTempHorizontalForm_4 : JR.Method
jm_getXTempHorizontalForm_4 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getDiffX_1" JR.this [ (JR.local "item") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getXHorizontalForm_4 : JR.Method
jm_getXHorizontalForm_4 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getXVerticalForm_4 : JR.Method
jm_getXVerticalForm_4 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.plus (JR.invoke "getDiffX_1" JR.this [ (JR.local "item") ]) (JR.thisField "halfBorder")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDiffX_1 : JR.Method
jm_getDiffX_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] "I"
        (JR.run [ 
                    JR.return ((JR.map2 JR.shr ((JR.map2 JR.sub (JR.thisField "maxWidth") (JR.invoke "getMinimumWidth_0" (JR.local "item") []))) (JR.int 1))) ])
        (jregister jheap)
        jthis
        jargs


jm_getDx_0 : JR.Method
jm_getDx_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dx") ])
        (jregister jheap)
        jthis
        jargs


jm_getDy_0 : JR.Method
jm_getDy_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dy") ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "process_0" (JR.thisField "processor") []), 
                        JR.declare "delta" "I" (JR.int 0), 
                        JR.declare "deltaX" "I" (JR.invoke "getDx_0" JR.this []), 
                        JR.declare "deltaY" "I" (JR.invoke "getDy_0" JR.this []), 
                        JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                        JR.declare "formTypeFactory" "" (JR.callStatic FormTypeFactory.jm_getInstance_0 []), 
                        JR.declare "item" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71954 -> (JR.setLocal "index" "I" (JR.lit jwN71954))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "item" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ])), 
                            JR.declare "diffX" "I" (JR.invoke "getDx_4" (JR.thisField "preItemIndexDx") [ (JR.local "index"), (JR.local "item"), (JR.thisField "dx"), (JR.thisField "dy") ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.invoke "getSelectedIndex_0" JR.this [])) (JR.run [ 
                                JR.exec (JR.setLocal "delta" "I" (JR.invoke "paintItem_5" JR.this [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.map2 JR.add (JR.local "deltaX") (JR.local "diffX")), (JR.local "deltaY") ])), 
                                JR.exec (JR.invoke "paint_4" (JR.thisField "paintable") [ (JR.local "graphics"), (JR.local "index"), (JR.map2 JR.add (JR.local "deltaX") (JR.local "diffX")), (JR.local "deltaY") ]) ]) (JR.run [ 
                                JR.exec (JR.setLocal "delta" "I" (JR.invoke "paintUnselectedItem_5" JR.this [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.map2 JR.add (JR.local "deltaX") (JR.local "diffX")), (JR.local "deltaY") ])), 
                                JR.exec (JR.invoke "paint_4" (JR.thisField "paintable") [ (JR.local "graphics"), (JR.local "index"), (JR.map2 JR.add (JR.local "deltaX") (JR.local "diffX")), (JR.local "deltaY") ]) ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "TEMP_HORIZONTAL_FORM" (JR.local "formTypeFactory"))) identity (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                                JR.exec (JR.setLocal "deltaX" "I" (JR.local "delta")) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "VERTICAL_CENTER_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                                JR.exec (JR.setLocal "deltaY" "I" (JR.local "delta")) ]) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "UNK" (JR.local "formTypeFactory")) ]) ]) ]) ]) ]) ] ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PAINT" (JR.thisField "canvasStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

