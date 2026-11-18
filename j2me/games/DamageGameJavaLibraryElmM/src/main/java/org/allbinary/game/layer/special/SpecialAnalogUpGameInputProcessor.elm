module Org.Allbinary.Game.Layer.Special.SpecialAnalogUpGameInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Layer.Special.SpecialGameInputProcessor as SpecialGameInputProcessor


jclass : String
jclass =
    "SpecialAnalogUpGameInputProcessor"


jchain : List String
jchain =
    [ "SpecialAnalogUpGameInputProcessor" ]
        ++ SpecialGameInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    SpecialGameInputProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processAnalog_3", jm_processAnalog_3 ) ]
        SpecialGameInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialAnalogUpGameInputProcessor"
        [ ( "jm_processAnalog_3", jm_processAnalog_3 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SpecialGameInputProcessor.jinit_1 JR.this [ (JR.local "collidableDestroyableDamageableLayer") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_processAnalog_3 : JR.Method
jm_processAnalog_3 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ), ( "yAnalogValue", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "upAnalog_1" (JR.thisField "collidableDestroyableDamageableLayer") [ (JR.local "yAnalogValue") ]) ])
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

