module Org.Allbinary.Game.GameTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Game.GameType as GameType
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameTypeFactory"


jchain : List String
jchain =
    [ "GameTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NULL_GAME_TYPE_ARRAY", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "SINGLE_PLAYER", JR.defaultOf "" ), ( "MULTI_PLAYER", JR.defaultOf "" ), ( "BOT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NULL_GAME_TYPE_ARRAY" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                JR.exec (JR.setField "NONE" "" JR.this (JR.new GameType.jnew_1 [ (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "SINGLE_PLAYER" "" JR.this (JR.new GameType.jnew_1 [ (JR.str "Single Player") ])),
                JR.exec (JR.setField "MULTI_PLAYER" "" JR.this (JR.new GameType.jnew_1 [ (JR.str "Multi Player") ])),
                JR.exec (JR.setField "BOT" "" JR.this (JR.new GameType.jnew_1 [ (JR.str "Artificial Player") ])),
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
                    JR.return jstatic_instance ])
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

