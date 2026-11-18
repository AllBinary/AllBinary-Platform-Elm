module Org.Allbinary.Game.Input.InputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameInputStrings as GameInputStrings


jclass : String
jclass =
    "InputProcessor"


jchain : List String
jchain =
    [ "InputProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "gameInputStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyReleasedByDevice_3", jm_keyReleasedByDevice_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputProcessor"
        [ ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyReleasedByDevice_3", jm_keyReleasedByDevice_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "gameInputStrings" "" JR.this (JR.callStatic GameInputStrings.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_keyPressedByDevice_2 : JR.Method
jm_keyPressedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_3 : JR.Method
jm_keyReleasedByDevice_3 jheap jthis jargs =
    JR.method [ ( "canvas", "" ), ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        identity
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

