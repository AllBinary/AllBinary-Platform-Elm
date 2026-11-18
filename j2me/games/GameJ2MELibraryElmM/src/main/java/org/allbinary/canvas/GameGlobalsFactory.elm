module Org.Allbinary.Canvas.GameGlobalsFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR
import JInteger
import Org.Allbinary.Graphics.PointFactory as PointFactory


jclass : String
jclass =
    "GameGlobalsFactory"


jchain : List String
jchain =
    [ "GameGlobalsFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "newCanvas", JR.defaultOf "Z" ), ( "newDisplaybleTime", JR.defaultOf "J" ), ( "point", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameGlobalsFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameGlobalsFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "newCanvas" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "newDisplaybleTime" "J" JR.this (JR.cast "J" JInteger.jstatic_MIN_VALUE)),
                JR.exec (JR.setField "point" "" JR.this (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 []))),
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

