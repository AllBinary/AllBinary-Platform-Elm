module Org.Allbinary.Game.Input.DesktopDefaultGameInputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Configuration.Persistance.GamePersistanceStrings as GamePersistanceStrings
import Org.Allbinary.Game.Input.PCKeyFactory as PCKeyFactory
import Org.Allbinary.Game.Input.Mapping.PersistentInputMapping as PersistentInputMapping


jclass : String
jclass =
    "DesktopDefaultGameInputMapping"


jchain : List String
jchain =
    [ "DesktopDefaultGameInputMapping" ]
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
    JR.register "DesktopDefaultGameInputMapping"
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
                    JR.declare "pcKeyFactory" "" (JR.callStatic PCKeyFactory.jm_getInstance_0 []), 
                    JR.declare "gameKeyFactory" "" (JR.callStatic GameKeyFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "FIRE" (JR.local "gameKeyFactory")), (JR.field "ENTER" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")), (JR.field "FOUR" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")), (JR.field "_P" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")), (JR.field "p" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "UP" (JR.local "gameKeyFactory")), (JR.field "DPAD_UP" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "DOWN" (JR.local "gameKeyFactory")), (JR.field "DPAD_DOWN" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEFT" (JR.local "gameKeyFactory")), (JR.field "DPAD_LEFT" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "RIGHT" (JR.local "gameKeyFactory")), (JR.field "DPAD_RIGHT" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM1" (JR.local "gameKeyFactory")), (JR.field "FIVE" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")), (JR.field "_Y" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")), (JR.field "_I" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "UP" (JR.local "gameKeyFactory")), (JR.field "_U" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEFT" (JR.local "gameKeyFactory")), (JR.field "_H" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "RIGHT" (JR.local "gameKeyFactory")), (JR.field "_J" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "DOWN" (JR.local "gameKeyFactory")), (JR.field "_N" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM5" (JR.local "gameKeyFactory")), (JR.field "_M" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")), (JR.field "y" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")), (JR.field "i" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "UP" (JR.local "gameKeyFactory")), (JR.field "u" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEFT" (JR.local "gameKeyFactory")), (JR.field "h" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "RIGHT" (JR.local "gameKeyFactory")), (JR.field "j" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "DOWN" (JR.local "gameKeyFactory")), (JR.field "n" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM5" (JR.local "gameKeyFactory")), (JR.field "m" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")), (JR.field "_Q" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")), (JR.field "_E" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "UP" (JR.local "gameKeyFactory")), (JR.field "_W" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEFT" (JR.local "gameKeyFactory")), (JR.field "_A" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "RIGHT" (JR.local "gameKeyFactory")), (JR.field "_D" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "DOWN" (JR.local "gameKeyFactory")), (JR.field "_S" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM5" (JR.local "gameKeyFactory")), (JR.field "_X" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM7" (JR.local "gameKeyFactory")), (JR.field "q" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM9" (JR.local "gameKeyFactory")), (JR.field "e" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "UP" (JR.local "gameKeyFactory")), (JR.field "w" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEFT" (JR.local "gameKeyFactory")), (JR.field "a" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "RIGHT" (JR.local "gameKeyFactory")), (JR.field "d" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "DOWN" (JR.local "gameKeyFactory")), (JR.field "s" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM5" (JR.local "gameKeyFactory")), (JR.field "x" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM3" (JR.local "gameKeyFactory")), (JR.field "THREE" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM0" (JR.local "gameKeyFactory")), (JR.field "ZERO" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM0" (JR.local "gameKeyFactory")), (JR.field "ONE" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_NUM0" (JR.local "gameKeyFactory")), (JR.field "SPACE" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_POUND" (JR.local "gameKeyFactory")), (JR.field "DEL" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_POUND" (JR.local "gameKeyFactory")), (JR.field "TWO" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_STAR" (JR.local "gameKeyFactory")), (JR.field "ESCAPE" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "KEY_STAR" (JR.local "gameKeyFactory")), (JR.field "STAR" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEVEL_DOWN" (JR.local "gameKeyFactory")), (JR.field "COMMA" (JR.local "pcKeyFactory")) ]), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputToGameKeyMapping") [ (JR.field "LEVEL_UP" (JR.local "gameKeyFactory")), (JR.field "PERIOD" (JR.local "pcKeyFactory")) ]) ]) ])
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

