module Org.Allbinary.Game.Displayable.Canvas.EndGameInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "EndGameInfo"


jchain : List String
jchain =
    [ "EndGameInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NORMAL_GAME_OVER_WIN", JR.defaultOf "" ), ( "TEASER_DEMO_GAME_END_LAST_LEVEL", JR.defaultOf "" ), ( "TEASER_DEMO_GAME_END", JR.defaultOf "" ), ( "gameOverStr", JR.defaultOf "" ), ( "winStr", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_2", jm_update_2 )
        , ( "getGameOverStr_0", jm_getGameOverStr_0 )
        , ( "setGameOverStr_1", jm_setGameOverStr_1 )
        , ( "getWinStr_0", jm_getWinStr_0 )
        , ( "setWinStr_1", jm_setWinStr_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EndGameInfo"
        [ ( "jm_update_2", jm_update_2 ), ( "jm_getGameOverStr_0", jm_getGameOverStr_0 ), ( "jm_setGameOverStr_1", jm_setGameOverStr_1 ), ( "jm_getWinStr_0", jm_getWinStr_0 ), ( "jm_setWinStr_1", jm_setWinStr_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NORMAL_GAME_OVER_WIN" "" JR.this (JR.str "You Won")),
                JR.exec (JR.setField "TEASER_DEMO_GAME_END_LAST_LEVEL" "" JR.this (JR.str "End of Demo.")),
                JR.exec (JR.setField "TEASER_DEMO_GAME_END" "" JR.this (JR.str "Demo Game Over.")),
                JR.exec (JR.setField "gameOverStr" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "winStr" "" JR.this (JR.thisField "gameOverStr")),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_update_2 : JR.Method
jm_update_2 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ), ( "myCanvas", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isLastLevel_0" (JR.local "gameInfo") []) (JR.run [ 
                        JR.exec (JR.invoke "setWinStr_1" JR.this [ (JR.thisField "TEASER_DEMO_GAME_END_LAST_LEVEL") ]), 
                        JR.exec (JR.invoke "setGameOverStr_1" JR.this [ (JR.thisField "TEASER_DEMO_GAME_END_LAST_LEVEL") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setWinStr_1" JR.this [ (JR.thisField "NORMAL_GAME_OVER_WIN") ]), 
                        JR.exec (JR.invoke "setGameOverStr_1" JR.this [ (JR.thisField "TEASER_DEMO_GAME_END") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameOverStr_0 : JR.Method
jm_getGameOverStr_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameOverStr") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameOverStr_1 : JR.Method
jm_setGameOverStr_1 jheap jthis jargs =
    JR.method [ ( "gameOverStr", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameOverStr" "" JR.this (JR.local "gameOverStr")) ])
        (jregister jheap)
        jthis
        jargs


jm_getWinStr_0 : JR.Method
jm_getWinStr_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "winStr") ])
        (jregister jheap)
        jthis
        jargs


jm_setWinStr_1 : JR.Method
jm_setWinStr_1 jheap jthis jargs =
    JR.method [ ( "winStr", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "winStr" "" JR.this (JR.local "winStr")) ])
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

