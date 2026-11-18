module Org.Allbinary.Media.Graphics.Geography.Pathfinding.MultipassState exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.graphics.geography.pathfinding
-}

import JR



jclass : String
jclass =
    "MultipassState"


jchain : List String
jchain =
    [ "MultipassState" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "step", JR.defaultOf "I" ), ( "iteration", JR.defaultOf "I" ), ( "iteration2", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultipassState"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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

