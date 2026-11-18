module Org.Allbinary.Input.Motion.Button.TouchButtonResource exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR



jclass : String
jclass =
    "TouchButtonResource"


jchain : List String
jchain =
    [ "TouchButtonResource" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "RESOURCE", JR.defaultOf "" ), ( "HINT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonResource"
        [ ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "hint", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "RESOURCE" "" JR.this (JR.local "resource")), 
                    JR.exec (JR.setField "HINT" "" JR.this (JR.local "hint")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

