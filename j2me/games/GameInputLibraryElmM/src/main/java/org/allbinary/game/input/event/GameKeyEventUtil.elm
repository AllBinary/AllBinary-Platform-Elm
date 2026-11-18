module Org.Allbinary.Game.Input.Event.GameKeyEventUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR



jclass : String
jclass =
    "GameKeyEventUtil"


jchain : List String
jchain =
    [ "GameKeyEventUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getKey_1", jm_getKey_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyEventUtil"
        [ ( "jm_getKey_1", jm_getKey_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_getKey_1 : JR.Method
jm_getKey_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "I"
        (JR.run [ 
                    JR.declare "gameKeyEvent" "" (JR.local "anyType"), 
                    JR.return (JR.invoke "getKey_0" (JR.local "gameKeyEvent") []) ])
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

