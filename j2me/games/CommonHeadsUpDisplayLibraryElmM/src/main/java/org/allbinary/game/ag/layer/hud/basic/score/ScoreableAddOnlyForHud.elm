module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Score.ScoreableAddOnlyForHud exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.score
-}

import JR
import Org.Allbinary.Game.Score.Scoreable as Scoreable


jclass : String
jclass =
    "ScoreableAddOnlyForHud"


jchain : List String
jchain =
    [ "ScoreableAddOnlyForHud" ]
        ++ Scoreable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Scoreable.jfields ++ [ ( "scoreHudWidget", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "removePoints_1", jm_removePoints_1 )
        , ( "addPoints_1", jm_addPoints_1 )
        , ( "getScoreHudWidget_0", jm_getScoreHudWidget_0 ) ]
        Scoreable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScoreableAddOnlyForHud"
        [ ( "jm_removePoints_1", jm_removePoints_1 ), ( "jm_addPoints_1", jm_addPoints_1 ), ( "jm_getScoreHudWidget_0", jm_getScoreHudWidget_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "scoreVectorGraphic", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Scoreable.jinit_1 JR.this [ (JR.int 0) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "scoreHudWidget" "" JR.this (JR.local "scoreVectorGraphic")), 
                    JR.exec (JR.invoke "set_1" (JR.invoke "getScoreHudWidget_0" JR.this []) [ (JR.int 0) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_removePoints_1 : JR.Method
jm_removePoints_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_addPoints_1 : JR.Method
jm_addPoints_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Scoreable.jvtable "addPoints_1" JR.this [ (JR.local "points") ]), 
                    JR.exec (JR.invoke "add_1" (JR.invoke "getScoreHudWidget_0" JR.this []) [ (JR.local "points") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getScoreHudWidget_0 : JR.Method
jm_getScoreHudWidget_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "scoreHudWidget") ])
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

