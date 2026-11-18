module Org.Allbinary.Game.Configuration.Feature.SensorFeature exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.Feature as Feature


jclass : String
jclass =
    "SensorFeature"


jchain : List String
jchain =
    [ "SensorFeature" ]
        ++ Feature.jchain


jfields : List ( String, JR.JValue )
jfields =
    Feature.jfields ++ []


jvtable =
    JR.vtable
        []
        Feature.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SensorFeature"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Feature.jinit_1 JR.this [ (JR.local "name") ]),
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

