module Org.Allbinary.Graphics.Form.Item.SelectableTextItem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABTextItem as ABTextItem


jclass : String
jclass =
    "SelectableTextItem"


jchain : List String
jchain =
    [ "SelectableTextItem" ]
        ++ ABTextItem.jchain


jfields : List ( String, JR.JValue )
jfields =
    ABTextItem.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isFocusable_0", jm_isFocusable_0 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        ABTextItem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SelectableTextItem"
        [ ( "jm_isFocusable_0", jm_isFocusable_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "label", "" ), ( "layout", "I" ), ( "altText", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ABTextItem.jinit_5 JR.this [ (JR.local "label"), (JR.local "layout"), (JR.local "altText"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_isFocusable_0 : JR.Method
jm_isFocusable_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "stringComponent" "" (JR.invoke "getLabelStringComponent_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "stringComponent") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.invoke "getForegroundBasicColor_0" (JR.local "stringComponent") []) []) ]) ]) identity, 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.invoke "getLabel_0" JR.this []), (JR.map2 JR.add (JR.local "x") (JR.int 2)), (JR.local "y"), (JR.int 0) ]) ])
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

