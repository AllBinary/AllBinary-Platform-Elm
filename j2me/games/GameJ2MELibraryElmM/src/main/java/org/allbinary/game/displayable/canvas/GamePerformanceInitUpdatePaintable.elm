module Org.Allbinary.Game.Displayable.Canvas.GamePerformanceInitUpdatePaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Canvas.GameStatisticsFactory as GameStatisticsFactory
import Org.Allbinary.Graphics.Paint.InitUpdatePaintable as InitUpdatePaintable
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "GamePerformanceInitUpdatePaintable"


jchain : List String
jchain =
    [ "GamePerformanceInitUpdatePaintable" ]
        ++ InitUpdatePaintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    InitUpdatePaintable.jfields ++ [ ( "halfHeight", JR.defaultOf "I" ), ( "yArray", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "baseRefreshHelperCharArray", JR.defaultOf "" ), ( "defaultStringWidth", JR.defaultOf "I" ), ( "RED", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "init_0", jm_init_0 )
        , ( "update_0", jm_update_0 )
        , ( "paint_1", jm_paint_1 ) ]
        InitUpdatePaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GamePerformanceInitUpdatePaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_init_0", jm_init_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect InitUpdatePaintable.jinit_0 JR.this []),
            JR.exec (JR.setField "halfHeight" "I" JR.this (JR.invoke "getLastHalfHeight_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "yArray" "" JR.this (JR.arrayOf "I" [ (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)), (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)), (JR.map2 JR.add (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)) (JR.int 15)), (JR.map2 JR.add (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)) (JR.int 15)), (JR.map2 JR.add (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)) (JR.int 30)), (JR.map2 JR.add (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)) (JR.int 30)), (JR.map2 JR.add (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)) (JR.int 45)), (JR.map2 JR.add (JR.map2 JR.add (JR.thisField "halfHeight") (JR.int 30)) (JR.int 45)) ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "baseRefreshHelperCharArray" "" JR.this (JR.newArray "C" [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "RED" "I" JR.this (JR.invoke "intValue_0" (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) [])),
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
                    JR.exec (JR.setField "defaultStringWidth" "I" JR.this (JR.callStatic MyFontProcessor.jm_defaultStringWidth_2 [ (JR.local "font"), (JR.int 2) ])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "baseRefreshHelperCharArray" "" JR.this (JR.invoke "to2DCharArray_0" (JR.callStatic GameStatisticsFactory.jm_getInstance_0 []) [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "RED") ]), 
                    JR.declare "charArray" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "charArray2" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size2" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "size3" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "size" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "baseRefreshHelperCharArray")) (JR.int 2)), 
                    JR.run [ JR.declare "index" "I" (JR.local "size"), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.setLocal "index" "I" (JR.map2 JR.sub (JR.local "index") (JR.int 2))) ]) (JR.run [ 
                        JR.exec (JR.setLocal "charArray" "" (JR.aget (JR.thisField "baseRefreshHelperCharArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "charArray2" "" (JR.aget (JR.thisField "baseRefreshHelperCharArray") (JR.map2 JR.add (JR.local "index") (JR.int 1)))), 
                        JR.exec (JR.setLocal "size2" "I" (JR.alength (JR.local "charArray"))), 
                        JR.exec (JR.setLocal "size3" "I" (JR.alength (JR.local "charArray2"))), 
                        JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray"), (JR.int 0), (JR.local "size2"), (JR.int 0), (JR.aget (JR.thisField "yArray") (JR.local "index")), (JR.int 0) ]), 
                        JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray2"), (JR.int 0), (JR.local "size3"), (JR.map2 JR.mul (JR.local "size2") (JR.thisField "defaultStringWidth")), (JR.aget (JR.thisField "yArray") (JR.map2 JR.add (JR.local "index") (JR.int 1))), (JR.int 0) ]) ]) ] ])
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

