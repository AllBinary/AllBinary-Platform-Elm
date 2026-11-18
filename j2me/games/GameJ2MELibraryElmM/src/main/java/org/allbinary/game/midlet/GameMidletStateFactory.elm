module Org.Allbinary.Game.Midlet.GameMidletStateFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Game.State.GameStateFactory as GameStateFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameMidletStateFactory"


jchain : List String
jchain =
    [ "GameMidletStateFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "currentGameState", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getCurrentGameState_0", jm_getCurrentGameState_0 )
        , ( "setCurrentGameState_1", jm_setCurrentGameState_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameMidletStateFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getCurrentGameState_0", jm_getCurrentGameState_0 ), ( "jm_setCurrentGameState_1", jm_setCurrentGameState_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_INSTANCE", jstatic_INSTANCE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INSTANCE : JR.M
jstatic_INSTANCE s =
    JR.static "GameMidletStateFactory" jclinit "INSTANCE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "currentGameState" "" JR.this (JR.field "NO_GAME_STATE" (JR.callStatic GameStateFactory.jm_getInstance_0 []))),
                identity,
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
                    JR.return jstatic_INSTANCE ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentGameState_0 : JR.Method
jm_getCurrentGameState_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "currentGameState") ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentGameState_1 : JR.Method
jm_setCurrentGameState_1 jheap jthis jargs =
    JR.method [ ( "currentGameState", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "CURRENT" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.str " GameState: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "currentGameState") ]) ]) []), JR.this, (JR.str "setCurrentGameState") ]), 
                    JR.exec (JR.setField "currentGameState" "" JR.this (JR.local "currentGameState")) ])
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

