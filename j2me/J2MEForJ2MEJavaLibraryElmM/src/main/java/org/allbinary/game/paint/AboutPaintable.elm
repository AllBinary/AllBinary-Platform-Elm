module Org.Allbinary.Game.Paint.AboutPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "AboutPaintable"


jchain : List String
jchain =
    [ "AboutPaintable" ]
        ++ Paintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "displayInfoSingleton", JR.defaultOf "" ), ( "ABOUT", JR.defaultOf "" ), ( "info", JR.defaultOf "" ), ( "developers", JR.defaultOf "" ), ( "paintableArray", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "charHeight", JR.defaultOf "I" ), ( "aboutBeginWidth", JR.defaultOf "I" ), ( "infoBeginWidth", JR.defaultOf "" ), ( "developersBeginWidth", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_2", jm_getInstance_2 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "getPaintableArrayInstance_0", jm_getPaintableArrayInstance_0 )
        , ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AboutPaintable"
        [ ( "jm_getInstance_2", jm_getInstance_2 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_getPaintableArrayInstance_0", jm_getPaintableArrayInstance_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "info", "" ), ( "developers", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "ABOUT" "" JR.this (JR.field "ABOUT" (JR.callStatic CanvasStrings.jm_getInstance_0 []))),
                JR.exec (JR.setField "paintableArray" "" JR.this (JR.arrayOf "" [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "info" "" JR.this (JR.local "info")), 
                    JR.exec (JR.setField "infoBeginWidth" "" JR.this (JR.newArray "I" [ (JR.alength (JR.thisField "info")) ])), 
                    JR.exec (JR.setField "developers" "" JR.this (JR.local "developers")), 
                    JR.exec (JR.setField "developersBeginWidth" "" JR.this (JR.newArray "I" [ (JR.alength (JR.thisField "developers")) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "info", "" ), ( "developers", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_2 [ (JR.local "info"), (JR.local "developers") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "charHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "aboutBeginWidth" "I" JR.this ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "ABOUT") ]) (JR.int 1)))), 
                    JR.declare "infoSize" "I" (JR.alength (JR.thisField "info")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "infoSize")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68587 -> (JR.setLocal "index" "I" (JR.lit jwN68587))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "infoBeginWidth") (\jaN68452 -> JR.andThen (JR.local "index") (\jiN68452 -> (JR.aset (JR.lit jaN68452) (JR.lit jiN68452) ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.aget (JR.thisField "info") (JR.local "index")) ]) (JR.int 1))))))) ]) ], 
                    JR.declare "size" "I" (JR.alength (JR.thisField "developers")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68797 -> (JR.setLocal "index" "I" (JR.lit jwN68797))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "developersBeginWidth") (\jaN68662 -> JR.andThen (JR.local "index") (\jiN68662 -> (JR.aset (JR.lit jaN68662) (JR.lit jiN68662) ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.aget (JR.thisField "developers") (JR.local "index")) ]) (JR.int 1))))))) ]) ], 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getPaintableArrayInstance_0 : JR.Method
jm_getPaintableArrayInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "paintableArray") ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "halfWidth" "I" (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfoSingleton") []), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "ABOUT"), (JR.map2 JR.sub (JR.local "halfWidth") (JR.thisField "aboutBeginWidth")), (JR.map2 JR.mul (JR.int 2) (JR.thisField "charHeight")), (JR.thisField "anchor") ]), 
                    JR.declare "infoSize" "I" (JR.alength (JR.thisField "info")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "infoSize")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69371 -> (JR.setLocal "index" "I" (JR.lit jwN69371))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.aget (JR.thisField "info") (JR.local "index")), (JR.map2 JR.sub (JR.local "halfWidth") (JR.aget (JR.thisField "infoBeginWidth") (JR.local "index"))), (JR.map2 JR.mul ((JR.map2 JR.add (JR.int 4) (JR.local "index"))) (JR.thisField "charHeight")), (JR.thisField "anchor") ]) ]) ], 
                    JR.declare "size" "I" (JR.alength (JR.thisField "developers")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69637 -> (JR.setLocal "index" "I" (JR.lit jwN69637))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.aget (JR.thisField "developers") (JR.local "index")), (JR.map2 JR.sub (JR.local "halfWidth") (JR.aget (JR.thisField "developersBeginWidth") (JR.local "index"))), (JR.map2 JR.mul ((JR.map2 JR.add (JR.map2 JR.add (JR.int 5) (JR.local "infoSize")) (JR.local "index"))) (JR.thisField "charHeight")), (JR.thisField "anchor") ]) ]) ] ])
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

