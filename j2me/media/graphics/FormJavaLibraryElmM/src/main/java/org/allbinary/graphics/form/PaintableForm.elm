module Org.Allbinary.Graphics.Form.PaintableForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.ABCustomForm as ABCustomForm
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Graphics.Form.FormTypeFactory as FormTypeFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "PaintableForm"


jchain : List String
jchain =
    [ "PaintableForm" ]
        ++ ABCustomForm.jchain


jfields : List ( String, JR.JValue )
jfields =
    ABCustomForm.jfields ++ [ ( "canvasStrings", JR.defaultOf "" ), ( "rectangle", JR.defaultOf "" ), ( "x", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ), ( "formType", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullPaintableForm_0", jm_getNullPaintableForm_0 )
        , ( "init_2", jm_init_2 )
        , ( "getWidth_0", jm_getWidth_0 ) ]
        ABCustomForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PaintableForm"
        [ ( "jm_getNullPaintableForm_0", jm_getNullPaintableForm_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_NULL_PAINTABLE_FORM", jstatic_NULL_PAINTABLE_FORM ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_PAINTABLE_FORM : JR.M
jstatic_NULL_PAINTABLE_FORM s =
    JR.static "PaintableForm" jclinit "NULL_PAINTABLE_FORM"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ABCustomForm.jinit_4 JR.this [ (JR.local "title"), (JR.local "items"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "canvasStrings" "" JR.this (JR.callStatic CanvasStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "rectangle" "" JR.this RectangleFactory.jstatic_SINGLETON),
                JR.exec (JR.setField "formType" "" JR.this (JR.field "NULL_FORM_TYPE" (JR.callStatic FormTypeFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setSelectedIndex_1" JR.this [ (JR.int 0) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getNullPaintableForm_0 : JR.Method
jm_getNullPaintableForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_PAINTABLE_FORM (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "PaintableForm.NULL_PAINTABLE_FORM" "" (JR.new jnew_4 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.newArray "" [ (JR.int 0) ]), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.return jstatic_NULL_PAINTABLE_FORM ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ), ( "formType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.local "rectangle")), 
                    JR.declare "point" "" (JR.invoke "getPoint_0" (JR.thisField "rectangle") []), 
                    JR.exec (JR.setField "x" "I" JR.this (JR.invoke "getX_0" (JR.local "point") [])), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.invoke "getY_0" (JR.local "point") [])), 
                    JR.exec (JR.setField "formType" "" JR.this (JR.local "formType")) ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getWidth_0" (JR.thisField "rectangle") []) ])
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

