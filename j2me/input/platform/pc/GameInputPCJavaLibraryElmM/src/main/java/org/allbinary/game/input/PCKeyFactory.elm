module Org.Allbinary.Game.Input.PCKeyFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.ABKeyEventWrapper as ABKeyEventWrapper
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Input.PCGameKey as PCGameKey
import Org.Allbinary.Math.PositionStrings as PositionStrings


jclass : String
jclass =
    "PCKeyFactory"


jchain : List String
jchain =
    [ "PCKeyFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "keyEventWrapper", JR.defaultOf "" ), ( "UNKNOWN", JR.defaultOf "" ), ( "ENTER", JR.defaultOf "" ), ( "_A", JR.defaultOf "" ), ( "_B", JR.defaultOf "" ), ( "_C", JR.defaultOf "" ), ( "_D", JR.defaultOf "" ), ( "_E", JR.defaultOf "" ), ( "_F", JR.defaultOf "" ), ( "_G", JR.defaultOf "" ), ( "_H", JR.defaultOf "" ), ( "_I", JR.defaultOf "" ), ( "_J", JR.defaultOf "" ), ( "_K", JR.defaultOf "" ), ( "_L", JR.defaultOf "" ), ( "_M", JR.defaultOf "" ), ( "_N", JR.defaultOf "" ), ( "_O", JR.defaultOf "" ), ( "_P", JR.defaultOf "" ), ( "_Q", JR.defaultOf "" ), ( "_R", JR.defaultOf "" ), ( "_S", JR.defaultOf "" ), ( "_T", JR.defaultOf "" ), ( "_U", JR.defaultOf "" ), ( "_V", JR.defaultOf "" ), ( "_W", JR.defaultOf "" ), ( "_X", JR.defaultOf "" ), ( "_Y", JR.defaultOf "" ), ( "_Z", JR.defaultOf "" ), ( "a", JR.defaultOf "" ), ( "b", JR.defaultOf "" ), ( "c", JR.defaultOf "" ), ( "d", JR.defaultOf "" ), ( "e", JR.defaultOf "" ), ( "f", JR.defaultOf "" ), ( "g", JR.defaultOf "" ), ( "h", JR.defaultOf "" ), ( "i", JR.defaultOf "" ), ( "j", JR.defaultOf "" ), ( "k", JR.defaultOf "" ), ( "l", JR.defaultOf "" ), ( "m", JR.defaultOf "" ), ( "n", JR.defaultOf "" ), ( "o", JR.defaultOf "" ), ( "p", JR.defaultOf "" ), ( "q", JR.defaultOf "" ), ( "r", JR.defaultOf "" ), ( "s", JR.defaultOf "" ), ( "t", JR.defaultOf "" ), ( "u", JR.defaultOf "" ), ( "v", JR.defaultOf "" ), ( "w", JR.defaultOf "" ), ( "x", JR.defaultOf "" ), ( "y", JR.defaultOf "" ), ( "z", JR.defaultOf "" ), ( "ZERO", JR.defaultOf "" ), ( "ONE", JR.defaultOf "" ), ( "TWO", JR.defaultOf "" ), ( "THREE", JR.defaultOf "" ), ( "FOUR", JR.defaultOf "" ), ( "FIVE", JR.defaultOf "" ), ( "SIX", JR.defaultOf "" ), ( "SEVEN", JR.defaultOf "" ), ( "EIGHT", JR.defaultOf "" ), ( "NINE", JR.defaultOf "" ), ( "DPAD_UP", JR.defaultOf "" ), ( "DPAD_DOWN", JR.defaultOf "" ), ( "DPAD_LEFT", JR.defaultOf "" ), ( "DPAD_RIGHT", JR.defaultOf "" ), ( "DPAD_UP2", JR.defaultOf "" ), ( "DPAD_DOWN2", JR.defaultOf "" ), ( "DPAD_LEFT2", JR.defaultOf "" ), ( "DPAD_RIGHT2", JR.defaultOf "" ), ( "COMMA", JR.defaultOf "" ), ( "SPACE", JR.defaultOf "" ), ( "DEL", JR.defaultOf "" ), ( "STAR", JR.defaultOf "" ), ( "QUESTION", JR.defaultOf "" ), ( "PERIOD", JR.defaultOf "" ), ( "ESCAPE", JR.defaultOf "" ), ( "BACK_SPACE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isSubmission_1", jm_isSubmission_1 )
        , ( "isDelete_1", jm_isDelete_1 )
        , ( "isBackSpace_1", jm_isBackSpace_1 )
        , ( "isUp_1", jm_isUp_1 )
        , ( "isDown_1", jm_isDown_1 )
        , ( "isLeft_1", jm_isLeft_1 )
        , ( "isRight_1", jm_isRight_1 )
        , ( "isEnter_1", jm_isEnter_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PCKeyFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isSubmission_1", jm_isSubmission_1 ), ( "jm_isDelete_1", jm_isDelete_1 ), ( "jm_isBackSpace_1", jm_isBackSpace_1 ), ( "jm_isUp_1", jm_isUp_1 ), ( "jm_isDown_1", jm_isDown_1 ), ( "jm_isLeft_1", jm_isLeft_1 ), ( "jm_isRight_1", jm_isRight_1 ), ( "jm_isEnter_1", jm_isEnter_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "PCKeyFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "keyEventWrapper" "" JR.this (JR.callStatic ABKeyEventWrapper.jm_getInstance_0 [])),
                JR.exec (JR.setField "UNKNOWN" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_UNDEFINED" (JR.thisField "keyEventWrapper")), (JR.str "UNKNOWN") ])),
                JR.exec (JR.setField "ENTER" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 5), (JR.str "Enter") ])),
                JR.exec (JR.setField "_A" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_A" (JR.thisField "keyEventWrapper")), (JR.str "A") ])),
                JR.exec (JR.setField "_B" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_B" (JR.thisField "keyEventWrapper")), (JR.str "B") ])),
                JR.exec (JR.setField "_C" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_C" (JR.thisField "keyEventWrapper")), (JR.str "C") ])),
                JR.exec (JR.setField "_D" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_D" (JR.thisField "keyEventWrapper")), (JR.str "D") ])),
                JR.exec (JR.setField "_E" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_E" (JR.thisField "keyEventWrapper")), (JR.str "E") ])),
                JR.exec (JR.setField "_F" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_F" (JR.thisField "keyEventWrapper")), (JR.str "F") ])),
                JR.exec (JR.setField "_G" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_G" (JR.thisField "keyEventWrapper")), (JR.str "G") ])),
                JR.exec (JR.setField "_H" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_H" (JR.thisField "keyEventWrapper")), (JR.str "H") ])),
                JR.exec (JR.setField "_I" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_I" (JR.thisField "keyEventWrapper")), (JR.str "I") ])),
                JR.exec (JR.setField "_J" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_J" (JR.thisField "keyEventWrapper")), (JR.str "J") ])),
                JR.exec (JR.setField "_K" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_K" (JR.thisField "keyEventWrapper")), (JR.str "K") ])),
                JR.exec (JR.setField "_L" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_L" (JR.thisField "keyEventWrapper")), (JR.str "L") ])),
                JR.exec (JR.setField "_M" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_M" (JR.thisField "keyEventWrapper")), (JR.str "M") ])),
                JR.exec (JR.setField "_N" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_N" (JR.thisField "keyEventWrapper")), (JR.str "N") ])),
                JR.exec (JR.setField "_O" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_O" (JR.thisField "keyEventWrapper")), (JR.str "O") ])),
                JR.exec (JR.setField "_P" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_P" (JR.thisField "keyEventWrapper")), (JR.str "P") ])),
                JR.exec (JR.setField "_Q" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_Q" (JR.thisField "keyEventWrapper")), (JR.str "Q") ])),
                JR.exec (JR.setField "_R" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_R" (JR.thisField "keyEventWrapper")), (JR.str "R") ])),
                JR.exec (JR.setField "_S" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_S" (JR.thisField "keyEventWrapper")), (JR.str "S") ])),
                JR.exec (JR.setField "_T" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_T" (JR.thisField "keyEventWrapper")), (JR.str "T") ])),
                JR.exec (JR.setField "_U" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_U" (JR.thisField "keyEventWrapper")), (JR.str "U") ])),
                JR.exec (JR.setField "_V" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_V" (JR.thisField "keyEventWrapper")), (JR.str "V") ])),
                JR.exec (JR.setField "_W" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_W" (JR.thisField "keyEventWrapper")), (JR.str "W") ])),
                JR.exec (JR.setField "_X" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_X" (JR.thisField "keyEventWrapper")), (JR.str "X") ])),
                JR.exec (JR.setField "_Y" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_Y" (JR.thisField "keyEventWrapper")), (JR.str "Y") ])),
                JR.exec (JR.setField "_Z" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_Z" (JR.thisField "keyEventWrapper")), (JR.str "Z") ])),
                JR.exec (JR.setField "a" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 97), (JR.str "a") ])),
                JR.exec (JR.setField "b" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 98), (JR.str "b") ])),
                JR.exec (JR.setField "c" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 99), (JR.str "c") ])),
                JR.exec (JR.setField "d" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 100), (JR.str "d") ])),
                JR.exec (JR.setField "e" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 101), (JR.str "e") ])),
                JR.exec (JR.setField "f" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 102), (JR.str "f") ])),
                JR.exec (JR.setField "g" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 103), (JR.str "g") ])),
                JR.exec (JR.setField "h" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 104), (JR.str "h") ])),
                JR.exec (JR.setField "i" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 105), (JR.str "i") ])),
                JR.exec (JR.setField "j" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 106), (JR.str "j") ])),
                JR.exec (JR.setField "k" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 107), (JR.str "k") ])),
                JR.exec (JR.setField "l" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 108), (JR.str "l") ])),
                JR.exec (JR.setField "m" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 109), (JR.str "m") ])),
                JR.exec (JR.setField "n" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 110), (JR.str "n") ])),
                JR.exec (JR.setField "o" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 111), (JR.str "o") ])),
                JR.exec (JR.setField "p" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 112), (JR.str "p") ])),
                JR.exec (JR.setField "q" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 113), (JR.str "q") ])),
                JR.exec (JR.setField "r" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 114), (JR.str "r") ])),
                JR.exec (JR.setField "s" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 115), (JR.str "s") ])),
                JR.exec (JR.setField "t" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 116), (JR.str "t") ])),
                JR.exec (JR.setField "u" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 117), (JR.str "u") ])),
                JR.exec (JR.setField "v" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 118), (JR.str "v") ])),
                JR.exec (JR.setField "w" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 119), (JR.str "w") ])),
                JR.exec (JR.setField "x" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 120), (JR.field "X" (JR.callStatic PositionStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "y" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 121), (JR.field "Y" (JR.callStatic PositionStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "z" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 122), (JR.str "z") ])),
                JR.exec (JR.setField "ZERO" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_0" (JR.thisField "keyEventWrapper")), (JR.field "ZERO" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "ONE" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_1" (JR.thisField "keyEventWrapper")), (JR.field "ONE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "TWO" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_2" (JR.thisField "keyEventWrapper")), (JR.field "TWO" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "THREE" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_3" (JR.thisField "keyEventWrapper")), (JR.field "THREE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "FOUR" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_4" (JR.thisField "keyEventWrapper")), (JR.field "FOUR" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "FIVE" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_5" (JR.thisField "keyEventWrapper")), (JR.field "FIVE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "SIX" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_6" (JR.thisField "keyEventWrapper")), (JR.field "SIX" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "SEVEN" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_7" (JR.thisField "keyEventWrapper")), (JR.field "SEVEN" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "EIGHT" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_8" (JR.thisField "keyEventWrapper")), (JR.field "EIGHT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "NINE" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_9" (JR.thisField "keyEventWrapper")), (JR.field "NINE" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "DPAD_UP" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_UP" (JR.thisField "keyEventWrapper")), (JR.field "UP" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "DPAD_DOWN" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_DOWN" (JR.thisField "keyEventWrapper")), (JR.field "DOWN" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "DPAD_LEFT" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_LEFT" (JR.thisField "keyEventWrapper")), (JR.field "LEFT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "DPAD_RIGHT" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_RIGHT" (JR.thisField "keyEventWrapper")), (JR.field "RIGHT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "DPAD_UP2" "" JR.this (JR.thisField "DPAD_UP")),
                JR.exec (JR.setField "DPAD_DOWN2" "" JR.this (JR.thisField "DPAD_DOWN")),
                JR.exec (JR.setField "DPAD_LEFT2" "" JR.this (JR.thisField "DPAD_LEFT")),
                JR.exec (JR.setField "DPAD_RIGHT2" "" JR.this (JR.thisField "DPAD_RIGHT")),
                JR.exec (JR.setField "COMMA" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_COMMA" (JR.thisField "keyEventWrapper")), (JR.str "COMMA") ])),
                JR.exec (JR.setField "SPACE" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_SPACE" (JR.thisField "keyEventWrapper")), (JR.str "SPACE") ])),
                JR.exec (JR.setField "DEL" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_DELETE" (JR.thisField "keyEventWrapper")), (JR.str "DEL") ])),
                JR.exec (JR.setField "STAR" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 42), (JR.field "STAR" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "QUESTION" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.int 47), (JR.str "?") ])),
                JR.exec (JR.setField "PERIOD" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_PERIOD" (JR.thisField "keyEventWrapper")), (JR.field "PERIOD" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "ESCAPE" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_ESCAPE" (JR.thisField "keyEventWrapper")), (JR.str "Esc") ])),
                JR.exec (JR.setField "BACK_SPACE" "" JR.this (JR.new PCGameKey.jnew_2 [ (JR.field "VK_BACK_SPACE" (JR.thisField "keyEventWrapper")), (JR.str "Backspace") ])),
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


jm_isSubmission_1 : JR.Method
jm_isSubmission_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.thisField "ENTER")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isDelete_1 : JR.Method
jm_isDelete_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.thisField "DEL")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isBackSpace_1 : JR.Method
jm_isBackSpace_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.thisField "BACK_SPACE")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isUp_1 : JR.Method
jm_isUp_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_UP")) (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_UP2"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isDown_1 : JR.Method
jm_isDown_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_DOWN")) (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_DOWN2"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isLeft_1 : JR.Method
jm_isLeft_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_LEFT")) (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_LEFT2"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isRight_1 : JR.Method
jm_isRight_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_RIGHT")) (JR.map2 JR.equals (JR.local "input") (JR.thisField "DPAD_RIGHT2"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isEnter_1 : JR.Method
jm_isEnter_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.thisField "ENTER")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
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

