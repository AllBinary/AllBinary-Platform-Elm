module Org.Allbinary.Game.Input.TestInputExample exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.TestInputInterface as TestInputInterface


jclass : String
jclass =
    "TestInputExample"


jchain : List String
jchain =
    [ "TestInputExample" ]
        ++ TestInputInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "testValue", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "up_0", jm_up_0 )
        , ( "down_0", jm_down_0 )
        , ( "left_0", jm_left_0 )
        , ( "right_0", jm_right_0 )
        , ( "strafeLeft_0", jm_strafeLeft_0 )
        , ( "strafeRight_0", jm_strafeRight_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TestInputExample"
        [ ( "jm_up_0", jm_up_0 ), ( "jm_down_0", jm_down_0 ), ( "jm_left_0", jm_left_0 ), ( "jm_right_0", jm_right_0 ), ( "jm_strafeLeft_0", jm_strafeLeft_0 ), ( "jm_strafeRight_0", jm_strafeRight_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_up_0 : JR.Method
jm_up_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_down_0 : JR.Method
jm_down_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_left_0 : JR.Method
jm_left_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "testValue") (\jwN65847 -> (JR.setField "testValue" "I" JR.this (JR.lit jwN65847))) JR.increment) ])
        (jregister jheap)
        jthis
        jargs


jm_right_0 : JR.Method
jm_right_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "testValue") (\jwN65903 -> (JR.setField "testValue" "I" JR.this (JR.lit jwN65903))) JR.decrement) ])
        (jregister jheap)
        jthis
        jargs


jm_strafeLeft_0 : JR.Method
jm_strafeLeft_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_strafeRight_0 : JR.Method
jm_strafeRight_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
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

