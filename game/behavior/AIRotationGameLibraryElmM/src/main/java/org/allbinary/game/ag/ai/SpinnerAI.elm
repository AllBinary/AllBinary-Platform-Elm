module Org.Allbinary.Game.Ag.Ai.SpinnerAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Javax.Microedition.Lcdui.Canvas as Canvas


jclass : String
jclass =
    "SpinnerAI"


jchain : List String
jchain =
    [ "SpinnerAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "isEven", JR.defaultOf "Z" ), ( "direction", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpinnerAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "direction", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "direction" "" JR.this (JR.local "direction")) ]) ])
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
                    JR.ifElse (JR.thisField "isEven") (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ (JR.aget (JR.thisField "direction") (JR.int 0)) ]), 
                        JR.exec (JR.setField "isEven" "Z" JR.this (JR.bool False)) ]) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM1 ]), 
                        JR.exec (JR.setField "isEven" "Z" JR.this (JR.bool True)) ]) ])
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

