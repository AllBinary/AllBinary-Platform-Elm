module Javax.Microedition.Lcdui.ChoiceGroupImageFactory exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.lcdui
-}

import JR
import Org.Allbinary.MIDPUtil as MIDPUtil


jclass : String
jclass =
    "ChoiceGroupImageFactory"


jchain : List String
jchain =
    [ "ChoiceGroupImageFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "multiOff", JR.defaultOf "" ), ( "multiOn", JR.defaultOf "" ), ( "radioOff", JR.defaultOf "" ), ( "radioOn", JR.defaultOf "" ), ( "midpUtil", JR.defaultOf "" ), ( "imgMultiOffO", JR.defaultOf "" ), ( "imgMultiOnO", JR.defaultOf "" ), ( "imgRadioOffO", JR.defaultOf "" ), ( "imgRadioOnO", JR.defaultOf "" ), ( "imgMultiOff", JR.defaultOf "" ), ( "imgMultiOn", JR.defaultOf "" ), ( "imgRadioOff", JR.defaultOf "" ), ( "imgRadioOn", JR.defaultOf "" ), ( "imageArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getImageArray_0", jm_getImageArray_0 )
        , ( "init_1", jm_init_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ChoiceGroupImageFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getImageArray_0", jm_getImageArray_0 ), ( "jm_init_1", jm_init_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ChoiceGroupImageFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "multiOff" "" JR.this (JR.arrayOf "B" [ (JR.cast "B" (JR.map JR.neg (JR.int 119))), (JR.int 80), (JR.int 78), (JR.int 71), (JR.int 13), (JR.int 10), (JR.int 26), (JR.int 10), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 13), (JR.int 73), (JR.int 72), (JR.int 68), (JR.int 82), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 10), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 11), (JR.int 2), (JR.int 3), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 59), (JR.int 0), (JR.cast "B" (JR.map JR.neg (JR.int 12))), (JR.cast "B" (JR.map JR.neg (JR.int 117))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 6), (JR.int 80), (JR.int 76), (JR.int 84), (JR.int 69), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 57))), (JR.int 75), (JR.cast "B" (JR.map JR.neg (JR.int 33))), (JR.cast "B" (JR.map JR.neg (JR.int 8))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 30), (JR.int 73), (JR.int 68), (JR.int 65), (JR.int 84), (JR.int 120), (JR.cast "B" (JR.map JR.neg (JR.int 38))), (JR.int 99), (JR.int 96), (JR.int 96), (JR.int 96), (JR.int 96), (JR.int 12), (JR.int 101), (JR.cast "B" (JR.map JR.neg (JR.int 8))), (JR.cast "B" (JR.map JR.neg (JR.int 51))), (JR.cast "B" (JR.map JR.neg (JR.int 32))), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.int 32), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.cast "B" (JR.map JR.neg (JR.int 60))), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.cast "B" (JR.map JR.neg (JR.int 128))), (JR.int 11), (JR.int 51), (JR.cast "B" (JR.map JR.neg (JR.int 122))), (JR.int 50), (JR.cast "B" (JR.map JR.neg (JR.int 4))), (JR.int 6), (JR.int 0), (JR.int 63), (JR.int 116), (JR.int 3), (JR.int 1), (JR.int 53), (JR.cast "B" (JR.map JR.neg (JR.int 108))), (JR.int 39), (JR.cast "B" (JR.map JR.neg (JR.int 26))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 73), (JR.int 69), (JR.int 78), (JR.int 68), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.int 66), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 126))) ])),
                JR.exec (JR.setField "multiOn" "" JR.this (JR.arrayOf "B" [ (JR.cast "B" (JR.map JR.neg (JR.int 119))), (JR.int 80), (JR.int 78), (JR.int 71), (JR.int 13), (JR.int 10), (JR.int 26), (JR.int 10), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 13), (JR.int 73), (JR.int 72), (JR.int 68), (JR.int 82), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 10), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 11), (JR.int 2), (JR.int 3), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 59), (JR.int 0), (JR.cast "B" (JR.map JR.neg (JR.int 12))), (JR.cast "B" (JR.map JR.neg (JR.int 117))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 12), (JR.int 80), (JR.int 76), (JR.int 84), (JR.int 69), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.int 106), (JR.int 106), (JR.int 106), (JR.int 2), (JR.int 2), (JR.int 2), (JR.int 106), (JR.cast "B" (JR.map JR.neg (JR.int 103))), (JR.int 14), (JR.cast "B" (JR.map JR.neg (JR.int 47))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 53), (JR.int 73), (JR.int 68), (JR.int 65), (JR.int 84), (JR.int 120), (JR.cast "B" (JR.map JR.neg (JR.int 38))), (JR.int 99), (JR.int 96), (JR.int 96), (JR.int 124), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.cast "B" (JR.map JR.neg (JR.int 16))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 77))), (JR.int 3), (JR.cast "B" (JR.map JR.neg (JR.int 45))), (JR.int 65), (JR.cast "B" (JR.map JR.neg (JR.int 111))), (JR.int 15), (JR.int 76), (JR.int 12), (JR.int 108), (JR.int 12), (JR.int 76), (JR.int 12), (JR.cast "B" (JR.map JR.neg (JR.int 4))), (JR.int 12), (JR.int 76), (JR.int 12), (JR.int 18), (JR.int 12), (JR.int 76), (JR.cast "B" (JR.map JR.neg (JR.int 68))), (JR.int 127), (JR.int 24), (JR.cast "B" (JR.map JR.neg (JR.int 104))), (JR.int 126), (JR.int 45), (JR.int 96), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 7))), (JR.cast "B" (JR.map JR.neg (JR.int 11))), (JR.cast "B" (JR.map JR.neg (JR.int 109))), (JR.cast "B" (JR.map JR.neg (JR.int 127))), (JR.cast "B" (JR.map JR.neg (JR.int 23))), (JR.cast "B" (JR.map JR.neg (JR.int 65))), (JR.int 3), (JR.int 3), (JR.cast "B" (JR.map JR.neg (JR.int 29))), (JR.int 127), (JR.cast "B" (JR.map JR.neg (JR.int 122))), (JR.cast "B" (JR.map JR.neg (JR.int 113))), (JR.int 0), (JR.int 5), (JR.int 37), (JR.int 12), (JR.cast "B" (JR.map JR.neg (JR.int 34))), (JR.int 1), (JR.cast "B" (JR.map JR.neg (JR.int 99))), (JR.cast "B" (JR.map JR.neg (JR.int 83))), (JR.int 100), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 73), (JR.int 69), (JR.int 78), (JR.int 68), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.int 66), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 126))) ])),
                JR.exec (JR.setField "radioOff" "" JR.this (JR.arrayOf "B" [ (JR.cast "B" (JR.map JR.neg (JR.int 119))), (JR.int 80), (JR.int 78), (JR.int 71), (JR.int 13), (JR.int 10), (JR.int 26), (JR.int 10), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 13), (JR.int 73), (JR.int 72), (JR.int 68), (JR.int 82), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 11), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 11), (JR.int 2), (JR.int 3), (JR.int 0), (JR.int 0), (JR.int 0), (JR.cast "B" (JR.map JR.neg (JR.int 44))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 97))), (JR.cast "B" (JR.map JR.neg (JR.int 75))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 9), (JR.int 80), (JR.int 76), (JR.int 84), (JR.int 69), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.int 106), (JR.int 106), (JR.int 106), (JR.cast "B" (JR.map JR.neg (JR.int 44))), (JR.int 13), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 24))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 42), (JR.int 73), (JR.int 68), (JR.int 65), (JR.int 84), (JR.int 120), (JR.cast "B" (JR.map JR.neg (JR.int 38))), (JR.int 99), (JR.int 96), (JR.int 90), (JR.cast "B" (JR.map JR.neg (JR.int 59))), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.int 32), (JR.cast "B" (JR.map JR.neg (JR.int 63))), (JR.int 48), (JR.cast "B" (JR.map JR.neg (JR.int 127))), (JR.int 65), (JR.cast "B" (JR.map JR.neg (JR.int 127))), (JR.int 65), (JR.cast "B" (JR.map JR.neg (JR.int 127))), (JR.int 41), (JR.cast "B" (JR.map JR.neg (JR.int 127))), (JR.cast "B" (JR.map JR.neg (JR.int 31))), (JR.int 5), (JR.int 19), (JR.int 3), (JR.int 3), (JR.int 3), (JR.int 50), (JR.int 102), (JR.int 80), (JR.int 96), (JR.int 80), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 6))), (JR.cast "B" (JR.map JR.neg (JR.int 63))), (JR.int 80), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.cast "B" (JR.map JR.neg (JR.int 64))), (JR.cast "B" (JR.map JR.neg (JR.int 76))), (JR.cast "B" (JR.map JR.neg (JR.int 118))), (JR.int 1), (JR.int 0), (JR.int 113), (JR.int 24), (JR.int 5), (JR.int 61), (JR.int 73), (JR.cast "B" (JR.map JR.neg (JR.int 68))), (JR.cast "B" (JR.map JR.neg (JR.int 100))), (JR.int 98), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 73), (JR.int 69), (JR.int 78), (JR.int 68), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.int 66), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 126))) ])),
                JR.exec (JR.setField "radioOn" "" JR.this (JR.arrayOf "B" [ (JR.cast "B" (JR.map JR.neg (JR.int 119))), (JR.int 80), (JR.int 78), (JR.int 71), (JR.int 13), (JR.int 10), (JR.int 26), (JR.int 10), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 13), (JR.int 73), (JR.int 72), (JR.int 68), (JR.int 82), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 11), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 11), (JR.int 2), (JR.int 3), (JR.int 0), (JR.int 0), (JR.int 0), (JR.cast "B" (JR.map JR.neg (JR.int 44))), (JR.cast "B" (JR.map JR.neg (JR.int 62))), (JR.cast "B" (JR.map JR.neg (JR.int 97))), (JR.cast "B" (JR.map JR.neg (JR.int 75))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 12), (JR.int 80), (JR.int 76), (JR.int 84), (JR.int 69), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 1))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.cast "B" (JR.map JR.neg (JR.int 69))), (JR.int 106), (JR.int 106), (JR.int 106), (JR.int 2), (JR.int 2), (JR.int 2), (JR.int 106), (JR.cast "B" (JR.map JR.neg (JR.int 103))), (JR.int 14), (JR.cast "B" (JR.map JR.neg (JR.int 47))), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 50), (JR.int 73), (JR.int 68), (JR.int 65), (JR.int 84), (JR.int 120), (JR.cast "B" (JR.map JR.neg (JR.int 38))), (JR.int 5), (JR.cast "B" (JR.map JR.neg (JR.int 63))), (JR.int 65), (JR.int 13), (JR.int 0), (JR.int 32), (JR.int 12), (JR.int 4), (JR.cast "B" (JR.map JR.neg (JR.int 63))), (JR.cast "B" (JR.map JR.neg (JR.int 19))), (JR.cast "B" (JR.map JR.neg (JR.int 11))), (JR.cast "B" (JR.map JR.neg (JR.int 117))), (JR.int 1), (JR.int 18), (JR.int 68), (JR.cast "B" (JR.map JR.neg (JR.int 100))), (JR.int 10), (JR.int 52), (JR.int 19), (JR.int 94), (JR.int 72), (JR.int 64), (JR.int 17), (JR.int 101), (JR.cast "B" (JR.map JR.neg (JR.int 122))), (JR.int 44), (JR.cast "B" (JR.map JR.neg (JR.int 44))), (JR.cast "B" (JR.map JR.neg (JR.int 29))), (JR.int 98), (JR.cast "B" (JR.map JR.neg (JR.int 52))), (JR.int 89), (JR.int 77), (JR.cast "B" (JR.map JR.neg (JR.int 102))), (JR.int 40), (JR.int 2), (JR.int 85), (JR.cast "B" (JR.map JR.neg (JR.int 95))), (JR.cast "B" (JR.map JR.neg (JR.int 73))), (JR.cast "B" (JR.map JR.neg (JR.int 63))), (JR.cast "B" (JR.map JR.neg (JR.int 104))), (JR.cast "B" (JR.map JR.neg (JR.int 63))), (JR.int 37), (JR.cast "B" (JR.map JR.neg (JR.int 117))), (JR.int 15), (JR.cast "B" (JR.map JR.neg (JR.int 40))), (JR.int 119), (JR.int 10), (JR.int 41), (JR.int 78), (JR.int 26), (JR.cast "B" (JR.map JR.neg (JR.int 79))), (JR.int 59), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 73), (JR.int 69), (JR.int 78), (JR.int 68), (JR.cast "B" (JR.map JR.neg (JR.int 82))), (JR.int 66), (JR.int 96), (JR.cast "B" (JR.map JR.neg (JR.int 126))) ])),
                JR.exec (JR.setField "midpUtil" "" JR.this (JR.callStatic MIDPUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imgMultiOffO" "" JR.this (JR.invoke "createImageFromByteArray_3" (JR.thisField "midpUtil") [ (JR.thisField "multiOff"), (JR.int 0), (JR.alength (JR.thisField "multiOff")) ])),
                JR.exec (JR.setField "imgMultiOnO" "" JR.this (JR.invoke "createImageFromByteArray_3" (JR.thisField "midpUtil") [ (JR.thisField "multiOn"), (JR.int 0), (JR.alength (JR.thisField "multiOn")) ])),
                JR.exec (JR.setField "imgRadioOffO" "" JR.this (JR.invoke "createImageFromByteArray_3" (JR.thisField "midpUtil") [ (JR.thisField "radioOff"), (JR.int 0), (JR.alength (JR.thisField "radioOff")) ])),
                JR.exec (JR.setField "imgRadioOnO" "" JR.this (JR.invoke "createImageFromByteArray_3" (JR.thisField "midpUtil") [ (JR.thisField "radioOn"), (JR.int 0), (JR.alength (JR.thisField "radioOn")) ])),
                JR.exec (JR.setField "imgMultiOff" "" JR.this (JR.thisField "imgMultiOffO")),
                JR.exec (JR.setField "imgMultiOn" "" JR.this (JR.thisField "imgMultiOnO")),
                JR.exec (JR.setField "imgRadioOff" "" JR.this (JR.thisField "imgRadioOffO")),
                JR.exec (JR.setField "imgRadioOn" "" JR.this (JR.thisField "imgRadioOnO")),
                JR.exec (JR.setField "imageArray" "" JR.this (JR.arrayOf "" [ (JR.thisField "imgMultiOff"), (JR.thisField "imgMultiOn"), (JR.thisField "imgRadioOff"), (JR.thisField "imgRadioOn") ])),
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


jm_getImageArray_0 : JR.Method
jm_getImageArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "imageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "imgMultiOff" "" JR.this (JR.aget (JR.local "imageArray") (JR.int 0))), 
                    JR.exec (JR.andThen (JR.thisField "imageArray") (\jaN69413 -> JR.andThen (JR.int 0) (\jiN69413 -> (JR.aset (JR.lit jaN69413) (JR.lit jiN69413) (JR.thisField "imgMultiOff"))))), 
                    JR.exec (JR.setField "imgMultiOn" "" JR.this (JR.aget (JR.local "imageArray") (JR.int 1))), 
                    JR.exec (JR.andThen (JR.thisField "imageArray") (\jaN69488 -> JR.andThen (JR.int 1) (\jiN69488 -> (JR.aset (JR.lit jaN69488) (JR.lit jiN69488) (JR.thisField "imgMultiOn"))))), 
                    JR.exec (JR.setField "imgRadioOff" "" JR.this (JR.aget (JR.local "imageArray") (JR.int 2))), 
                    JR.exec (JR.andThen (JR.thisField "imageArray") (\jaN69563 -> JR.andThen (JR.int 2) (\jiN69563 -> (JR.aset (JR.lit jaN69563) (JR.lit jiN69563) (JR.thisField "imgRadioOff"))))), 
                    JR.exec (JR.setField "imgRadioOn" "" JR.this (JR.aget (JR.local "imageArray") (JR.int 3))), 
                    JR.exec (JR.andThen (JR.thisField "imageArray") (\jaN69638 -> JR.andThen (JR.int 3) (\jiN69638 -> (JR.aset (JR.lit jaN69638) (JR.lit jiN69638) (JR.thisField "imgRadioOn"))))) ])
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

