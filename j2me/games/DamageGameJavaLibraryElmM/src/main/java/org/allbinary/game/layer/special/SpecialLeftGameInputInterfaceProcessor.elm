module Org.Allbinary.Game.Layer.Special.SpecialLeftGameInputInterfaceProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Layer.Special.SpecialGameInputInterfaceProcessor as SpecialGameInputInterfaceProcessor


jclass : String
jclass =
    "SpecialLeftGameInputInterfaceProcessor"


jchain : List String
jchain =
    [ "SpecialLeftGameInputInterfaceProcessor" ]
        ++ SpecialGameInputInterfaceProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    SpecialGameInputInterfaceProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processEvent_2", jm_processEvent_2 ) ]
        SpecialGameInputInterfaceProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialLeftGameInputInterfaceProcessor"
        [ ( "jm_processEvent_2", jm_processEvent_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SpecialGameInputInterfaceProcessor.jinit_1 JR.this [ (JR.local "collidableDestroyableDamageableLayer") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_processEvent_2 : JR.Method
jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "left_0" (JR.thisField "specialGameInputInterface") []) ])
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

