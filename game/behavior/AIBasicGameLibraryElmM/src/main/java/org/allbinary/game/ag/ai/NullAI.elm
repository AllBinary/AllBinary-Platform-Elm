module Org.Allbinary.Game.Ag.Ai.NullAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Ai.ArtificialIntelligence as ArtificialIntelligence


jclass : String
jclass =
    "NullAI"


jchain : List String
jchain =
    [ "NullAI" ]
        ++ ArtificialIntelligence.jchain


jfields : List ( String, JR.JValue )
jfields =
    ArtificialIntelligence.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        ArtificialIntelligence.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect ArtificialIntelligence.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
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

