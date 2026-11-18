module Org.Allbinary.Logic.Io.AbDataOutputStream exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import JDataOutputStream


jclass : String
jclass =
    "AbDataOutputStream"


jchain : List String
jchain =
    [ "AbDataOutputStream" ]
        ++ JDataOutputStream.jchain


jfields : List ( String, JR.JValue )
jfields =
    JDataOutputStream.jfields ++ []


jvtable =
    JR.vtable
        []
        JDataOutputStream.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbDataOutputStream"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "out", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect JDataOutputStream.jinit_1 JR.this [ (JR.local "out") ]),
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

