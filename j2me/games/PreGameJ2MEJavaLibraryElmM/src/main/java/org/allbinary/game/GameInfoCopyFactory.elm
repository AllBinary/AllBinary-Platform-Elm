module Org.Allbinary.Game.GameInfoCopyFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Game.GameInfo as GameInfo


jclass : String
jclass =
    "GameInfoCopyFactory"


jchain : List String
jchain =
    [ "GameInfoCopyFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstanceMaxLevel_2", jm_getInstanceMaxLevel_2 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInfoCopyFactory"
        [ ( "jm_getInstanceMaxLevel_2", jm_getInstanceMaxLevel_2 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstanceMaxLevel_2 : JR.Method
jm_getInstanceMaxLevel_2 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ), ( "maxLevel", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new GameInfo.jnew_5 [ (JR.invoke "getGameType_0" (JR.local "gameInfo") []), (JR.invoke "getGameMode_0" (JR.local "gameInfo") []), (JR.invoke "getPlayerType_0" (JR.local "gameInfo") []), (JR.local "maxLevel"), (JR.invoke "getCurrentLevel_0" (JR.local "gameInfo") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new GameInfo.jnew_5 [ (JR.invoke "getGameType_0" (JR.local "gameInfo") []), (JR.invoke "getGameMode_0" (JR.local "gameInfo") []), (JR.invoke "getPlayerType_0" (JR.local "gameInfo") []), (JR.invoke "getHighestLevel_0" (JR.local "gameInfo") []), (JR.invoke "getCurrentLevel_0" (JR.local "gameInfo") []) ]) ])
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

