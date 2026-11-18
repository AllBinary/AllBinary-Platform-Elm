module Org.Allbinary.Graphics.ItemColorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR



jclass : String
jclass =
    "ItemColorFactory"


jchain : List String
jchain =
    [ "ItemColorFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INVERT_PAINT", JR.defaultOf "I" ), ( "PAINT", JR.defaultOf "I" ), ( "TEXT_FIELD_NO_FOCUS", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ItemColorFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ItemColorFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "INVERT_PAINT" "I" JR.this (JR.int (JR.i32 0xFF000000))),
                JR.exec (JR.setField "PAINT" "I" JR.this (JR.int (JR.i32 0xFFe07718))),
                JR.exec (JR.setField "TEXT_FIELD_NO_FOCUS" "I" JR.this (JR.int (JR.i32 0x7F7F7F))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
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

