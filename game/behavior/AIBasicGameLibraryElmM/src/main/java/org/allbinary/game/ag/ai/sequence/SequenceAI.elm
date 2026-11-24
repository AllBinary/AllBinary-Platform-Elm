module Org.Allbinary.Game.Ag.Ai.Sequence.SequenceAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.sequence
-}

import JR
import Org.Allbinary.Game.Ag.Ai.ArrayAI as ArrayAI
import Org.Allbinary.Ai.ArtificialIntelligence as ArtificialIntelligence
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "SequenceAI"


jchain : List String
jchain =
    [ "SequenceAI" ]
        ++ ArrayAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    ArrayAI.jfields ++ [ ( "index", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "next_0", jm_next_0 )
        , ( "getIndex_0", jm_getIndex_0 )
        , ( "setIndex_1", jm_setIndex_1 )
        , ( "getSelectedArtificialIntelligenceInterface_0", jm_getSelectedArtificialIntelligenceInterface_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "toString_0", jm_toString_0 ) ]
        ArrayAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SequenceAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_next_0", jm_next_0 ), ( "jm_getIndex_0", jm_getIndex_0 ), ( "jm_setIndex_1", jm_setIndex_1 ), ( "jm_getSelectedArtificialIntelligenceInterface_0", jm_getSelectedArtificialIntelligenceInterface_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_SEQUENCE_AI", jstatic_SEQUENCE_AI ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SEQUENCE_AI : JR.M
jstatic_SEQUENCE_AI s =
    JR.static "SequenceAI" jclinit "SEQUENCE_AI"
        (JR.str "Sequence AI")
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "artificialIntelligenceInterfaceArray", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ArrayAI.jinit_3 JR.this [ (JR.local "artificialIntelligenceInterfaceArray"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                identity ])
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
                    JR.exec (JR.invoke "processAI_1" (JR.aget (JR.invoke "getArtificialIntelligenceInterface_0" JR.this []) (JR.thisField "index")) [ (JR.local "allBinaryLayerManager") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_next_0 : JR.Method
jm_next_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "index") (\jwN68837 -> (JR.setField "index" "I" JR.this (JR.lit jwN68837))) JR.increment), 
                    JR.declare "artificialIntelligenceInterface" "" (JR.invoke "getSelectedArtificialIntelligenceInterface_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getId_0" (JR.local "artificialIntelligenceInterface") []) ArtificialIntelligence.jstatic_AI_ID) (JR.run [ 
                        JR.declare "artificialIntelligenceTransitionInterface" "" (JR.local "artificialIntelligenceInterface"), 
                        JR.exec (JR.invoke "transition_0" (JR.local "artificialIntelligenceTransitionInterface") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getIndex_0 : JR.Method
jm_getIndex_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "index") ])
        (jregister jheap)
        jthis
        jargs


jm_setIndex_1 : JR.Method
jm_setIndex_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "index" "I" JR.this (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedArtificialIntelligenceInterface_0 : JR.Method
jm_getSelectedArtificialIntelligenceInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.invoke "getArtificialIntelligenceInterface_0" JR.this []) (JR.thisField "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SEQUENCE_AI ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callVia ArrayAI.jvtable "toString_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Selected AI: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getSelectedArtificialIntelligenceInterface_0" JR.this []) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

