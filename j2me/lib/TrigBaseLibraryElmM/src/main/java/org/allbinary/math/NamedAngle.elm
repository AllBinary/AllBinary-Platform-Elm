module NamedAngle exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import Angle


jclass : String
jclass =
    "NamedAngle"


jchain : List String
jchain =
    [ "NamedAngle" ]
        ++ Angle.jchain


jfields : List ( String, JR.JValue )
jfields =
    Angle.jfields ++ [ ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        []
        Angle.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NamedAngle"
        [ ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "angle", "S" ), ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Angle.jinit_1 JR.this [ (JR.local "angle") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ]) ])
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

