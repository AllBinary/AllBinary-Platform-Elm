module Org.Allbinary.Graphics.Font.UpdateMyFontProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.font
-}

import JR
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor


jclass : String
jclass =
    "UpdateMyFontProcessor"


jchain : List String
jchain =
    [ "UpdateMyFontProcessor" ]
        ++ MyFontProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    MyFontProcessor.jfields ++ [ ( "updateMeasurementProcessor", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_1", jm_process_1 ) ]
        MyFontProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UpdateMyFontProcessor"
        [ ( "jm_process_1", jm_process_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "keyValueDrawCharArray", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect MyFontProcessor.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "updateMeasurementProcessor" "" JR.this (JR.local "keyValueDrawCharArray")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateMeasurement_1" (JR.thisField "updateMeasurementProcessor") [ (JR.local "graphics") ]) ])
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

