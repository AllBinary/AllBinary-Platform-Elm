module Org.Allbinary.Graphics.Form.Item.ABCustomItem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ABCustomItem"


jchain : List String
jchain =
    [ "ABCustomItem" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "setOwner_1", jm_setOwner_1 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintUnselected_3", jm_paintUnselected_3 )
        , ( "isFocusable_0", jm_isFocusable_0 )
        , ( "getLabel_0", jm_getLabel_0 )
        , ( "setLabel_1", jm_setLabel_1 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "setHeight_1", jm_setHeight_1 )
        , ( "getValue_0", jm_getValue_0 )
        , ( "setValue_1", jm_setValue_1 )
        , ( "getMinimumWidth_0", jm_getMinimumWidth_0 )
        , ( "getMinimumHeight_0", jm_getMinimumHeight_0 )
        , ( "preMeasurement_1", jm_preMeasurement_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABCustomItem"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_setOwner_1", jm_setOwner_1 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintUnselected_3", jm_paintUnselected_3 ), ( "jm_isFocusable_0", jm_isFocusable_0 ), ( "jm_getLabel_0", jm_getLabel_0 ), ( "jm_setLabel_1", jm_setLabel_1 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_setHeight_1", jm_setHeight_1 ), ( "jm_getValue_0", jm_getValue_0 ), ( "jm_setValue_1", jm_setValue_1 ), ( "jm_getMinimumWidth_0", jm_getMinimumWidth_0 ), ( "jm_getMinimumHeight_0", jm_getMinimumHeight_0 ), ( "jm_preMeasurement_1", jm_preMeasurement_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_CUSTOM_ITEM", jstatic_NULL_CUSTOM_ITEM ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_CUSTOM_ITEM : JR.M
jstatic_NULL_CUSTOM_ITEM s =
    JR.static "ABCustomItem" jclinit "NULL_CUSTOM_ITEM"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "label", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_CUSTOM_ITEM (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "ABCustomItem.NULL_CUSTOM_ITEM" "" (JR.new jnew_3 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.return jstatic_NULL_CUSTOM_ITEM ])
        (jregister jheap)
        jthis
        jargs


jm_setOwner_1 : JR.Method
jm_setOwner_1 jheap jthis jargs =
    JR.method [ ( "owner", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintUnselected_3 : JR.Method
jm_paintUnselected_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isFocusable_0 : JR.Method
jm_isFocusable_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getLabel_0 : JR.Method
jm_getLabel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setLabel_1 : JR.Method
jm_setLabel_1 jheap jthis jargs =
    JR.method [ ( "label", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_setHeight_1 : JR.Method
jm_setHeight_1 jheap jthis jargs =
    JR.method [ ( "height", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getValue_0 : JR.Method
jm_getValue_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.float 0.0) ])
        (jregister jheap)
        jthis
        jargs


jm_setValue_1 : JR.Method
jm_setValue_1 jheap jthis jargs =
    JR.method [ ( "value", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getMinimumWidth_0 : JR.Method
jm_getMinimumWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getMinimumHeight_0 : JR.Method
jm_getMinimumHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_preMeasurement_1 : JR.Method
jm_preMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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

