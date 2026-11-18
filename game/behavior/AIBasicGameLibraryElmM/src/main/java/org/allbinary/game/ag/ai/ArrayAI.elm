module Org.Allbinary.Game.Ag.Ai.ArrayAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI


jclass : String
jclass =
    "ArrayAI"


jchain : List String
jchain =
    [ "ArrayAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "artificialIntelligenceInterfaceArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "getArtificialIntelligenceInterface_0", jm_getArtificialIntelligenceInterface_0 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ArrayAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_getArtificialIntelligenceInterface_0", jm_getArtificialIntelligenceInterface_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "artificialIntelligenceInterface", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "artificialIntelligenceInterfaceArray" "" JR.this (JR.local "artificialIntelligenceInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "artificialIntelligenceInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68413 -> (JR.setLocal "index" "I" (JR.lit jwN68413))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "processAI_1" (JR.aget (JR.thisField "artificialIntelligenceInterfaceArray") (JR.local "index")) [ (JR.local "allBinaryLayerManager") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getArtificialIntelligenceInterface_0 : JR.Method
jm_getArtificialIntelligenceInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "artificialIntelligenceInterfaceArray") ])
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

