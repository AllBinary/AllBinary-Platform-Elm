module Org.Allbinary.Graphics.Form.Item.CommandTextItem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABTextItem as ABTextItem


jclass : String
jclass =
    "CommandTextItem"


jchain : List String
jchain =
    [ "CommandTextItem" ]
        ++ ABTextItem.jchain


jfields : List ( String, JR.JValue )
jfields =
    ABTextItem.jfields ++ [ ( "command", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "isFocusable_0", jm_isFocusable_0 )
        , ( "getCommand_0", jm_getCommand_0 ) ]
        ABTextItem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommandTextItem"
        [ ( "jm_isFocusable_0", jm_isFocusable_0 ), ( "jm_getCommand_0", jm_getCommand_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "command", "" ), ( "layout", "I" ), ( "altText", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ABTextItem.jinit_5 JR.this [ (JR.invoke "getLabel_0" (JR.local "command") []), (JR.local "layout"), (JR.local "altText"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "command" "" JR.this (JR.local "command")) ]) ])
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


jm_getCommand_0 : JR.Method
jm_getCommand_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "command") ])
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

