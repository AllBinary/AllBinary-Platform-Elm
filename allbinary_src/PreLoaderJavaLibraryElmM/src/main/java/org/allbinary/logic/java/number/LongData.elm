module Org.Allbinary.Logic.Java.Number.LongData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.number
-}

import JR
import JLong


jclass : String
jclass =
    "LongData"


jchain : List String
jchain =
    [ "LongData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LongData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_MAX_LONG_LENGTH", jstatic_MAX_LONG_LENGTH ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAX_LONG_LENGTH : JR.M
jstatic_MAX_LONG_LENGTH s =
    JR.static "LongData" jclinit "MAX_LONG_LENGTH"
        (JR.invoke "length_0" (JR.invoke "toString_0" (JR.cast "J" JLong.jstatic_MAX_VALUE) []) [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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

