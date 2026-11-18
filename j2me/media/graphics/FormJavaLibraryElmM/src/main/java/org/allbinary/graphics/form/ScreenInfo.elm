module Org.Allbinary.Graphics.Form.ScreenInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR



jclass : String
jclass =
    "ScreenInfo"


jchain : List String
jchain =
    [ "ScreenInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SMALL_WIDTH", JR.defaultOf "I" ), ( "SMALL_HEIGHT", JR.defaultOf "I" ), ( "MEDIUM_WIDTH", JR.defaultOf "I" ), ( "MEDIUM_HEIGHT", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScreenInfo"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ScreenInfo" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SMALL_WIDTH" "I" JR.this (JR.int 320)),
                JR.exec (JR.setField "SMALL_HEIGHT" "I" JR.this (JR.int 240)),
                JR.exec (JR.setField "MEDIUM_WIDTH" "I" JR.this (JR.int 800)),
                JR.exec (JR.setField "MEDIUM_HEIGHT" "I" JR.this (JR.int 600)),
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

