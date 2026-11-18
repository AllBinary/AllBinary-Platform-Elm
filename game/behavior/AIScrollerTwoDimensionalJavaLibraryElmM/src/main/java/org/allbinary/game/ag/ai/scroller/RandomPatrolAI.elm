module Org.Allbinary.Game.Ag.Ai.Scroller.RandomPatrolAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Game.Ag.Ai.Scroller.BasePatrolAI as BasePatrolAI
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory


jclass : String
jclass =
    "RandomPatrolAI"


jchain : List String
jchain =
    [ "RandomPatrolAI" ]
        ++ BasePatrolAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasePatrolAI.jfields ++ [ ( "changedDirection", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "updateRandomDistance_0", jm_updateRandomDistance_0 )
        , ( "processAI_1", jm_processAI_1 )
        , ( "nextDirection_0", jm_nextDirection_0 ) ]
        BasePatrolAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RandomPatrolAI"
        [ ( "jm_updateRandomDistance_0", jm_updateRandomDistance_0 ), ( "jm_processAI_1", jm_processAI_1 ), ( "jm_nextDirection_0", jm_nextDirection_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasePatrolAI.jinit_3 JR.this [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "changedDirection" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "updateRandomDistance_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_updateRandomDistance_0 : JR.Method
jm_updateRandomDistance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentDistance" "I" JR.this (JR.invoke "getAbsoluteNextInt_1" (JR.callStatic MyRandomFactory.jm_getInstance_0 []) [ (JR.invoke "intValue_0" (JR.thisField "maxDistance") []) ])) ])
        (jregister jheap)
        jthis
        jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasePatrolAI.jvtable "update_0" JR.this []), 
                    JR.exec (JR.callVia BasePatrolAI.jvtable "processKeyAI_1" JR.this [ (JR.thisField "keyDirection") ]), 
                    JR.ifElse (JR.thisField "changedDirection") (JR.run [ 
                        JR.exec (JR.callVia BasePatrolAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM1 ]), 
                        JR.exec (JR.invoke "updateRandomDistance_0" JR.this []), 
                        JR.exec (JR.setField "changedDirection" "Z" JR.this (JR.bool False)) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_nextDirection_0 : JR.Method
jm_nextDirection_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasePatrolAI.jvtable "nextDirection_0" JR.this []), 
                    JR.exec (JR.setField "changedDirection" "Z" JR.this (JR.bool True)) ])
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

