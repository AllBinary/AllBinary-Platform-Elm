module Org.Allbinary.Graphics.Form.Item.ABTextFieldItem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABTextItem as ABTextItem
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ABTextFieldItem"


jchain : List String
jchain =
    [ "ABTextFieldItem" ]
        ++ ABTextItem.jchain


jfields : List ( String, JR.JValue )
jfields =
    ABTextItem.jfields ++ [ ( "font", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getLabel_0", jm_getLabel_0 )
        , ( "setLabel_1", jm_setLabel_1 )
        , ( "getString_0", jm_getString_0 )
        , ( "setString_1", jm_setString_1 )
        , ( "setFocus_1", jm_setFocus_1 )
        , ( "getFontHeight_0", jm_getFontHeight_0 )
        , ( "setBackgroundBasicColorP_1", jm_setBackgroundBasicColorP_1 )
        , ( "setForegroundBasicColorP_1", jm_setForegroundBasicColorP_1 ) ]
        ABTextItem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABTextFieldItem"
        [ ( "jm_getLabel_0", jm_getLabel_0 ), ( "jm_setLabel_1", jm_setLabel_1 ), ( "jm_getString_0", jm_getString_0 ), ( "jm_setString_1", jm_setString_1 ), ( "jm_setFocus_1", jm_setFocus_1 ), ( "jm_getFontHeight_0", jm_getFontHeight_0 ), ( "jm_setBackgroundBasicColorP_1", jm_setBackgroundBasicColorP_1 ), ( "jm_setForegroundBasicColorP_1", jm_setForegroundBasicColorP_1 ), ( "jnew_10", jnew_10 ), ( "jinit_10", jinit_10 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_10 : JR.Method
jinit_10 jheap jthis jargs =
    JR.method [ ( "canvas", "" ), ( "visitor", "" ), ( "label", "" ), ( "value", "" ), ( "maxSize", "I" ), ( "layout", "I" ), ( "altText", "" ), ( "font", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ABTextItem.jinit_5 JR.this [ (JR.local "label"), (JR.local "layout"), (JR.local "altText"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "font" "" JR.this (JR.local "font")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_10 : JR.Method
jnew_10 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_10 jheap jthis jargs


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


jm_getString_0 : JR.Method
jm_getString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setString_1 : JR.Method
jm_setString_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setFocus_1 : JR.Method
jm_setFocus_1 jheap jthis jargs =
    JR.method [ ( "state", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getFontHeight_0 : JR.Method
jm_getFontHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getHeight_0" (JR.thisField "font") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setBackgroundBasicColorP_1 : JR.Method
jm_setBackgroundBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setForegroundBasicColorP_1 : JR.Method
jm_setForegroundBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
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

