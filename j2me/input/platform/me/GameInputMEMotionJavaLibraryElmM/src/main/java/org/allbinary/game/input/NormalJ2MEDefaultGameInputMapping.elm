module Org.Allbinary.Game.Input.NormalJ2MEDefaultGameInputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Configuration.Persistance.GamePersistanceStrings as GamePersistanceStrings
import Org.Allbinary.Game.Input.Mapping.PersistentInputMapping as PersistentInputMapping


jclass : String
jclass =
    "NormalJ2MEDefaultGameInputMapping"


jchain : List String
jchain =
    [ "NormalJ2MEDefaultGameInputMapping" ]
        ++ PersistentInputMapping.jchain


jfields : List ( String, JR.JValue )
jfields =
    PersistentInputMapping.jfields ++ []


jvtable =
    JR.vtable
        []
        PersistentInputMapping.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NormalJ2MEDefaultGameInputMapping"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect PersistentInputMapping.jinit_1 JR.this [ (JR.field "DEFAULT_INPUT_MAPPING_RECORD_ID" (JR.callStatic GamePersistanceStrings.jm_getInstance_0 [])) ]),
                identity,
                (JR.run [ 
                    JR.declare "inputToGameKeyMapping" "" (JR.invoke "getInputMapping_0" JR.this []), 
                    JR.declare "gameKeyFactory" "" (JR.callStatic GameKeyFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "UP" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM2" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEFT" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM4" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "RIGHT" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM6" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "DOWN" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM8" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")), (JR.field "GAME_A" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM3" (JR.local "gameKeyFactory")), (JR.field "GAME_B" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")), (JR.field "GAME_C" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")), (JR.field "GAME_D" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEVEL_DOWN" (JR.local "gameKeyFactory")), (JR.field "LEVEL_DOWN" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEVEL_UP" (JR.local "gameKeyFactory")), (JR.field "LEVEL_UP" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "UP" (JR.local "gameKeyFactory")), (JR.field "UP" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "DOWN" (JR.local "gameKeyFactory")), (JR.field "DOWN" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEFT" (JR.local "gameKeyFactory")), (JR.field "LEFT" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "RIGHT" (JR.local "gameKeyFactory")), (JR.field "RIGHT" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_POUND" (JR.local "gameKeyFactory")), (JR.field "KEY_POUND" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_STAR" (JR.local "gameKeyFactory")), (JR.field "KEY_STAR" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM3" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM3" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM5" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM5" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM0" (JR.local "gameKeyFactory")), (JR.field "KEY_NUM0" (JR.local "gameKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")), (JR.field "FIRE" (JR.local "gameKeyFactory")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

