module Org.Allbinary.Graphics.Draw.KeyValueDrawString exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.draw
-}

import JR
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "KeyValueDrawString"


jchain : List String
jchain =
    [ "KeyValueDrawString" ]
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "myFontProcessor", JR.defaultOf "" ), ( "LABEL", JR.defaultOf "" ), ( "labelX", JR.defaultOf "I" ), ( "valueX", JR.defaultOf "I" ), ( "value", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "paint_2", jm_paint_2 )
        , ( "update_1", jm_update_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeyValueDrawString"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_paint_2", jm_paint_2 ), ( "jm_update_1", jm_update_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "label", "" ), ( "x", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "value" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "LABEL" "" JR.this (JR.local "label")), 
                    JR.exec (JR.setField "labelX" "I" JR.this (JR.local "x")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "labelWidth" "I" (JR.map2 JR.sub (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.thisField "LABEL") ]) (JR.invoke "length_0" (JR.thisField "LABEL") [])), 
                    JR.exec (JR.setField "valueX" "I" JR.this (JR.map2 JR.add (JR.local "labelWidth") (JR.thisField "labelX"))), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_2 : JR.Method
jm_paint_2 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "LABEL"), (JR.thisField "labelX"), (JR.local "y"), (JR.int 0) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "value"), (JR.thisField "valueX"), (JR.local "y"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "value" "" JR.this (JR.local "value")) ])
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

