module Org.Allbinary.Game.Input.ABKeyEventWrapper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR



jclass : String
jclass =
    "ABKeyEventWrapper"


jchain : List String
jchain =
    [ "ABKeyEventWrapper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "VK_ENTER", JR.defaultOf "I" ), ( "VK_BACK_SPACE", JR.defaultOf "I" ), ( "VK_TAB", JR.defaultOf "I" ), ( "VK_CANCEL", JR.defaultOf "I" ), ( "VK_CLEAR", JR.defaultOf "I" ), ( "VK_SHIFT", JR.defaultOf "I" ), ( "VK_CONTROL", JR.defaultOf "I" ), ( "VK_ALT", JR.defaultOf "I" ), ( "VK_PAUSE", JR.defaultOf "I" ), ( "VK_CAPS_LOCK", JR.defaultOf "I" ), ( "VK_ESCAPE", JR.defaultOf "I" ), ( "VK_SPACE", JR.defaultOf "I" ), ( "VK_PAGE_UP", JR.defaultOf "I" ), ( "VK_PAGE_DOWN", JR.defaultOf "I" ), ( "VK_END", JR.defaultOf "I" ), ( "VK_HOME", JR.defaultOf "I" ), ( "VK_LEFT", JR.defaultOf "I" ), ( "VK_UP", JR.defaultOf "I" ), ( "VK_RIGHT", JR.defaultOf "I" ), ( "VK_DOWN", JR.defaultOf "I" ), ( "VK_COMMA", JR.defaultOf "I" ), ( "VK_MINUS", JR.defaultOf "I" ), ( "VK_PERIOD", JR.defaultOf "I" ), ( "VK_SLASH", JR.defaultOf "I" ), ( "VK_0", JR.defaultOf "I" ), ( "VK_1", JR.defaultOf "I" ), ( "VK_2", JR.defaultOf "I" ), ( "VK_3", JR.defaultOf "I" ), ( "VK_4", JR.defaultOf "I" ), ( "VK_5", JR.defaultOf "I" ), ( "VK_6", JR.defaultOf "I" ), ( "VK_7", JR.defaultOf "I" ), ( "VK_8", JR.defaultOf "I" ), ( "VK_9", JR.defaultOf "I" ), ( "VK_SEMICOLON", JR.defaultOf "I" ), ( "VK_EQUALS", JR.defaultOf "I" ), ( "VK_A", JR.defaultOf "I" ), ( "VK_B", JR.defaultOf "I" ), ( "VK_C", JR.defaultOf "I" ), ( "VK_D", JR.defaultOf "I" ), ( "VK_E", JR.defaultOf "I" ), ( "VK_F", JR.defaultOf "I" ), ( "VK_G", JR.defaultOf "I" ), ( "VK_H", JR.defaultOf "I" ), ( "VK_I", JR.defaultOf "I" ), ( "VK_J", JR.defaultOf "I" ), ( "VK_K", JR.defaultOf "I" ), ( "VK_L", JR.defaultOf "I" ), ( "VK_M", JR.defaultOf "I" ), ( "VK_N", JR.defaultOf "I" ), ( "VK_O", JR.defaultOf "I" ), ( "VK_P", JR.defaultOf "I" ), ( "VK_Q", JR.defaultOf "I" ), ( "VK_R", JR.defaultOf "I" ), ( "VK_S", JR.defaultOf "I" ), ( "VK_T", JR.defaultOf "I" ), ( "VK_U", JR.defaultOf "I" ), ( "VK_V", JR.defaultOf "I" ), ( "VK_W", JR.defaultOf "I" ), ( "VK_X", JR.defaultOf "I" ), ( "VK_Y", JR.defaultOf "I" ), ( "VK_Z", JR.defaultOf "I" ), ( "VK_OPEN_BRACKET", JR.defaultOf "I" ), ( "VK_BACK_SLASH", JR.defaultOf "I" ), ( "VK_CLOSE_BRACKET", JR.defaultOf "I" ), ( "VK_NUMPAD0", JR.defaultOf "I" ), ( "VK_NUMPAD1", JR.defaultOf "I" ), ( "VK_NUMPAD2", JR.defaultOf "I" ), ( "VK_NUMPAD3", JR.defaultOf "I" ), ( "VK_NUMPAD4", JR.defaultOf "I" ), ( "VK_NUMPAD5", JR.defaultOf "I" ), ( "VK_NUMPAD6", JR.defaultOf "I" ), ( "VK_NUMPAD7", JR.defaultOf "I" ), ( "VK_NUMPAD8", JR.defaultOf "I" ), ( "VK_NUMPAD9", JR.defaultOf "I" ), ( "VK_MULTIPLY", JR.defaultOf "I" ), ( "VK_ADD", JR.defaultOf "I" ), ( "VK_SEPARATER", JR.defaultOf "I" ), ( "VK_SEPARATOR", JR.defaultOf "I" ), ( "VK_SUBTRACT", JR.defaultOf "I" ), ( "VK_DECIMAL", JR.defaultOf "I" ), ( "VK_DIVIDE", JR.defaultOf "I" ), ( "VK_DELETE", JR.defaultOf "I" ), ( "VK_NUM_LOCK", JR.defaultOf "I" ), ( "VK_SCROLL_LOCK", JR.defaultOf "I" ), ( "VK_F1", JR.defaultOf "I" ), ( "VK_F2", JR.defaultOf "I" ), ( "VK_F3", JR.defaultOf "I" ), ( "VK_F4", JR.defaultOf "I" ), ( "VK_F5", JR.defaultOf "I" ), ( "VK_F6", JR.defaultOf "I" ), ( "VK_F7", JR.defaultOf "I" ), ( "VK_F8", JR.defaultOf "I" ), ( "VK_F9", JR.defaultOf "I" ), ( "VK_F10", JR.defaultOf "I" ), ( "VK_F11", JR.defaultOf "I" ), ( "VK_F12", JR.defaultOf "I" ), ( "VK_F13", JR.defaultOf "I" ), ( "VK_F14", JR.defaultOf "I" ), ( "VK_F15", JR.defaultOf "I" ), ( "VK_F16", JR.defaultOf "I" ), ( "VK_F17", JR.defaultOf "I" ), ( "VK_F18", JR.defaultOf "I" ), ( "VK_F19", JR.defaultOf "I" ), ( "VK_F20", JR.defaultOf "I" ), ( "VK_F21", JR.defaultOf "I" ), ( "VK_F22", JR.defaultOf "I" ), ( "VK_F23", JR.defaultOf "I" ), ( "VK_F24", JR.defaultOf "I" ), ( "VK_PRINTSCREEN", JR.defaultOf "I" ), ( "VK_INSERT", JR.defaultOf "I" ), ( "VK_HELP", JR.defaultOf "I" ), ( "VK_META", JR.defaultOf "I" ), ( "VK_BACK_QUOTE", JR.defaultOf "I" ), ( "VK_QUOTE", JR.defaultOf "I" ), ( "VK_KP_UP", JR.defaultOf "I" ), ( "VK_KP_DOWN", JR.defaultOf "I" ), ( "VK_KP_LEFT", JR.defaultOf "I" ), ( "VK_KP_RIGHT", JR.defaultOf "I" ), ( "VK_DEAD_GRAVE", JR.defaultOf "I" ), ( "VK_DEAD_ACUTE", JR.defaultOf "I" ), ( "VK_DEAD_CIRCUMFLEX", JR.defaultOf "I" ), ( "VK_DEAD_TILDE", JR.defaultOf "I" ), ( "VK_DEAD_MACRON", JR.defaultOf "I" ), ( "VK_DEAD_BREVE", JR.defaultOf "I" ), ( "VK_DEAD_ABOVEDOT", JR.defaultOf "I" ), ( "VK_DEAD_DIAERESIS", JR.defaultOf "I" ), ( "VK_DEAD_ABOVERING", JR.defaultOf "I" ), ( "VK_DEAD_DOUBLEACUTE", JR.defaultOf "I" ), ( "VK_DEAD_CARON", JR.defaultOf "I" ), ( "VK_DEAD_CEDILLA", JR.defaultOf "I" ), ( "VK_DEAD_OGONEK", JR.defaultOf "I" ), ( "VK_DEAD_IOTA", JR.defaultOf "I" ), ( "VK_DEAD_VOICED_SOUND", JR.defaultOf "I" ), ( "VK_DEAD_SEMIVOICED_SOUND", JR.defaultOf "I" ), ( "VK_AMPERSAND", JR.defaultOf "I" ), ( "VK_ASTERISK", JR.defaultOf "I" ), ( "VK_QUOTEDBL", JR.defaultOf "I" ), ( "VK_LESS", JR.defaultOf "I" ), ( "VK_GREATER", JR.defaultOf "I" ), ( "VK_BRACELEFT", JR.defaultOf "I" ), ( "VK_BRACERIGHT", JR.defaultOf "I" ), ( "VK_AT", JR.defaultOf "I" ), ( "VK_COLON", JR.defaultOf "I" ), ( "VK_CIRCUMFLEX", JR.defaultOf "I" ), ( "VK_DOLLAR", JR.defaultOf "I" ), ( "VK_EURO_SIGN", JR.defaultOf "I" ), ( "VK_EXCLAMATION_MARK", JR.defaultOf "I" ), ( "VK_INVERTED_EXCLAMATION_MARK", JR.defaultOf "I" ), ( "VK_LEFT_PARENTHESIS", JR.defaultOf "I" ), ( "VK_NUMBER_SIGN", JR.defaultOf "I" ), ( "VK_PLUS", JR.defaultOf "I" ), ( "VK_RIGHT_PARENTHESIS", JR.defaultOf "I" ), ( "VK_UNDERSCORE", JR.defaultOf "I" ), ( "VK_WINDOWS", JR.defaultOf "I" ), ( "VK_CONTEXT_MENU", JR.defaultOf "I" ), ( "VK_FINAL", JR.defaultOf "I" ), ( "VK_CONVERT", JR.defaultOf "I" ), ( "VK_NONCONVERT", JR.defaultOf "I" ), ( "VK_ACCEPT", JR.defaultOf "I" ), ( "VK_MODECHANGE", JR.defaultOf "I" ), ( "VK_KANA", JR.defaultOf "I" ), ( "VK_KANJI", JR.defaultOf "I" ), ( "VK_ALPHANUMERIC", JR.defaultOf "I" ), ( "VK_KATAKANA", JR.defaultOf "I" ), ( "VK_HIRAGANA", JR.defaultOf "I" ), ( "VK_FULL_WIDTH", JR.defaultOf "I" ), ( "VK_HALF_WIDTH", JR.defaultOf "I" ), ( "VK_ROMAN_CHARACTERS", JR.defaultOf "I" ), ( "VK_ALL_CANDIDATES", JR.defaultOf "I" ), ( "VK_PREVIOUS_CANDIDATE", JR.defaultOf "I" ), ( "VK_CODE_INPUT", JR.defaultOf "I" ), ( "VK_JAPANESE_KATAKANA", JR.defaultOf "I" ), ( "VK_JAPANESE_HIRAGANA", JR.defaultOf "I" ), ( "VK_JAPANESE_ROMAN", JR.defaultOf "I" ), ( "VK_KANA_LOCK", JR.defaultOf "I" ), ( "VK_INPUT_METHOD_ON_OFF", JR.defaultOf "I" ), ( "VK_CUT", JR.defaultOf "I" ), ( "VK_COPY", JR.defaultOf "I" ), ( "VK_PASTE", JR.defaultOf "I" ), ( "VK_UNDO", JR.defaultOf "I" ), ( "VK_AGAIN", JR.defaultOf "I" ), ( "VK_FIND", JR.defaultOf "I" ), ( "VK_PROPS", JR.defaultOf "I" ), ( "VK_STOP", JR.defaultOf "I" ), ( "VK_COMPOSE", JR.defaultOf "I" ), ( "VK_ALT_GRAPH", JR.defaultOf "I" ), ( "VK_BEGIN", JR.defaultOf "I" ), ( "VK_UNDEFINED", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABKeyEventWrapper"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ABKeyEventWrapper" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "VK_ENTER" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ENTER")),
                JR.exec (JR.setField "VK_BACK_SPACE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_BACK_SPACE")),
                JR.exec (JR.setField "VK_TAB" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_TAB")),
                JR.exec (JR.setField "VK_CANCEL" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CANCEL")),
                JR.exec (JR.setField "VK_CLEAR" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CLEAR")),
                JR.exec (JR.setField "VK_SHIFT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SHIFT")),
                JR.exec (JR.setField "VK_CONTROL" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CONTROL")),
                JR.exec (JR.setField "VK_ALT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ALT")),
                JR.exec (JR.setField "VK_PAUSE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PAUSE")),
                JR.exec (JR.setField "VK_CAPS_LOCK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CAPS_LOCK")),
                JR.exec (JR.setField "VK_ESCAPE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ESCAPE")),
                JR.exec (JR.setField "VK_SPACE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SPACE")),
                JR.exec (JR.setField "VK_PAGE_UP" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PAGE_UP")),
                JR.exec (JR.setField "VK_PAGE_DOWN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PAGE_DOWN")),
                JR.exec (JR.setField "VK_END" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_END")),
                JR.exec (JR.setField "VK_HOME" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_HOME")),
                JR.exec (JR.setField "VK_LEFT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_LEFT")),
                JR.exec (JR.setField "VK_UP" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_UP")),
                JR.exec (JR.setField "VK_RIGHT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_RIGHT")),
                JR.exec (JR.setField "VK_DOWN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DOWN")),
                JR.exec (JR.setField "VK_COMMA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_COMMA")),
                JR.exec (JR.setField "VK_MINUS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_MINUS")),
                JR.exec (JR.setField "VK_PERIOD" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PERIOD")),
                JR.exec (JR.setField "VK_SLASH" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SLASH")),
                JR.exec (JR.setField "VK_0" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_0")),
                JR.exec (JR.setField "VK_1" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_1")),
                JR.exec (JR.setField "VK_2" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_2")),
                JR.exec (JR.setField "VK_3" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_3")),
                JR.exec (JR.setField "VK_4" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_4")),
                JR.exec (JR.setField "VK_5" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_5")),
                JR.exec (JR.setField "VK_6" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_6")),
                JR.exec (JR.setField "VK_7" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_7")),
                JR.exec (JR.setField "VK_8" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_8")),
                JR.exec (JR.setField "VK_9" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_9")),
                JR.exec (JR.setField "VK_SEMICOLON" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SEMICOLON")),
                JR.exec (JR.setField "VK_EQUALS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_EQUALS")),
                JR.exec (JR.setField "VK_A" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_A")),
                JR.exec (JR.setField "VK_B" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_B")),
                JR.exec (JR.setField "VK_C" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_C")),
                JR.exec (JR.setField "VK_D" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_D")),
                JR.exec (JR.setField "VK_E" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_E")),
                JR.exec (JR.setField "VK_F" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F")),
                JR.exec (JR.setField "VK_G" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_G")),
                JR.exec (JR.setField "VK_H" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_H")),
                JR.exec (JR.setField "VK_I" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_I")),
                JR.exec (JR.setField "VK_J" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_J")),
                JR.exec (JR.setField "VK_K" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_K")),
                JR.exec (JR.setField "VK_L" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_L")),
                JR.exec (JR.setField "VK_M" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_M")),
                JR.exec (JR.setField "VK_N" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_N")),
                JR.exec (JR.setField "VK_O" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_O")),
                JR.exec (JR.setField "VK_P" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_P")),
                JR.exec (JR.setField "VK_Q" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_Q")),
                JR.exec (JR.setField "VK_R" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_R")),
                JR.exec (JR.setField "VK_S" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_S")),
                JR.exec (JR.setField "VK_T" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_T")),
                JR.exec (JR.setField "VK_U" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_U")),
                JR.exec (JR.setField "VK_V" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_V")),
                JR.exec (JR.setField "VK_W" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_W")),
                JR.exec (JR.setField "VK_X" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_X")),
                JR.exec (JR.setField "VK_Y" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_Y")),
                JR.exec (JR.setField "VK_Z" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_Z")),
                JR.exec (JR.setField "VK_OPEN_BRACKET" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_OPEN_BRACKET")),
                JR.exec (JR.setField "VK_BACK_SLASH" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_BACK_SLASH")),
                JR.exec (JR.setField "VK_CLOSE_BRACKET" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CLOSE_BRACKET")),
                JR.exec (JR.setField "VK_NUMPAD0" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD0")),
                JR.exec (JR.setField "VK_NUMPAD1" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD1")),
                JR.exec (JR.setField "VK_NUMPAD2" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD2")),
                JR.exec (JR.setField "VK_NUMPAD3" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD3")),
                JR.exec (JR.setField "VK_NUMPAD4" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD4")),
                JR.exec (JR.setField "VK_NUMPAD5" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD5")),
                JR.exec (JR.setField "VK_NUMPAD6" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD6")),
                JR.exec (JR.setField "VK_NUMPAD7" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD7")),
                JR.exec (JR.setField "VK_NUMPAD8" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD8")),
                JR.exec (JR.setField "VK_NUMPAD9" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMPAD9")),
                JR.exec (JR.setField "VK_MULTIPLY" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_MULTIPLY")),
                JR.exec (JR.setField "VK_ADD" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ADD")),
                JR.exec (JR.setField "VK_SEPARATER" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SEPARATER")),
                JR.exec (JR.setField "VK_SEPARATOR" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SEPARATOR")),
                JR.exec (JR.setField "VK_SUBTRACT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SUBTRACT")),
                JR.exec (JR.setField "VK_DECIMAL" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DECIMAL")),
                JR.exec (JR.setField "VK_DIVIDE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DIVIDE")),
                JR.exec (JR.setField "VK_DELETE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DELETE")),
                JR.exec (JR.setField "VK_NUM_LOCK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUM_LOCK")),
                JR.exec (JR.setField "VK_SCROLL_LOCK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_SCROLL_LOCK")),
                JR.exec (JR.setField "VK_F1" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F1")),
                JR.exec (JR.setField "VK_F2" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F2")),
                JR.exec (JR.setField "VK_F3" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F3")),
                JR.exec (JR.setField "VK_F4" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F4")),
                JR.exec (JR.setField "VK_F5" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F5")),
                JR.exec (JR.setField "VK_F6" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F6")),
                JR.exec (JR.setField "VK_F7" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F7")),
                JR.exec (JR.setField "VK_F8" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F8")),
                JR.exec (JR.setField "VK_F9" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F9")),
                JR.exec (JR.setField "VK_F10" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F10")),
                JR.exec (JR.setField "VK_F11" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F11")),
                JR.exec (JR.setField "VK_F12" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F12")),
                JR.exec (JR.setField "VK_F13" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F13")),
                JR.exec (JR.setField "VK_F14" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F14")),
                JR.exec (JR.setField "VK_F15" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F15")),
                JR.exec (JR.setField "VK_F16" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F16")),
                JR.exec (JR.setField "VK_F17" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F17")),
                JR.exec (JR.setField "VK_F18" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F18")),
                JR.exec (JR.setField "VK_F19" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F19")),
                JR.exec (JR.setField "VK_F20" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F20")),
                JR.exec (JR.setField "VK_F21" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F21")),
                JR.exec (JR.setField "VK_F22" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F22")),
                JR.exec (JR.setField "VK_F23" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F23")),
                JR.exec (JR.setField "VK_F24" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_F24")),
                JR.exec (JR.setField "VK_PRINTSCREEN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PRINTSCREEN")),
                JR.exec (JR.setField "VK_INSERT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_INSERT")),
                JR.exec (JR.setField "VK_HELP" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_HELP")),
                JR.exec (JR.setField "VK_META" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_META")),
                JR.exec (JR.setField "VK_BACK_QUOTE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_BACK_QUOTE")),
                JR.exec (JR.setField "VK_QUOTE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_QUOTE")),
                JR.exec (JR.setField "VK_KP_UP" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KP_UP")),
                JR.exec (JR.setField "VK_KP_DOWN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KP_DOWN")),
                JR.exec (JR.setField "VK_KP_LEFT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KP_LEFT")),
                JR.exec (JR.setField "VK_KP_RIGHT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KP_RIGHT")),
                JR.exec (JR.setField "VK_DEAD_GRAVE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_GRAVE")),
                JR.exec (JR.setField "VK_DEAD_ACUTE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_ACUTE")),
                JR.exec (JR.setField "VK_DEAD_CIRCUMFLEX" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_CIRCUMFLEX")),
                JR.exec (JR.setField "VK_DEAD_TILDE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_TILDE")),
                JR.exec (JR.setField "VK_DEAD_MACRON" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_MACRON")),
                JR.exec (JR.setField "VK_DEAD_BREVE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_BREVE")),
                JR.exec (JR.setField "VK_DEAD_ABOVEDOT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_ABOVEDOT")),
                JR.exec (JR.setField "VK_DEAD_DIAERESIS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_DIAERESIS")),
                JR.exec (JR.setField "VK_DEAD_ABOVERING" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_ABOVERING")),
                JR.exec (JR.setField "VK_DEAD_DOUBLEACUTE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_DOUBLEACUTE")),
                JR.exec (JR.setField "VK_DEAD_CARON" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_CARON")),
                JR.exec (JR.setField "VK_DEAD_CEDILLA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_CEDILLA")),
                JR.exec (JR.setField "VK_DEAD_OGONEK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_OGONEK")),
                JR.exec (JR.setField "VK_DEAD_IOTA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_IOTA")),
                JR.exec (JR.setField "VK_DEAD_VOICED_SOUND" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_VOICED_SOUND")),
                JR.exec (JR.setField "VK_DEAD_SEMIVOICED_SOUND" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DEAD_SEMIVOICED_SOUND")),
                JR.exec (JR.setField "VK_AMPERSAND" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_AMPERSAND")),
                JR.exec (JR.setField "VK_ASTERISK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ASTERISK")),
                JR.exec (JR.setField "VK_QUOTEDBL" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_QUOTEDBL")),
                JR.exec (JR.setField "VK_LESS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_LESS")),
                JR.exec (JR.setField "VK_GREATER" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_GREATER")),
                JR.exec (JR.setField "VK_BRACELEFT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_BRACELEFT")),
                JR.exec (JR.setField "VK_BRACERIGHT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_BRACERIGHT")),
                JR.exec (JR.setField "VK_AT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_AT")),
                JR.exec (JR.setField "VK_COLON" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_COLON")),
                JR.exec (JR.setField "VK_CIRCUMFLEX" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CIRCUMFLEX")),
                JR.exec (JR.setField "VK_DOLLAR" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_DOLLAR")),
                JR.exec (JR.setField "VK_EURO_SIGN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_EURO_SIGN")),
                JR.exec (JR.setField "VK_EXCLAMATION_MARK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_EXCLAMATION_MARK")),
                JR.exec (JR.setField "VK_INVERTED_EXCLAMATION_MARK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_INVERTED_EXCLAMATION_MARK")),
                JR.exec (JR.setField "VK_LEFT_PARENTHESIS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_LEFT_PARENTHESIS")),
                JR.exec (JR.setField "VK_NUMBER_SIGN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NUMBER_SIGN")),
                JR.exec (JR.setField "VK_PLUS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PLUS")),
                JR.exec (JR.setField "VK_RIGHT_PARENTHESIS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_RIGHT_PARENTHESIS")),
                JR.exec (JR.setField "VK_UNDERSCORE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_UNDERSCORE")),
                JR.exec (JR.setField "VK_WINDOWS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_WINDOWS")),
                JR.exec (JR.setField "VK_CONTEXT_MENU" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CONTEXT_MENU")),
                JR.exec (JR.setField "VK_FINAL" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_FINAL")),
                JR.exec (JR.setField "VK_CONVERT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CONVERT")),
                JR.exec (JR.setField "VK_NONCONVERT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_NONCONVERT")),
                JR.exec (JR.setField "VK_ACCEPT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ACCEPT")),
                JR.exec (JR.setField "VK_MODECHANGE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_MODECHANGE")),
                JR.exec (JR.setField "VK_KANA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KANA")),
                JR.exec (JR.setField "VK_KANJI" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KANJI")),
                JR.exec (JR.setField "VK_ALPHANUMERIC" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ALPHANUMERIC")),
                JR.exec (JR.setField "VK_KATAKANA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KATAKANA")),
                JR.exec (JR.setField "VK_HIRAGANA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_HIRAGANA")),
                JR.exec (JR.setField "VK_FULL_WIDTH" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_FULL_WIDTH")),
                JR.exec (JR.setField "VK_HALF_WIDTH" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_HALF_WIDTH")),
                JR.exec (JR.setField "VK_ROMAN_CHARACTERS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ROMAN_CHARACTERS")),
                JR.exec (JR.setField "VK_ALL_CANDIDATES" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ALL_CANDIDATES")),
                JR.exec (JR.setField "VK_PREVIOUS_CANDIDATE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PREVIOUS_CANDIDATE")),
                JR.exec (JR.setField "VK_CODE_INPUT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CODE_INPUT")),
                JR.exec (JR.setField "VK_JAPANESE_KATAKANA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_JAPANESE_KATAKANA")),
                JR.exec (JR.setField "VK_JAPANESE_HIRAGANA" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_JAPANESE_HIRAGANA")),
                JR.exec (JR.setField "VK_JAPANESE_ROMAN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_JAPANESE_ROMAN")),
                JR.exec (JR.setField "VK_KANA_LOCK" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_KANA_LOCK")),
                JR.exec (JR.setField "VK_INPUT_METHOD_ON_OFF" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_INPUT_METHOD_ON_OFF")),
                JR.exec (JR.setField "VK_CUT" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_CUT")),
                JR.exec (JR.setField "VK_COPY" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_COPY")),
                JR.exec (JR.setField "VK_PASTE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PASTE")),
                JR.exec (JR.setField "VK_UNDO" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_UNDO")),
                JR.exec (JR.setField "VK_AGAIN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_AGAIN")),
                JR.exec (JR.setField "VK_FIND" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_FIND")),
                JR.exec (JR.setField "VK_PROPS" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_PROPS")),
                JR.exec (JR.setField "VK_STOP" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_STOP")),
                JR.exec (JR.setField "VK_COMPOSE" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_COMPOSE")),
                JR.exec (JR.setField "VK_ALT_GRAPH" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_ALT_GRAPH")),
                JR.exec (JR.setField "VK_BEGIN" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_BEGIN")),
                JR.exec (JR.setField "VK_UNDEFINED" "I" JR.this (JR.namedStatic "KeyEvent.jstatic_VK_UNDEFINED")),
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

