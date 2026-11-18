module Org.Allbinary.Media.Audio.NullJ2SEControl exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR



jclass : String
jclass =
    "NullJ2SEControl"


jchain : List String
jchain =
    [ "NullJ2SEControl" ]
        ++ [ "Control" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullJ2SEControl"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "type", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "Control.jinit_1") JR.this [ (JR.local "type") ]),
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

