module Org.Allbinary.Media.AllBinaryVisualDebugVibration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media
-}

import JR
import Org.Allbinary.Media.AllBinaryVibrationME as AllBinaryVibrationME
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import JInteger
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "AllBinaryVisualDebugVibration"


jchain : List String
jchain =
    [ "AllBinaryVisualDebugVibration" ]
        ++ AllBinaryVibrationME.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryVibrationME.jfields ++ [ ( "displayInfoSingleton", JR.defaultOf "" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "VIBRATING", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ), ( "width", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "vibrate_3", jm_vibrate_3 )
        , ( "paint_1", jm_paint_1 ) ]
        AllBinaryVibrationME.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryVisualDebugVibration"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_vibrate_3", jm_vibrate_3 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryVibrationME.jinit_0 JR.this []),
            JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ JInteger.jstatic_MAX_VALUE ])),
                JR.exec (JR.setField "VIBRATING" "" JR.this (JR.str "Vibrating")),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "width" "I" JR.this (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "VIBRATING") ])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_vibrate_3 : JR.Method
jm_vibrate_3 jheap jthis jargs =
    JR.method [ ( "duration", "I" ), ( "type", "I" ), ( "volume", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "timeDelayHelper") (\jtN67830 -> (JR.setField "delay" "I" (JR.lit jtN67830) (JR.local "duration")))) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "timeDelayHelper") []) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "timeDelayHelper") (\jtN67992 -> (JR.setField "delay" "I" (JR.lit jtN67992) JInteger.jstatic_MAX_VALUE))), 
                        JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "VIBRATING"), (JR.map2 JR.sub (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfoSingleton") []) ((JR.map2 JR.shr (JR.thisField "width") (JR.int 1)))), (JR.int 0), (JR.thisField "anchor") ]) ]) identity ])
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

