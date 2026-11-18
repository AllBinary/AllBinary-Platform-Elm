module Org.Allbinary.Game.Input.Mapping.GameInputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.mapping
-}

import JR
import Org.Allbinary.Game.Input.GameKey as GameKey
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameInputMapping"


jchain : List String
jchain =
    [ "GameInputMapping" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "gameKey", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setGameKey_1", jm_setGameKey_1 )
        , ( "getGameKey_0", jm_getGameKey_0 )
        , ( "setName_1", jm_setName_1 )
        , ( "getName_0", jm_getName_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputMapping"
        [ ( "jm_setGameKey_1", jm_setGameKey_1 ), ( "jm_getGameKey_0", jm_getGameKey_0 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "gameKey", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "gameKey" "" JR.this GameKey.jstatic_NULL_GAME_KEY),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setName_1" JR.this [ (JR.local "name") ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.local "gameKey") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_setGameKey_1 : JR.Method
jm_setGameKey_1 jheap jthis jargs =
    JR.method [ ( "gameKey", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameKey" "" JR.this (JR.local "gameKey")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameKey_0 : JR.Method
jm_getGameKey_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameKey") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
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

