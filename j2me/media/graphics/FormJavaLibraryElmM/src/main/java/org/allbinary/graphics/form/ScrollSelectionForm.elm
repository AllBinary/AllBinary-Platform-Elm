module Org.Allbinary.Graphics.Form.ScrollSelectionForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABCustomItem as ABCustomItem
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Form.FormTypeFactory as FormTypeFactory
import Org.Allbinary.Graphics.Form.ItemIndexDx as ItemIndexDx
import Org.Allbinary.Graphics.Form.ItemIndexPaintable as ItemIndexPaintable
import Org.Allbinary.Graphics.Form.ItemPaintableFactory as ItemPaintableFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Form.PaintableForm as PaintableForm
import Org.Allbinary.Math.RectangleCollisionUtil as RectangleCollisionUtil
import Org.Allbinary.Graphics.Form.ScrollSelectionFormHorizontalDx as ScrollSelectionFormHorizontalDx
import Org.Allbinary.Graphics.Form.ScrollSelectionFormHorizontalPaintable as ScrollSelectionFormHorizontalPaintable
import Org.Allbinary.Graphics.Form.ScrollSelectionFormTempHorizontalDx as ScrollSelectionFormTempHorizontalDx
import Org.Allbinary.Graphics.Form.ScrollSelectionFormTempHorizontalPaintable as ScrollSelectionFormTempHorizontalPaintable
import Org.Allbinary.Graphics.Form.ScrollSelectionFormVericalDx as ScrollSelectionFormVericalDx
import Org.Allbinary.Graphics.Form.ScrollSelectionFormVerticalPaintable as ScrollSelectionFormVerticalPaintable
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ScrollSelectionForm"


jchain : List String
jchain =
    [ "ScrollSelectionForm" ]
        ++ PaintableForm.jchain


