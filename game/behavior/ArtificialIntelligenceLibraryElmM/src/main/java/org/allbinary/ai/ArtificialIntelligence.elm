module Org.Allbinary.Ai.ArtificialIntelligence exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.ai
-}

import JR
import Org.Allbinary.Ai.ArtificialIntelligenceInterface as ArtificialIntelligenceInterface


jclass : String
jclass =
    "ArtificialIntelligence"


jchain : List String
jchain =
    [ "ArtificialIntelligence" ]
        ++ ArtificialIntelligenceInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "processAI_1", jm_processAI_1 )
        , ( "getId_0", jm_getId_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ArtificialIntelligence"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_processAI_1", jm_processAI_1 ), ( "jm_getId_0", jm_getId_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_AI_ID", jstatic_AI_ID ), ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_AI_ID : JR.M
jstatic_AI_ID s =
    JR.static "ArtificialIntelligence" jclinit "AI_ID"
        (JR.int 2)
        s


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ArtificialIntelligence" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 1) ])
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

