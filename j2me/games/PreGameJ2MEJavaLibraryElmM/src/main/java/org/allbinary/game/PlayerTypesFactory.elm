module Org.Allbinary.Game.PlayerTypesFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Game.PlayerType as PlayerType


jclass : String
jclass =
    "PlayerTypesFactory"


jchain : List String
jchain =
    [ "PlayerTypesFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PLAYER_TYPE_ONE", JR.defaultOf "" ), ( "PLAYER_TYPE_TWO", JR.defaultOf "" ), ( "PLAYER_TYPE_THREE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerTypesFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "PlayerTypesFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PLAYER_TYPE_ONE" "" JR.this (JR.new PlayerType.jnew_2 [ (JR.str "Player Type One"), (JR.int 0) ])),
                JR.exec (JR.setField "PLAYER_TYPE_TWO" "" JR.this (JR.new PlayerType.jnew_2 [ (JR.str "Player Type Two"), (JR.int 1) ])),
                JR.exec (JR.setField "PLAYER_TYPE_THREE" "" JR.this (JR.new PlayerType.jnew_2 [ (JR.str "Player Type Three"), (JR.int 2) ])),
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

