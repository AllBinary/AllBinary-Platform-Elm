module ABHashtable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import JHashtable


jclass : String
jclass =
    "ABHashtable"


jchain : List String
jchain =
    [ "ABHashtable" ]
        ++ JHashtable.jchain


jfields : List ( String, JR.JValue )
jfields =
    JHashtable.jfields ++ []


jvtable =
    JR.vtable
        []
        JHashtable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABHashtable"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "initialCapacity", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect JHashtable.jinit_1 JR.this [ (JR.local "initialCapacity") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect JHashtable.jinit_0 JR.this []),
                identity,
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

