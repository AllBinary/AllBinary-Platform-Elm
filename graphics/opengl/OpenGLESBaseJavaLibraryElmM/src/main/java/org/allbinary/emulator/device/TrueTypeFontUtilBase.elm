module Org.Allbinary.Emulator.Device.TrueTypeFontUtilBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.emulator.device
-}

import JR
import Org.Allbinary.AvianUtil as AvianUtil
import Javax.Microedition.Lcdui.Font as Font
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "TrueTypeFontUtilBase"


jchain : List String
jchain =
    [ "TrueTypeFontUtilBase" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "shortPattern", JR.defaultOf "" ), ( "patternAsBytes", JR.defaultOf "" ), ( "pattern", JR.defaultOf "" ), ( "charArray", JR.defaultOf "" ), ( "_characterWidth", JR.defaultOf "" ), ( "characterArray", JR.defaultOf "" ), ( "size", JR.defaultOf "I" ), ( "lastCapIndex", JR.defaultOf "I" ), ( "currentFont", JR.defaultOf "" ), ( "scale", JR.defaultOf "I" ), ( "CELLS_PER_ROW", JR.defaultOf "I" ), ( "fontSize", JR.defaultOf "I" ), ( "baseCharWidth", JR.defaultOf "I" ), ( "cellSize", JR.defaultOf "I" ), ( "textureSize", JR.defaultOf "I" ), ( "actualCellsPerRow", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getAsTextureSize_1", jm_getAsTextureSize_1 )
        , ( "getCellSize_1", jm_getCellSize_1 )
        , ( "getYOffset_0", jm_getYOffset_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TrueTypeFontUtilBase"
        [ ( "jm_getAsTextureSize_1", jm_getAsTextureSize_1 ), ( "jm_getCellSize_1", jm_getCellSize_1 ), ( "jm_getYOffset_0", jm_getYOffset_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "scale", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "patternAsBytes" "" JR.this (JR.arrayOf "B" [ (JR.int 32), (JR.int 48), (JR.int 49), (JR.int 50), (JR.int 51), (JR.int 52), (JR.int 53), (JR.int 54), (JR.int 55), (JR.int 56), (JR.int 57), (JR.int 65), (JR.int 66), (JR.int 32), (JR.int 32), (JR.int 32), (JR.int 67), (JR.int 68), (JR.int 69), (JR.int 70), (JR.int 71), (JR.int 72), (JR.int 73), (JR.int 74), (JR.int 75), (JR.int 76), (JR.int 77), (JR.int 78), (JR.int 79), (JR.int 32), (JR.int 32), (JR.int 32), (JR.int 80), (JR.int 81), (JR.int 82), (JR.int 83), (JR.int 84), (JR.int 85), (JR.int 86), (JR.int 87), (JR.int 88), (JR.int 89), (JR.int 90), (JR.int 97), (JR.int 98), (JR.int 32), (JR.int 32), (JR.int 32), (JR.int 99), (JR.int 100), (JR.int 101), (JR.int 102), (JR.int 103), (JR.int 104), (JR.int 105), (JR.int 106), (JR.int 107), (JR.int 108), (JR.int 109), (JR.int 110), (JR.int 111), (JR.int 32), (JR.int 32), (JR.int 32), (JR.int 112), (JR.int 113), (JR.int 114), (JR.int 115), (JR.int 116), (JR.int 117), (JR.int 118), (JR.int 119), (JR.int 120), (JR.int 121), (JR.int 122), (JR.int 46), (JR.int 63), (JR.int 32), (JR.int 32), (JR.int 32), (JR.int 33), (JR.int 36), (JR.int 37), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 84))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 84))), (JR.int 34), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 93))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 93))), (JR.int 94), (JR.int 38), (JR.int 42), (JR.int 40), (JR.int 32), (JR.int 32), (JR.int 32), (JR.int 41), (JR.int 95), (JR.int 43), (JR.int 45), (JR.int 61), (JR.int 91), (JR.int 93), (JR.int 123), (JR.int 125), (JR.int 59), (JR.int 39), (JR.int 35), (JR.int 58), (JR.int 32), (JR.int 32), (JR.int 32), (JR.int 64), (JR.int 126), (JR.int 44), (JR.int 47), (JR.int 60), (JR.int 62), (JR.int 92), (JR.int 124), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 87))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 87))) ])),
                JR.exec (JR.setField "pattern" "" JR.this (JR.withState JR.newString [ (JR.thisField "patternAsBytes") ])),
                JR.exec (JR.setField "charArray" "" JR.this (JR.arrayOf "S" [ (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x6f)), (JR.int (JR.i32 0x50)), (JR.int (JR.i32 0x56)), (JR.int (JR.i32 0x6b)), (JR.int (JR.i32 0x51)), (JR.int (JR.i32 0x52)), (JR.int (JR.i32 0x5a)), (JR.int (JR.i32 0x6a)), (JR.int (JR.i32 0x5c)), (JR.int (JR.i32 0x60)), (JR.int (JR.i32 0x5b)), (JR.int (JR.i32 0x62)), (JR.int (JR.i32 0x72)), (JR.int (JR.i32 0x63)), (JR.int (JR.i32 0x4b)), (JR.int (JR.i32 0x73)), (JR.int (JR.i32 0x1)), (JR.int (JR.i32 0x2)), (JR.int (JR.i32 0x3)), (JR.int (JR.i32 0x4)), (JR.int (JR.i32 0x5)), (JR.int (JR.i32 0x6)), (JR.int (JR.i32 0x7)), (JR.int (JR.i32 0x8)), (JR.int (JR.i32 0x9)), (JR.int (JR.i32 0xa)), (JR.int (JR.i32 0x6c)), (JR.int (JR.i32 0x69)), (JR.int (JR.i32 0x74)), (JR.int (JR.i32 0x64)), (JR.int (JR.i32 0x75)), (JR.int (JR.i32 0x4c)), (JR.int (JR.i32 0x70)), (JR.int (JR.i32 0xb)), (JR.int (JR.i32 0xc)), (JR.int (JR.i32 0x10)), (JR.int (JR.i32 0x11)), (JR.int (JR.i32 0x12)), (JR.int (JR.i32 0x13)), (JR.int (JR.i32 0x14)), (JR.int (JR.i32 0x15)), (JR.int (JR.i32 0x16)), (JR.int (JR.i32 0x17)), (JR.int (JR.i32 0x18)), (JR.int (JR.i32 0x19)), (JR.int (JR.i32 0x1a)), (JR.int (JR.i32 0x1b)), (JR.int (JR.i32 0x1c)), (JR.int (JR.i32 0x20)), (JR.int (JR.i32 0x21)), (JR.int (JR.i32 0x22)), (JR.int (JR.i32 0x23)), (JR.int (JR.i32 0x24)), (JR.int (JR.i32 0x25)), (JR.int (JR.i32 0x26)), (JR.int (JR.i32 0x27)), (JR.int (JR.i32 0x28)), (JR.int (JR.i32 0x29)), (JR.int (JR.i32 0x2a)), (JR.int (JR.i32 0x65)), (JR.int (JR.i32 0x76)), (JR.int (JR.i32 0x66)), (JR.int (JR.i32 0x59)), (JR.int (JR.i32 0x61)), (JR.int (JR.i32 0x53)), (JR.int (JR.i32 0x2b)), (JR.int (JR.i32 0x2c)), (JR.int (JR.i32 0x30)), (JR.int (JR.i32 0x31)), (JR.int (JR.i32 0x32)), (JR.int (JR.i32 0x33)), (JR.int (JR.i32 0x34)), (JR.int (JR.i32 0x35)), (JR.int (JR.i32 0x36)), (JR.int (JR.i32 0x37)), (JR.int (JR.i32 0x38)), (JR.int (JR.i32 0x39)), (JR.int (JR.i32 0x3a)), (JR.int (JR.i32 0x3b)), (JR.int (JR.i32 0x3c)), (JR.int (JR.i32 0x40)), (JR.int (JR.i32 0x41)), (JR.int (JR.i32 0x42)), (JR.int (JR.i32 0x43)), (JR.int (JR.i32 0x44)), (JR.int (JR.i32 0x45)), (JR.int (JR.i32 0x46)), (JR.int (JR.i32 0x47)), (JR.int (JR.i32 0x48)), (JR.int (JR.i32 0x49)), (JR.int (JR.i32 0x4a)), (JR.int (JR.i32 0x67)), (JR.int (JR.i32 0x77)), (JR.int (JR.i32 0x68)), (JR.int (JR.i32 0x71)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x58)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x7b)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x55)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x79)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)), (JR.int (JR.i32 0x0)) ])),
                JR.exec (JR.setField "_characterWidth" "" JR.this (JR.newArray "I" [ (JR.invoke "length_0" (JR.thisField "pattern") []) ])),
                JR.exec (JR.setField "characterArray" "" JR.this (JR.newArray "C" [ (JR.int 1) ])),
                JR.exec (JR.setField "size" "I" JR.this (JR.invoke "length_0" (JR.thisField "pattern") [])),
                JR.exec (JR.setField "lastCapIndex" "I" JR.this (JR.invoke "indexOf_1" (JR.thisField "pattern") [ (JR.char 90) ])),
                JR.exec (JR.setField "currentFont" "" JR.this (JR.callStatic Font.jm_getDefaultFont_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "shortPattern" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.ifElse (JR.callStatic AvianUtil.jm_isAvian_0 []) (JR.run [ 
                        JR.declare "shortPatterAsByteArray" "" (JR.arrayOf "B" [ (JR.int 32), (JR.int 48), (JR.int 49), (JR.int 50), (JR.int 51), (JR.int 52), (JR.int 53), (JR.int 54), (JR.int 55), (JR.int 56), (JR.int 57), (JR.int 65), (JR.int 66), (JR.int 67), (JR.int 68), (JR.int 69), (JR.int 70), (JR.int 71), (JR.int 72), (JR.int 73), (JR.int 74), (JR.int 75), (JR.int 76), (JR.int 77), (JR.int 78), (JR.int 79), (JR.int 80), (JR.int 81), (JR.int 82), (JR.int 83), (JR.int 84), (JR.int 85), (JR.int 86), (JR.int 87), (JR.int 88), (JR.int 89), (JR.int 90), (JR.int 97), (JR.int 98), (JR.int 99), (JR.int 100), (JR.int 101), (JR.int 102), (JR.int 103), (JR.int 104), (JR.int 105), (JR.int 106), (JR.int 107), (JR.int 108), (JR.int 109), (JR.int 110), (JR.int 111), (JR.int 112), (JR.int 113), (JR.int 114), (JR.int 115), (JR.int 116), (JR.int 117), (JR.int 118), (JR.int 119), (JR.int 120), (JR.int 121), (JR.int 122), (JR.int 46), (JR.int 63), (JR.int 33), (JR.int 36), (JR.int 37), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 84))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 84))), (JR.int 34), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 93))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 93))), (JR.int 94), (JR.int 38), (JR.int 42), (JR.int 40), (JR.int 41), (JR.int 95), (JR.int 43), (JR.int 45), (JR.int 61), (JR.int 91), (JR.int 93), (JR.int 123), (JR.int 125), (JR.int 59), (JR.int 39), (JR.int 35), (JR.int 58), (JR.int 64), (JR.int 126), (JR.int 44), (JR.int 47), (JR.int 60), (JR.int 62), (JR.int 92), (JR.int 124), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 87))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 87))) ]), 
                        JR.exec (JR.setLocal "shortPattern" "" (JR.withState JR.newString [ (JR.local "shortPatterAsByteArray") ])) ]) (JR.run [ 
                        JR.declare "shortPatterAsByteArray" "" (JR.arrayOf "B" [ (JR.int 32), (JR.int 48), (JR.int 49), (JR.int 50), (JR.int 51), (JR.int 52), (JR.int 53), (JR.int 54), (JR.int 55), (JR.int 56), (JR.int 57), (JR.int 65), (JR.int 66), (JR.int 67), (JR.int 68), (JR.int 69), (JR.int 70), (JR.int 71), (JR.int 72), (JR.int 73), (JR.int 74), (JR.int 75), (JR.int 76), (JR.int 77), (JR.int 78), (JR.int 79), (JR.int 80), (JR.int 81), (JR.int 82), (JR.int 83), (JR.int 84), (JR.int 85), (JR.int 86), (JR.int 87), (JR.int 88), (JR.int 89), (JR.int 90), (JR.int 97), (JR.int 98), (JR.int 99), (JR.int 100), (JR.int 101), (JR.int 102), (JR.int 103), (JR.int 104), (JR.int 105), (JR.int 106), (JR.int 107), (JR.int 108), (JR.int 109), (JR.int 110), (JR.int 111), (JR.int 112), (JR.int 113), (JR.int 114), (JR.int 115), (JR.int 116), (JR.int 117), (JR.int 118), (JR.int 119), (JR.int 120), (JR.int 121), (JR.int 122), (JR.int 46), (JR.int 63), (JR.int 33), (JR.int 36), (JR.int 37), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 84))), (JR.int 34), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 93))), (JR.int 94), (JR.int 38), (JR.int 42), (JR.int 40), (JR.int 41), (JR.int 95), (JR.int 43), (JR.int 45), (JR.int 61), (JR.int 91), (JR.int 93), (JR.int 123), (JR.int 125), (JR.int 59), (JR.int 39), (JR.int 35), (JR.int 58), (JR.int 64), (JR.int 126), (JR.int 44), (JR.int 47), (JR.int 60), (JR.int 62), (JR.int 92), (JR.int 124), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 87))) ]), 
                        JR.exec (JR.setLocal "shortPattern" "" (JR.withState JR.newString [ (JR.local "shortPatterAsByteArray") ])) ]), 
                    JR.exec (JR.setField "shortPattern" "" JR.this (JR.local "shortPattern")), 
                    JR.exec (JR.setField "scale" "I" JR.this (JR.local "scale")), 
                    JR.exec (JR.setField "CELLS_PER_ROW" "I" JR.this (JR.int 16)), 
                    JR.exec (JR.setField "fontSize" "I" JR.this (JR.map2 JR.mul ((JR.map2 JR.add (JR.int 20) (JR.int 6))) (JR.thisField "scale"))), 
                    JR.exec (JR.setField "baseCharWidth" "I" JR.this (JR.map2 JR.add (JR.thisField "fontSize") ((JR.map2 JR.mul (JR.int 6) (JR.thisField "scale"))))), 
                    JR.exec (JR.setField "cellSize" "I" JR.this (JR.map2 JR.add (JR.thisField "fontSize") ((JR.map2 JR.mul (JR.int 6) (JR.thisField "scale"))))), 
                    JR.exec (JR.setField "textureSize" "I" JR.this (JR.invoke "getAsTextureSize_1" JR.this [ (JR.map2 JR.mul (JR.thisField "CELLS_PER_ROW") (JR.thisField "cellSize")) ])), 
                    JR.exec (JR.setField "actualCellsPerRow" "I" JR.this (JR.map2 JR.div (JR.thisField "textureSize") (JR.thisField "cellSize"))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getAsTextureSize_1 : JR.Method
jm_getAsTextureSize_1 jheap jthis jargs =
    JR.method [ ( "textureSize", "I" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "textureSize") (JR.int 64)) (JR.run [ 
                        JR.exec (JR.setLocal "textureSize" "I" (JR.int 64)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "textureSize") (JR.int 128)) (JR.run [ 
                        JR.exec (JR.setLocal "textureSize" "I" (JR.int 128)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "textureSize") (JR.int 256)) (JR.run [ 
                        JR.exec (JR.setLocal "textureSize" "I" (JR.int 256)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "textureSize") (JR.int 512)) (JR.run [ 
                        JR.exec (JR.setLocal "textureSize" "I" (JR.int 512)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "textureSize") (JR.int 1024)) (JR.run [ 
                        JR.exec (JR.setLocal "textureSize" "I" (JR.int 1024)) ]) identity ]) ]) ]) ]), 
                    JR.return (JR.local "textureSize") ])
        (jregister jheap)
        jthis
        jargs


jm_getCellSize_1 : JR.Method
jm_getCellSize_1 jheap jthis jargs =
    JR.method [ ( "cellSize", "I" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "cellSize") (JR.int 16)) (JR.run [ 
                        JR.exec (JR.setLocal "cellSize" "I" (JR.int 16)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "cellSize") (JR.int 32)) (JR.run [ 
                        JR.exec (JR.setLocal "cellSize" "I" (JR.int 32)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "cellSize") (JR.int 64)) (JR.run [ 
                        JR.exec (JR.setLocal "cellSize" "I" (JR.int 64)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "cellSize") (JR.int 128)) (JR.run [ 
                        JR.exec (JR.setLocal "cellSize" "I" (JR.int 128)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "cellSize") (JR.int 256)) (JR.run [ 
                        JR.exec (JR.setLocal "cellSize" "I" (JR.int 256)) ]) identity ]) ]) ]) ]), 
                    JR.return (JR.local "cellSize") ])
        (jregister jheap)
        jthis
        jargs


jm_getYOffset_0 : JR.Method
jm_getYOffset_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return ((JR.map2 JR.mul ((JR.map2 JR.sub (JR.thisField "scale") (JR.int 1))) (JR.thisField "cellSize"))) ])
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