jfields : List ( String, JR.JValue )
jfields =
    PaintableForm.jfields ++ [ ( "rectangleCollisionUtil", JR.defaultOf "" ), ( "border", JR.defaultOf "I" ), ( "halfBorder", JR.defaultOf "I" ), ( "buttonBasicColor", JR.defaultOf "" ), ( "scrollSelectionFormFormTypeItemIndexPaintable", JR.defaultOf "" ), ( "formTypeItemIndexDx", JR.defaultOf "" ), ( "paintable", JR.defaultOf "" ), ( "adjustedExtraBorder", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createForm_6", jm_createForm_6 )
        , ( "getNullScrollSelectionForm_0", jm_getNullScrollSelectionForm_0 )
        , ( "getNullScrollSelectionFormHorizontal_0", jm_getNullScrollSelectionFormHorizontal_0 )
        , ( "init_2", jm_init_2 )
        , ( "paintItemHorizontal_5", jm_paintItemHorizontal_5 )
        , ( "paintItemVertical_5", jm_paintItemVertical_5 )
        , ( "paintItemTempHorizontal_5", jm_paintItemTempHorizontal_5 )
        , ( "getSelectedIndexForPointHorizontalDx_4", jm_getSelectedIndexForPointHorizontalDx_4 )
        , ( "getSelectedIndexForPointVerticalDx_4", jm_getSelectedIndexForPointVerticalDx_4 )
        , ( "getSelectedIndexForPointTempHorizontalDx_4", jm_getSelectedIndexForPointTempHorizontalDx_4 )
        , ( "append_1", jm_append_1 )
        , ( "getSelectedItem_1", jm_getSelectedItem_1 )
        , ( "getItemIndex_1", jm_getItemIndex_1 )
        , ( "getStartIndex_0", jm_getStartIndex_0 )
        , ( "getSelectedIndexForPoint_1", jm_getSelectedIndexForPoint_1 )
        , ( "processInputKey_1", jm_processInputKey_1 )
        , ( "isInForm_1", jm_isInForm_1 )
        , ( "paintItem_5", jm_paintItem_5 )
        , ( "paintUnselectedItem_5", jm_paintUnselectedItem_5 )
        , ( "getDiffX_1", jm_getDiffX_1 )
        , ( "getDx_0", jm_getDx_0 )
        , ( "getDy_0", jm_getDy_0 )
        , ( "setButtonBasicColor_1", jm_setButtonBasicColor_1 )
        , ( "getButtonBasicColor_0", jm_getButtonBasicColor_0 ) ]
        PaintableForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScrollSelectionForm"
        [ ( "jm_createForm_6", jm_createForm_6 ), ( "jm_getNullScrollSelectionForm_0", jm_getNullScrollSelectionForm_0 ), ( "jm_getNullScrollSelectionFormHorizontal_0", jm_getNullScrollSelectionFormHorizontal_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_paintItemHorizontal_5", jm_paintItemHorizontal_5 ), ( "jm_paintItemVertical_5", jm_paintItemVertical_5 ), ( "jm_paintItemTempHorizontal_5", jm_paintItemTempHorizontal_5 ), ( "jm_getSelectedIndexForPointHorizontalDx_4", jm_getSelectedIndexForPointHorizontalDx_4 ), ( "jm_getSelectedIndexForPointVerticalDx_4", jm_getSelectedIndexForPointVerticalDx_4 ), ( "jm_getSelectedIndexForPointTempHorizontalDx_4", jm_getSelectedIndexForPointTempHorizontalDx_4 ), ( "jm_append_1", jm_append_1 ), ( "jm_getSelectedItem_1", jm_getSelectedItem_1 ), ( "jm_getItemIndex_1", jm_getItemIndex_1 ), ( "jm_getStartIndex_0", jm_getStartIndex_0 ), ( "jm_getSelectedIndexForPoint_1", jm_getSelectedIndexForPoint_1 ), ( "jm_processInputKey_1", jm_processInputKey_1 ), ( "jm_isInForm_1", jm_isInForm_1 ), ( "jm_paintItem_5", jm_paintItem_5 ), ( "jm_paintUnselectedItem_5", jm_paintUnselectedItem_5 ), ( "jm_getDiffX_1", jm_getDiffX_1 ), ( "jm_getDx_0", jm_getDx_0 ), ( "jm_getDy_0", jm_getDy_0 ), ( "jm_setButtonBasicColor_1", jm_setButtonBasicColor_1 ), ( "jm_getButtonBasicColor_0", jm_getButtonBasicColor_0 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        [ ( "jstatic_NULL_SCROLL_SELECTION_FORM", jstatic_NULL_SCROLL_SELECTION_FORM ), ( "jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM", jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM ), ( "jstatic_INSIDE_FORM", jstatic_INSIDE_FORM ), ( "jstatic_IS_IN_FORM", jstatic_IS_IN_FORM ), ( "jstatic_GET_SELECTED_INDEX", jstatic_GET_SELECTED_INDEX ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_SCROLL_SELECTION_FORM : JR.M
jstatic_NULL_SCROLL_SELECTION_FORM s =
    JR.static "ScrollSelectionForm" jclinit "NULL_SCROLL_SELECTION_FORM"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM : JR.M
jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM s =
    JR.static "ScrollSelectionForm" jclinit "NULL_SCROLL_SELECTION_HORIZONTAL_FORM"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jstatic_INSIDE_FORM : JR.M
jstatic_INSIDE_FORM s =
    JR.static "ScrollSelectionForm" jclinit "INSIDE_FORM"
        (JR.str " inside form")
        s


jstatic_IS_IN_FORM : JR.M
jstatic_IS_IN_FORM s =
    JR.static "ScrollSelectionForm" jclinit "IS_IN_FORM"
        (JR.str "isInForm")
        s


jstatic_GET_SELECTED_INDEX : JR.M
jstatic_GET_SELECTED_INDEX s =
    JR.static "ScrollSelectionForm" jclinit "GET_SELECTED_INDEX"
        (JR.str "getSelectedIndexForPoint")
        s


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "formPaintableFactory", "" ), ( "border", "I" ), ( "adjustedExtraBorder", "I" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PaintableForm.jinit_4 JR.this [ (JR.local "title"), (JR.local "items"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "rectangleCollisionUtil" "" JR.this (JR.callStatic RectangleCollisionUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "scrollSelectionFormFormTypeItemIndexPaintable" "" JR.this (JR.callStatic ItemIndexPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "formTypeItemIndexDx" "" JR.this (JR.callStatic ItemIndexDx.jm_getInstance_0 [])),
                JR.exec (JR.setField "paintable" "" JR.this (JR.callStatic ItemPaintableFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "adjustedExtraBorder" "I" JR.this (JR.local "adjustedExtraBorder")), 
                    JR.exec (JR.setField "buttonBasicColor" "" JR.this (JR.local "foregroundBasicColor")), 
                    JR.exec (JR.setField "border" "I" JR.this (JR.local "border")), 
                    JR.exec (JR.setField "halfBorder" "I" JR.this ((JR.map2 JR.shr (JR.local "border") (JR.int 1)))), 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.invoke "getInstanceItemPaintable_1" (JR.local "formPaintableFactory") [ JR.this ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createForm_6 : JR.Method
jm_createForm_6 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "formPaintableFactory", "" ), ( "border", "I" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "formPaintableFactory") (JR.callStatic ItemPaintableFactory.jm_getInstance_0 [])) (JR.run [ 
                            JR.return (JR.new jnew_7 [ (JR.local "title"), (JR.local "items"), (JR.local "formPaintableFactory"), (JR.local "border"), (JR.map JR.neg (JR.int 3)), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]) ]) (JR.run [ 
                            JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                            JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), (JR.local "logUtil"), (JR.field "EXCEPTION" (JR.local "commonStrings")) ]), 
                            JR.return (JR.callStatic PaintableForm.jm_getNullPaintableForm_0 []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), (JR.local "logUtil"), (JR.field "EXCEPTION" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.callStatic PaintableForm.jm_getNullPaintableForm_0 []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getNullScrollSelectionForm_0 : JR.Method
jm_getNullScrollSelectionForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_SCROLL_SELECTION_FORM (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM" "" (JR.callStatic jm_createForm_6 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.newArray "" [ (JR.int 0) ]), (JR.callStatic ItemPaintableFactory.jm_getInstance_0 []), (JR.int 0), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.return jstatic_NULL_SCROLL_SELECTION_FORM ])
        (jregister jheap)
        jthis
        jargs


jm_getNullScrollSelectionFormHorizontal_0 : JR.Method
jm_getNullScrollSelectionFormHorizontal_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM" "" (JR.callStatic jm_createForm_6 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.newArray "" [ (JR.int 0) ]), (JR.callStatic ItemPaintableFactory.jm_getInstance_0 []), (JR.int 0), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.return jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ), ( "formType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia PaintableForm.jvtable "init_2" JR.this [ (JR.local "rectangle"), (JR.local "formType") ]), 
                    JR.declare "formTypeFactory" "" (JR.callStatic FormTypeFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "scrollSelectionFormFormTypeItemIndexPaintable" "" JR.this (JR.new ScrollSelectionFormHorizontalPaintable.jnew_1 [ JR.this ])), 
                        JR.exec (JR.setField "formTypeItemIndexDx" "" JR.this (JR.new ScrollSelectionFormHorizontalDx.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "VERTICAL_CENTER_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "scrollSelectionFormFormTypeItemIndexPaintable" "" JR.this (JR.new ScrollSelectionFormVerticalPaintable.jnew_1 [ JR.this ])), 
                        JR.exec (JR.setField "formTypeItemIndexDx" "" JR.this (JR.new ScrollSelectionFormVericalDx.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "TEMP_HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.exec (JR.setField "scrollSelectionFormFormTypeItemIndexPaintable" "" JR.this (JR.new ScrollSelectionFormTempHorizontalPaintable.jnew_1 [ JR.this ])), 
                        JR.exec (JR.setField "formTypeItemIndexDx" "" JR.this (JR.new ScrollSelectionFormTempHorizontalDx.jnew_1 [ JR.this ])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "formType") (JR.field "NULL_FORM_TYPE" (JR.local "formTypeFactory"))) identity (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "UNK" (JR.local "formTypeFactory")) ]) ]) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintItemHorizontal_5 : JR.Method
jm_paintItemHorizontal_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "x", "I" ), ( "y", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "width" "I" (JR.invoke "getMinimumWidth_0" (JR.local "item") []), 
                    JR.return (JR.map2 JR.add (JR.map2 JR.add (JR.local "x") (JR.local "width")) (JR.thisField "border")) ])
        (jregister jheap)
        jthis
        jargs


jm_paintItemVertical_5 : JR.Method
jm_paintItemVertical_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "x", "I" ), ( "y", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "height" "I" (JR.invoke "getMinimumHeight_0" (JR.local "item") []), 
                    JR.return (JR.map2 JR.add (JR.map2 JR.add (JR.local "y") (JR.local "height")) (JR.thisField "border")) ])
        (jregister jheap)
        jthis
        jargs


jm_paintItemTempHorizontal_5 : JR.Method
jm_paintItemTempHorizontal_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "x", "I" ), ( "y", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedIndexForPointHorizontalDx_4 : JR.Method
jm_getSelectedIndexForPointHorizontalDx_4 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.sub (JR.local "dx") (JR.thisField "halfBorder")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedIndexForPointVerticalDx_4 : JR.Method
jm_getSelectedIndexForPointVerticalDx_4 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.local "dx") (JR.invoke "getDiffX_1" JR.this [ (JR.local "item") ])) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedIndexForPointTempHorizontalDx_4 : JR.Method
jm_getSelectedIndexForPointTempHorizontalDx_4 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.local "dx") (JR.invoke "getDiffX_1" JR.this [ (JR.local "item") ])) ])
        (jregister jheap)
        jthis
        jargs


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.callVia PaintableForm.jvtable "append_1" JR.this [ (JR.local "item") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedItem_1 : JR.Method
jm_getSelectedItem_1 jheap jthis jargs =
    JR.method [ ( "point", "" ) ] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.invoke "getSelectedIndexForPoint_1" JR.this [ (JR.local "point") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "index") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.return (JR.invoke "get_1" JR.this [ (JR.local "index") ]) ]) (JR.run [ 
                        JR.return (JR.callStatic ABCustomItem.jm_getNullInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getItemIndex_1 : JR.Method
jm_getItemIndex_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] "I"
        (JR.run [ 
                    JR.declare "nextItem" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72692 -> (JR.setLocal "index" "I" (JR.lit jwN72692))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextItem" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "nextItem") (JR.local "item")) (JR.run [ 
                            JR.return (JR.local "index") ]) identity ]) ], 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_getStartIndex_0 : JR.Method
