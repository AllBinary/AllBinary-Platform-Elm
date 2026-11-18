module Org.Allbinary.Game.Input.GameKeyMappingFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "GameKeyMappingFactory"


jchain : List String
jchain =
    [ "GameKeyMappingFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "intKeyToGameKey", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getGameKey_1", jm_getGameKey_1 )
        , ( "setGameKey_1", jm_setGameKey_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyMappingFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getGameKey_1", jm_getGameKey_1 ), ( "jm_setGameKey_1", jm_setGameKey_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameKeyMappingFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "intKeyToGameKey" "" JR.this (JR.newArray "" [ (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])) ])),
                identity,
                (JR.run [ 
                    JR.declare "gameKeyFactory" "" (JR.callStatic GameKeyFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "NONE" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "UP" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "DOWN" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "LEFT" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "RIGHT" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_POUND" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_STAR" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM0" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM2" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM3" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM4" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM5" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM6" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM8" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "GAME_A" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "GAME_B" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "GAME_C" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "GAME_D" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "FIRE" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "LEVEL_DOWN" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.field "LEVEL_UP" (JR.local "gameKeyFactory")) ]) ]) ])
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
                        JR.exec (JR.setStatic "GameKeyMappingFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getGameKey_1 : JR.Method
jm_getGameKey_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "intKeyToGameKey") (JR.local "key")) ])
        (jregister jheap)
        jthis
        jargs


jm_setGameKey_1 : JR.Method
jm_setGameKey_1 jheap jthis jargs =
    JR.method [ ( "gameKey", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "intKeyToGameKey") (\jaN67610 -> JR.andThen (JR.invoke "getId_0" (JR.local "gameKey") []) (\jiN67610 -> (JR.aset (JR.lit jaN67610) (JR.lit jiN67610) (JR.local "gameKey"))))) ])
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

