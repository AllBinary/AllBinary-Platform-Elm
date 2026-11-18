module Org.Allbinary.Game.Paint.Help.UpdateMyFontProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint.help
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "UpdateMyFontProperties"


jchain : List String
jchain =
    [ "UpdateMyFontProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "actionStringArray", JR.defaultOf "" ), ( "keymappingBeginWidthArray", JR.defaultOf "" ), ( "actionStringDeltaXArray", JR.defaultOf "" ), ( "inputDeltaXArray", JR.defaultOf "" ), ( "sepArray", JR.defaultOf "" ), ( "sepWidthArray", JR.defaultOf "" ), ( "charHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UpdateMyFontProperties"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "actionStringArray" "" JR.this (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "keymappingBeginWidthArray" "" JR.this (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "actionStringDeltaXArray" "" JR.this (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "inputDeltaXArray" "" JR.this (JR.field "NULL_INT_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "sepArray" "" JR.this (JR.field "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "sepWidthArray" "" JR.this (JR.field "NULL_INT_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

