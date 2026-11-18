module Org.Allbinary.Game.Input.GameKeyFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.Game.Input.GameKey as GameKey
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "GameKeyFactory"


jchain : List String
jchain =
    [ "GameKeyFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NONE", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "KEY_POUND", JR.defaultOf "" ), ( "KEY_STAR", JR.defaultOf "" ), ( "KEY_NUM0", JR.defaultOf "" ), ( "KEY_NUM1", JR.defaultOf "" ), ( "KEY_NUM2", JR.defaultOf "" ), ( "KEY_NUM3", JR.defaultOf "" ), ( "KEY_NUM4", JR.defaultOf "" ), ( "KEY_NUM5", JR.defaultOf "" ), ( "KEY_NUM6", JR.defaultOf "" ), ( "KEY_NUM7", JR.defaultOf "" ), ( "KEY_NUM8", JR.defaultOf "" ), ( "KEY_NUM9", JR.defaultOf "" ), ( "GAME_A", JR.defaultOf "" ), ( "GAME_B", JR.defaultOf "" ), ( "GAME_C", JR.defaultOf "" ), ( "GAME_D", JR.defaultOf "" ), ( "FIRE", JR.defaultOf "" ), ( "LEVEL_DOWN", JR.defaultOf "" ), ( "LEVEL_UP", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameKeyFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NONE" "" JR.this (JR.new GameKey.jnew_2 [ (JR.map2 JR.sub (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])) (JR.int 1)), (JR.str "None") ])),
                JR.exec (JR.setField "UP" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_UP, (JR.field "UP" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "DOWN" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_DOWN, (JR.field "DOWN" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "LEFT" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_LEFT, (JR.field "LEFT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "RIGHT" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_RIGHT, (JR.field "RIGHT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_POUND" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_POUND, (JR.str "POUND") ])),
                JR.exec (JR.setField "KEY_STAR" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_STAR, (JR.str "STAR") ])),
                JR.exec (JR.setField "KEY_NUM0" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM0, (JR.field "ZERO" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM1" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM1, (JR.field "ONE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM2" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM2, (JR.field "TWO" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM3" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM3, (JR.field "THREE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM4" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM4, (JR.field "FOUR" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM5" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM5, (JR.field "FIVE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM6" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM6, (JR.field "SIX" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM7" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM7, (JR.field "SEVEN" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM8" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM8, (JR.field "EIGHT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "KEY_NUM9" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_KEY_NUM9, (JR.field "NINE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "GAME_A" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_GAME_A, (JR.str "Game A") ])),
                JR.exec (JR.setField "GAME_B" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_GAME_B, (JR.str "Game B") ])),
                JR.exec (JR.setField "GAME_C" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_GAME_C, (JR.str "Game C") ])),
                JR.exec (JR.setField "GAME_D" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_GAME_D, (JR.str "Game D") ])),
                JR.exec (JR.setField "FIRE" "" JR.this (JR.new GameKey.jnew_2 [ Canvas.jstatic_FIRE, (JR.field "FIRE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "LEVEL_DOWN" "" JR.this (JR.new GameKey.jnew_2 [ (JR.plus Canvas.jstatic_KEY_NUM9 (JR.int 1)), (JR.str "Cheat Level Up") ])),
                JR.exec (JR.setField "LEVEL_UP" "" JR.this (JR.new GameKey.jnew_2 [ (JR.plus Canvas.jstatic_KEY_NUM9 (JR.int 2)), (JR.str "Cheat Level Down") ])),
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "GameKeyFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
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

