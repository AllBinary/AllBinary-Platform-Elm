module Org.Allbinary.Game.BasicHighScoresGameInfoFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Game.GameInfo as GameInfo
import Org.Allbinary.Game.GameMode as GameMode
import Org.Allbinary.Game.GameTypeFactory as GameTypeFactory
import Org.Allbinary.Game.PlayerTypesFactory as PlayerTypesFactory


jclass : String
jclass =
    "BasicHighScoresGameInfoFactory"


jchain : List String
jchain =
    [ "BasicHighScoresGameInfoFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "MULTI_PLAYER_SERVER", JR.defaultOf "" ), ( "SINGLE_PLAYER_SERVER", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicHighScoresGameInfoFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "BasicHighScoresGameInfoFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "MULTI_PLAYER_SERVER" "" JR.this (JR.new GameInfo.jnew_5 [ (JR.field "MULTI_PLAYER" (JR.callStatic GameTypeFactory.jm_getInstance_0 [])), GameMode.jstatic_SERVER, (JR.field "PLAYER_TYPE_ONE" (JR.callStatic PlayerTypesFactory.jm_getInstance_0 [])), (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "SINGLE_PLAYER_SERVER" "" JR.this (JR.new GameInfo.jnew_5 [ (JR.field "SINGLE_PLAYER" (JR.callStatic GameTypeFactory.jm_getInstance_0 [])), GameMode.jstatic_SERVER, (JR.field "PLAYER_TYPE_ONE" (JR.callStatic PlayerTypesFactory.jm_getInstance_0 [])), (JR.int 0), (JR.int 0) ])),
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
                    JR.return jstatic_SINGLETON ])
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