jm_getStartIndex_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedIndexForPoint_1 : JR.Method
jm_getSelectedIndexForPoint_1 jheap jthis jargs =
    JR.method [ ( "point", "" ) ] "I"
        (JR.run [ 
                    JR.declare "start" "I" (JR.invoke "getStartIndex_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                    JR.declare "dx" "I" (JR.invoke "getDx_0" JR.this []), 
                    JR.declare "dy" "I" (JR.invoke "getDy_0" JR.this []), 
                    JR.declare "formTypeFactory" "" (JR.callStatic FormTypeFactory.jm_getInstance_0 []), 
                    JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "START_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "start") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TOTAL_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "size") ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, jstatic_GET_SELECTED_INDEX ]), 
                    JR.declare "item" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "width" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "height" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "diffX" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.local "start"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN74609 -> (JR.setLocal "index" "I" (JR.lit jwN74609))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "item" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ])), 
                        JR.exec (JR.setLocal "width" "I" (JR.invoke "getMinimumWidth_0" (JR.local "item") [])), 
                        JR.exec (JR.setLocal "height" "I" (JR.invoke "getMinimumHeight_0" (JR.local "item") [])), 
                        JR.exec (JR.setLocal "diffX" "I" (JR.invoke "getDx_4" (JR.thisField "formTypeItemIndexDx") [ (JR.local "index"), (JR.local "item"), (JR.local "dx"), (JR.local "dy") ])), 
                        JR.ifElse (JR.invoke "isInside_6" (JR.thisField "rectangleCollisionUtil") [ (JR.local "diffX"), (JR.map2 JR.sub (JR.local "dy") (JR.thisField "halfBorder")), (JR.map2 JR.add (JR.map2 JR.add (JR.local "diffX") (JR.local "width")) (JR.thisField "border")), (JR.map2 JR.add (JR.map2 JR.add (JR.map2 JR.add (JR.local "dy") (JR.local "height")) (JR.thisField "halfBorder")) (JR.int 1)), (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []) ]) (JR.run [ 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "ITEM_LABEL" (JR.local "commonLabels")) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getLabel_0" (JR.local "item") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INDEX_LABEL" (JR.local "commonLabels")) ]), 
                            JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, jstatic_GET_SELECTED_INDEX ]), 
                            JR.return (JR.local "index") ]) identity, 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                            JR.exec (JR.setLocal "dx" "I" (JR.map2 JR.add (JR.map2 JR.add (JR.local "dx") (JR.local "width")) (JR.thisField "border"))), 
                            JR.ifElse (JR.map2 JR.greater (JR.local "dx") (JR.invoke "getMaxX_0" (JR.thisField "rectangle") [])) (JR.run [ 
                                JR.break ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "VERTICAL_CENTER_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                            JR.exec (JR.setLocal "dy" "I" (JR.map2 JR.add (JR.map2 JR.add (JR.local "dy") (JR.local "height")) (JR.thisField "border"))), 
                            JR.ifElse (JR.map2 JR.greater (JR.local "dy") (JR.invoke "getMaxY_0" (JR.thisField "rectangle") [])) (JR.run [ 
                                JR.break ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "NULL_FORM_TYPE" (JR.local "formTypeFactory"))) identity (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "UNK" (JR.local "formTypeFactory")) ]) ]) ]) ]) ]) ], 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_processInputKey_1 : JR.Method
