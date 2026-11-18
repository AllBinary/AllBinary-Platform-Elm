module Org.Allbinary.Game.Score.HighScoresCanvasLevelChangeInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Game.Input.Event.GameKeyEventHandler as GameKeyEventHandler
import Org.Allbinary.Game.Input.Event.GameKeyEventUtil as GameKeyEventUtil
import Org.Allbinary.Game.Score.HighScoresCanvasInputProcessor as HighScoresCanvasInputProcessor
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "HighScoresCanvasLevelChangeInputProcessor"


jchain : List String
jchain =
    [ "HighScoresCanvasLevelChangeInputProcessor" ]
        ++ HighScoresCanvasInputProcessor.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScoresCanvasInputProcessor.jfields ++ [ ( "displayInfoSingleton", JR.defaultOf "" ), ( "INSTRUCTIONS", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ), ( "fontHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "update_0", jm_update_0 )
        , ( "paint_1", jm_paint_1 ) ]
        HighScoresCanvasInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresCanvasLevelChangeInputProcessor"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "highScoresCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HighScoresCanvasInputProcessor.jinit_1 JR.this [ (JR.local "highScoresCanvas") ]),
                JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "INSTRUCTIONS" "" JR.this (JR.str "(Right = Next Track, Left = Previous Track)")),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                JR.exec (JR.setField "fontHeight" "I" JR.this (JR.int 0)),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "fontHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addListener_1" (JR.callStatic GameKeyEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic GameKeyEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getGameKeyEventList_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72119 -> (JR.setLocal "index" "I" (JR.lit jwN72119))) JR.increment) ]) (JR.run [ 
                        JR.declare "anyType" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.declare "key" "I" (JR.callStatic GameKeyEventUtil.jm_getKey_1 [ (JR.local "anyType") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_RIGHT) (JR.run [ 
                            JR.exec (JR.invoke "nextGameLevel_0" (JR.invoke "getGameInfo_0" (JR.invoke "getHighScoresCanvas_0" JR.this []) []) []) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_LEFT) (JR.run [ 
                            JR.exec (JR.invoke "previousGameLevel_0" (JR.invoke "getGameInfo_0" (JR.invoke "getHighScoresCanvas_0" JR.this []) []) []) ]) identity ]), 
                        JR.exec (JR.invoke "executeUpdate_0" (JR.invoke "getHighScoresCanvas_0" JR.this []) []) ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.local "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "width" "I" (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") []), 
                    JR.declare "topScoresWidth" "I" ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.thisField "INSTRUCTIONS") ]) (JR.int 1))), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "INSTRUCTIONS"), (JR.map2 JR.sub ((JR.map2 JR.shr (JR.local "width") (JR.int 1))) (JR.local "topScoresWidth")), (JR.map2 JR.mul (JR.thisField "fontHeight") (JR.int 2)), (JR.thisField "anchor") ]) ])
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

