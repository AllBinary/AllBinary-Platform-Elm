module Org.Allbinary.Game.Displayable.Canvas.GameInputMappingInstructionsCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Game.Paint.ColorFillPaintableFactory as ColorFillPaintableFactory
import Javax.Microedition.Lcdui.Command as Command
import Org.Allbinary.Graphics.Draw.DrawStringUtil as DrawStringUtil
import Org.Allbinary.Game.Displayable.Canvas.GameCommandCanvas as GameCommandCanvas
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameInputMappingInstructionsCanvas"


jchain : List String
jchain =
    [ "GameInputMappingInstructionsCanvas" ]
        ++ GameCommandCanvas.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameCommandCanvas.jfields ++ [ ( "drawStringUtil", JR.defaultOf "" ), ( "TITLE", JR.defaultOf "" ), ( "instructions", JR.defaultOf "" ), ( "colorFillPaintable", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "initCommands_1", jm_initCommands_1 )
        , ( "paint_1", jm_paint_1 ) ]
        GameCommandCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputMappingInstructionsCanvas"
        [ ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_DISPLAY", jstatic_DISPLAY ), ( "jstatic_CLOSE", jstatic_CLOSE ), ( "jstatic_NAME", jstatic_NAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_DISPLAY : JR.M
jstatic_DISPLAY s =
    JR.static "GameInputMappingInstructionsCanvas" jclinit "DISPLAY"
        (JR.new Command.jnew_4 [ (JR.str "Help"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])
        s


jstatic_CLOSE : JR.M
jstatic_CLOSE s =
    JR.static "GameInputMappingInstructionsCanvas" jclinit "CLOSE"
        (JR.new Command.jnew_4 [ (JR.str "Close"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "GameInputMappingInstructionsCanvas" jclinit "NAME"
        (JR.str "GameInputMappingInstructionsCanvas")
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "allBinaryGameLayerManager", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameCommandCanvas.jinit_4 JR.this [ (JR.local "commandListener"), jstatic_NAME, (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []) ]),
                JR.exec (JR.setField "drawStringUtil" "" JR.this (JR.callStatic DrawStringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "TITLE" "" JR.this (JR.str "Input Instructions")),
                JR.exec (JR.setField "instructions" "" JR.this (JR.arrayOf "" [ (JR.str "Add Input Mapping:"), (JR.str "1. Select the desired action by generating a currently defined input for a given action."), (JR.str "(Example: Press the '1' key to select the Fire action)"), (JR.str "2. Make the newly desired input for the selected action."), (JR.str "(Example: Press 'f' to add it to the selected action)"), (JR.str "Note: If the input is already mapped to another action then it will not be added. You"), (JR.str "will need to deleted from the other action before adding it to another."), (JR.str "Warning: Not all keys map for a given platform and show as Unknown."), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.str "Remove Input Mapping:"), (JR.str "1. Select the desired action by generating a currently defined input for a given action."), (JR.str "(Example: Press the key '1' to select the Fire action)"), (JR.str "2. Select a mapped input for the selected action."), (JR.str "(Example: Press the key '1' to select the '1' key input for the selected Fire action)"), (JR.str "3. Press the Delete Key.") ])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.setField "colorFillPaintable" "" JR.this (JR.invoke "getInstance_2" (JR.callStatic ColorFillPaintableFactory.jm_getInstance_0 []) [ (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.bool False) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ jstatic_CLOSE ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "colorFillPaintable") [ (JR.local "graphics") ]), 
                    JR.declare "halfWidth" "I" (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfo") []), 
                    JR.declare "beginWidth" "I" ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.thisField "TITLE") ]) (JR.int 1))), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "foregroundColor") ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "TITLE"), (JR.map2 JR.sub (JR.local "halfWidth") (JR.local "beginWidth")), (JR.thisField "fontHeight"), (JR.thisField "anchor") ]), 
                    JR.exec (JR.invoke "drawCenterStrings_6" (JR.thisField "drawStringUtil") [ (JR.local "graphics"), (JR.thisField "instructions"), (JR.invoke "getLastWidth_0" (JR.thisField "displayInfo") []), (JR.thisField "fontHeight"), (JR.local "halfWidth"), (JR.map2 JR.mul (JR.int 3) (JR.thisField "fontHeight")) ]), 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
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