jm_processInputKey_1 jheap jthis jargs =
    JR.method [ ( "gameKeyCode", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "formTypeFactory" "" (JR.callStatic FormTypeFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" JR.this []) (JR.int 0)) (JR.run [ 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) identity, 
                    JR.declare "index" "I" (JR.invoke "getSelectedIndex_0" JR.this []), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.thisField "formType") (JR.field "HORIZONTAL_FORM" (JR.local "formTypeFactory"))) (JR.map2 JR.equals (JR.thisField "formType") (JR.field "TEMP_HORIZONTAL_FORM" (JR.local "formTypeFactory")))) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "gameKeyCode") Canvas.jstatic_RIGHT) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN75245 -> (JR.setLocal "index" "I" (JR.lit jwN75245))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "gameKeyCode") Canvas.jstatic_LEFT) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN75220 -> (JR.setLocal "index" "I" (JR.lit jwN75220))) JR.decrement) ]) identity ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "VERTICAL_CENTER_FORM" (JR.local "formTypeFactory"))) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "gameKeyCode") Canvas.jstatic_DOWN) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN75123 -> (JR.setLocal "index" "I" (JR.lit jwN75123))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "gameKeyCode") Canvas.jstatic_UP) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN75098 -> (JR.setLocal "index" "I" (JR.lit jwN75098))) JR.decrement) ]) identity ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "formType") (JR.field "NULL_FORM_TYPE" (JR.local "formTypeFactory"))) identity (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "UNK" (JR.local "formTypeFactory")) ]) ]) ]) ]), 
                    JR.declare "max" "I" (JR.map2 JR.sub (JR.invoke "size_0" JR.this []) (JR.int 1)), 
                    JR.ifElse (JR.map2 JR.less (JR.local "index") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setSelectedIndex_1" JR.this [ (JR.int 0) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "index") (JR.local "max")) (JR.run [ 
                        JR.exec (JR.invoke "setSelectedIndex_1" JR.this [ (JR.local "max") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setSelectedIndex_1" JR.this [ (JR.local "index") ]) ]) ]), 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_isInForm_1 : JR.Method
jm_isInForm_1 jheap jthis jargs =
    JR.method [ ( "point", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "isInside_6" (JR.thisField "rectangleCollisionUtil") [ (JR.thisField "x"), (JR.map2 JR.sub (JR.thisField "y") (JR.thisField "halfBorder")), (JR.map2 JR.add (JR.invoke "getMaxX_0" (JR.thisField "rectangle") []) (JR.thisField "border")), (JR.map2 JR.add (JR.invoke "getMaxY_0" (JR.thisField "rectangle") []) (JR.thisField "border")), (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "point") ]) ]) [ jstatic_INSIDE_FORM ]) []), JR.this, jstatic_IS_IN_FORM ]), 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_paintItem_5 : JR.Method
