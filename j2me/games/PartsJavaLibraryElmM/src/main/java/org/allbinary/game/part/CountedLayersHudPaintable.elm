module Org.Allbinary.Game.Part.CountedLayersHudPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "CountedLayersHudPaintable"


jchain : List String
jchain =
    [ "CountedLayersHudPaintable" ]
        ++ PaintableInterface.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "displayInfoSingleton", JR.defaultOf "" ), ( "partInterfaceArray", JR.defaultOf "" ), ( "countedTotalStringColor", JR.defaultOf "I" ), ( "countedPartsBorder", JR.defaultOf "I" ), ( "startIndex", JR.defaultOf "I" ), ( "dropSize", JR.defaultOf "I" ), ( "myFontProcessor", JR.defaultOf "" ), ( "height", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CountedLayersHudPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        [ ( "jstatic_XXStringWidth", jstatic_XXStringWidth ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_XXStringWidth : JR.M
jstatic_XXStringWidth s =
    JR.static "CountedLayersHudPaintable" jclinit "XXStringWidth"
        (JR.int 0)
        s


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "partInterfaceArray", "" ), ( "dropSize", "I" ), ( "startIndex", "I" ), ( "countedTotalStringColor", "I" ), ( "countedPartsBorder", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "partInterfaceArray" "" JR.this (JR.local "partInterfaceArray")), 
                    JR.exec (JR.setField "startIndex" "I" JR.this (JR.local "startIndex")), 
                    JR.exec (JR.setField "countedTotalStringColor" "I" JR.this (JR.local "countedTotalStringColor")), 
                    JR.exec (JR.setField "countedPartsBorder" "I" JR.this (JR.local "countedPartsBorder")), 
                    JR.exec (JR.setField "dropSize" "I" JR.this (JR.local "dropSize")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "height" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "dropSize") (JR.invoke "getHeight_0" (JR.local "font") [])) (JR.run [ 
                        JR.exec (JR.setField "height" "I" JR.this (JR.thisField "dropSize")) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals jstatic_XXStringWidth (JR.int 0)) (JR.run [ 
                        JR.declare "XXString" "" (JR.str "XX"), 
                        JR.exec (JR.setStatic "CountedLayersHudPaintable.XXStringWidth" "I" (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.local "XXString") ])) ]) identity, 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "lastWidth" "I" (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") []), 
                    JR.declare "widthEdge" "I" (JR.map2 JR.sub (JR.local "lastWidth") (JR.thisField "dropSize")), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "partInterfaceArray")), 
                    JR.declare "count" "I" (JR.int 0), 
                    JR.declare "y" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "countedLayerInterfaceFactory" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "pickedUpLayerInterfaceFactoryInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "layerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "charArray" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.thisField "startIndex"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70517 -> (JR.setLocal "index" "I" (JR.lit jwN70517))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "countedLayerInterfaceFactory" "" (JR.aget (JR.thisField "partInterfaceArray") (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getTotal_0" (JR.local "countedLayerInterfaceFactory") []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "pickedUpLayerInterfaceFactoryInterface" "" (JR.invoke "getCountedPickedUpLayerInterfaceFactory_0" (JR.local "countedLayerInterfaceFactory") [])), 
                            JR.exec (JR.setLocal "layerInterface" "" (JR.invoke "getIconLayer_0" (JR.local "pickedUpLayerInterfaceFactoryInterface") [])), 
                            JR.exec (JR.setLocal "y" "I" (JR.map2 JR.add (JR.int 40) ((JR.map2 JR.mul (JR.local "count") (JR.thisField "height"))))), 
                            JR.exec (JR.invoke "setPosition_3" (JR.local "layerInterface") [ (JR.local "widthEdge"), (JR.local "y"), (JR.invoke "getZP_0" (JR.local "layerInterface") []) ]), 
                            JR.exec (JR.invoke "paint_1" (JR.local "layerInterface") [ (JR.local "graphics") ]), 
                            JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "countedTotalStringColor") ]), 
                            JR.exec (JR.invoke "paint_1" (JR.local "countedLayerInterfaceFactory") [ (JR.local "graphics") ]), 
                            JR.exec (JR.setLocal "charArray" "" (JR.invoke "getTotalString_0" (JR.local "countedLayerInterfaceFactory") [])), 
                            JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray"), (JR.int 0), (JR.alength (JR.local "charArray")), (JR.map2 JR.sub (JR.local "widthEdge") (JR.invoke "getXOffset_0" (JR.local "countedLayerInterfaceFactory") [])), (JR.local "y"), (JR.int 0) ]), 
                            JR.exec (JR.postUpdate (JR.local "count") (\jwN70442 -> (JR.setLocal "count" "I" (JR.lit jwN70442))) JR.increment) ]) identity ]) ], 
                    JR.ifElse (JR.map2 JR.greater (JR.local "count") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "countedPartsBorder") ]), 
                        JR.exec (JR.invoke "drawRect_4" (JR.local "graphics") [ (JR.map2 JR.sub (JR.local "lastWidth") ((JR.map2 JR.add jstatic_XXStringWidth (JR.thisField "dropSize")))), (JR.int 40), (JR.map2 JR.add jstatic_XXStringWidth (JR.thisField "dropSize")), (JR.map2 JR.add ((JR.map2 JR.mul (JR.local "count") (JR.thisField "height"))) (JR.int 3)) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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

