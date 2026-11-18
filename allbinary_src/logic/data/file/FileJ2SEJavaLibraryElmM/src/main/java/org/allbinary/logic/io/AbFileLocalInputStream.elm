module Org.Allbinary.Logic.Io.AbFileLocalInputStream exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.Logic.Io.File.AbFileNativeUtil as AbFileNativeUtil


jclass : String
jclass =
    "AbFileLocalInputStream"


jchain : List String
jchain =
    [ "AbFileLocalInputStream" ]
        ++ AbFileInputStream.jchain


jfields : List ( String, JR.JValue )
jfields =
    AbFileInputStream.jfields ++ []


jvtable =
    JR.vtable
        []
        AbFileInputStream.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbFileLocalInputStream"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AbFileInputStream.jinit_1 JR.this [ (JR.invoke "getPath_0" (JR.callStatic AbFileNativeUtil.jm_get_1 [ (JR.local "file") ]) []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