jm_paintItem_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "x", "I" ), ( "y", "I" ) ] "I"
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.local "item") [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]), 
                    JR.declare "width" "I" (JR.invoke "getMinimumWidth_0" (JR.local "item") []), 
                    JR.declare "height" "I" (JR.invoke "getMinimumHeight_0" (JR.local "item") []), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.invoke "getButtonBasicColor_0" JR.this []) []) ]), 
                    JR.declare "adjustedBorder" "I" (JR.int 3), 
                    JR.exec (JR.invoke "drawRect_4" (JR.local "graphics") [ (JR.map2 JR.sub (JR.map2 JR.sub (JR.local "x") (JR.thisField "halfBorder")) (JR.local "adjustedBorder")), (JR.map2 JR.sub (JR.map2 JR.sub (JR.local "y") (JR.thisField "halfBorder")) (JR.local "adjustedBorder")), (JR.map2 JR.add (JR.map2 JR.add (JR.local "width") (JR.thisField "border")) (JR.thisField "adjustedExtraBorder")), (JR.map2 JR.add (JR.map2 JR.add (JR.local "height") (JR.thisField "border")) (JR.thisField "adjustedExtraBorder")) ]), 
                    JR.return (JR.invoke "paint_5" (JR.thisField "scrollSelectionFormFormTypeItemIndexPaintable") [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintUnselectedItem_5 : JR.Method
jm_paintUnselectedItem_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "x", "I" ), ( "y", "I" ) ] "I"
        (JR.run [ 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.invoke "getButtonBasicColor_0" JR.this []) []) ]), 
                    JR.exec (JR.invoke "paintUnselected_3" (JR.local "item") [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]), 
                    JR.return (JR.invoke "paint_5" (JR.thisField "scrollSelectionFormFormTypeItemIndexPaintable") [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDiffX_1 : JR.Method
jm_getDiffX_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getDx_0 : JR.Method
jm_getDx_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "x") ])
        (jregister jheap)
        jthis
        jargs


jm_getDy_0 : JR.Method
jm_getDy_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "y") ])
        (jregister jheap)
        jthis
        jargs


jm_setButtonBasicColor_1 : JR.Method
jm_setButtonBasicColor_1 jheap jthis jargs =
    JR.method [ ( "buttonBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "buttonBasicColor" "" JR.this (JR.local "buttonBasicColor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getButtonBasicColor_0 : JR.Method
jm_getButtonBasicColor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "buttonBasicColor") ])
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

