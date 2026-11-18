module Org.Allbinary.Game.Score.HighScoresPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.ColorChangeListener as ColorChangeListener
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Game.Score.NullHighScoresSingletonFactory as NullHighScoresSingletonFactory
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "HighScoresPaintable"


jchain : List String
jchain =
    [ "HighScoresPaintable" ]
        ++ Paintable.jchain
        ++ ColorChangeListener.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "displayInfoSingleton", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "highScores", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ), ( "charHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setHighScores_1", jm_setHighScores_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setHighScores_1", jm_setHighScores_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "highScores" "" JR.this (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
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
                    JR.exec (JR.setField "charHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.declare "colorChangeEvent" "" (JR.local "eventObject"), 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.invoke "getBasicColorP_0" (JR.local "colorChangeEvent") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "width" "I" (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") []), 
                    JR.declare "height" "I" (JR.invoke "getLastHeight_0" (JR.thisField "displayInfoSingleton") []), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.invoke "getBasicColorP_0" JR.this []) []) ]), 
                    JR.declare "heading" "" (JR.invoke "getHeading_0" (JR.thisField "highScores") []), 
                    JR.declare "topScoresWidth" "I" ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.local "heading") ]) (JR.int 1))), 
                    JR.declare "charHeight" "I" (JR.thisField "charHeight"), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "heading"), (JR.map2 JR.sub ((JR.map2 JR.shr (JR.local "width") (JR.int 1))) (JR.local "topScoresWidth")), (JR.local "charHeight"), (JR.thisField "anchor") ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.invoke "getColumnOneHeading_0" (JR.thisField "highScores") []), (JR.int 10), (JR.map2 JR.mul (JR.local "charHeight") (JR.int 3)), (JR.thisField "anchor") ]), 
                    JR.declare "columnTwoHeading" "" (JR.invoke "getColumnTwoHeading_0" (JR.thisField "highScores") []), 
                    JR.declare "columnTwoHeadingWidth" "I" (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.local "columnTwoHeading") ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "columnTwoHeading"), (JR.map2 JR.sub (JR.map2 JR.sub (JR.local "width") (JR.int 10)) (JR.local "columnTwoHeadingWidth")), (JR.map2 JR.mul (JR.local "charHeight") (JR.int 3)), (JR.thisField "anchor") ]), 
                    JR.declare "index" "I" (JR.int 4), 
                    JR.declare "largestSecondColumnWidth" "I" (JR.local "columnTwoHeadingWidth"), 
                    JR.declare "list" "" (JR.invoke "getList_0" (JR.thisField "highScores") []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "vectorIndex" "I" (JR.int 0), 
                    JR.declare "highScore" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.and (JR.map2 JR.less (JR.local "vectorIndex") (JR.local "size")) (JR.map2 JR.less (JR.map2 JR.mul (JR.local "charHeight") (JR.local "index")) (JR.map2 JR.sub (JR.local "height") ((JR.map2 JR.mul (JR.local "charHeight") (JR.int 2)))))) (JR.run [ 
                        JR.exec (JR.setLocal "highScore" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "vectorIndex"))), 
                        JR.declare "nextScoreWidth" "I" (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.invoke "getScoreString_0" (JR.local "highScore") []) ]), 
                        JR.ifElse (JR.map2 JR.greater (JR.local "nextScoreWidth") (JR.local "largestSecondColumnWidth")) (JR.run [ 
                            JR.exec (JR.setLocal "largestSecondColumnWidth" "I" (JR.local "nextScoreWidth")) ]) identity, 
                        JR.exec (JR.postUpdate (JR.local "vectorIndex") (\jwN70024 -> (JR.setLocal "vectorIndex" "I" (JR.lit jwN70024))) JR.increment) ]), 
                    JR.exec (JR.setLocal "vectorIndex" "I" (JR.int 0)), 
                    JR.while (JR.and (JR.map2 JR.less (JR.local "vectorIndex") (JR.local "size")) (JR.map2 JR.less (JR.map2 JR.mul (JR.local "charHeight") (JR.local "index")) (JR.map2 JR.sub (JR.local "height") ((JR.map2 JR.mul (JR.local "charHeight") (JR.int 2)))))) (JR.run [ 
                        JR.exec (JR.setLocal "highScore" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "vectorIndex"))), 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.invoke "getName_0" (JR.local "highScore") []), (JR.int 10), (JR.map2 JR.mul (JR.local "charHeight") (JR.local "index")), (JR.thisField "anchor") ]), 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.invoke "getScoreString_0" (JR.local "highScore") []), (JR.map2 JR.sub (JR.map2 JR.sub (JR.local "width") (JR.int 10)) (JR.local "largestSecondColumnWidth")), (JR.map2 JR.mul (JR.local "charHeight") (JR.local "index")), (JR.thisField "anchor") ]), 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN70396 -> (JR.setLocal "index" "I" (JR.lit jwN70396))) JR.increment), 
                        JR.exec (JR.postUpdate (JR.local "vectorIndex") (\jwN70413 -> (JR.setLocal "vectorIndex" "I" (JR.lit jwN70413))) JR.increment) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScores_1 : JR.Method
jm_setHighScores_1 jheap jthis jargs =
    JR.method [ ( "highScores", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "highScores" "" JR.this (JR.local "highScores")) ])
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

