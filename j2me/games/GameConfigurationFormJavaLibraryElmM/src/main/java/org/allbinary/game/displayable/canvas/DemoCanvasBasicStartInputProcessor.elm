module Org.Allbinary.Game.Displayable.Canvas.DemoCanvasBasicStartInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.BasicMenuInputProcessor as BasicMenuInputProcessor
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Input.GameInputStrings as GameInputStrings
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "DemoCanvasBasicStartInputProcessor"


jchain : List String
jchain =
    [ "DemoCanvasBasicStartInputProcessor" ]
        ++ BasicMenuInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicMenuInputProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processInputList_0", jm_processInputList_0 ) ]
        BasicMenuInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoCanvasBasicStartInputProcessor"
        [ ( "jm_processInputList_0", jm_processInputList_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "gameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicMenuInputProcessor.jinit_3 JR.this [ (JR.local "gameKeyEventList"), (JR.map JR.neg (JR.int 1)), (JR.local "gameCanvas") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_processInputList_0 : JR.Method
jm_processInputList_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getGameKeyEventList_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "gameKeyEvent" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69585 -> (JR.setLocal "index" "I" (JR.lit jwN69585))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameKeyEvent" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Start GameKey: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "gameKeyEvent") ]) ]) []), JR.this, (JR.field "PROCESS_INPUT" (JR.callStatic GameInputStrings.jm_getInstance_0 [])) ]) ]) ], 
                    JR.exec (JR.invoke "commandAction_2" (JR.invoke "getCustomCommandListener_0" (JR.invoke "getCanvas_0" JR.this []) []) [ (JR.field "START_COMMAND" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])), NullCanvas.jstatic_NULL_CANVAS ]), 
                    JR.return (JR.local "size") ])
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

