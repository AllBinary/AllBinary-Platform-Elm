module Org.Allbinary.Graphics.Form.Item.ABCustomGaugeItem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABCustomItem as ABCustomItem
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ABCustomGaugeItem"


jchain : List String
jchain =
    [ "ABCustomGaugeItem" ]
        ++ ABCustomItem.jchain


jfields : List ( String, JR.JValue )
jfields =
    ABCustomItem.jfields ++ []


jvtable =
    JR.vtable
        []
        ABCustomItem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABCustomGaugeItem"
        [ ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        [ ( "jstatic_NULL_GAUGE_ITEM", jstatic_NULL_GAUGE_ITEM ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_GAUGE_ITEM : JR.M
jstatic_NULL_GAUGE_ITEM s =
    JR.static "ABCustomGaugeItem" jclinit "NULL_GAUGE_ITEM"
        (JR.new jnew_5 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.int 1), (JR.int 0), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])
        s


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "label", "" ), ( "maxValue", "I" ), ( "initialValue", "I" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ABCustomItem.jinit_3 JR.this [ (JR.local "label"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

