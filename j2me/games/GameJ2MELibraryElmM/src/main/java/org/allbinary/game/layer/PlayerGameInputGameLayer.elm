module Org.Allbinary.Game.Layer.PlayerGameInputGameLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Game.Layer.AllBinaryGameLayer as AllBinaryGameLayer
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Game.Input.PlayerGameInput as PlayerGameInput
import Org.Allbinary.Game.Input.PlayerGameInputCompositeInterface as PlayerGameInputCompositeInterface
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.View.StaticViewPosition as StaticViewPosition
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "PlayerGameInputGameLayer"


jchain : List String
jchain =
    [ "PlayerGameInputGameLayer" ]
        ++ AllBinaryGameLayer.jchain
        ++ PlayerGameInputCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryGameLayer.jfields ++ [ ( "playerGameInput", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getPlayerGameInput_0", jm_getPlayerGameInput_0 )
        , ( "initInputProcessors_0", jm_initInputProcessors_0 )
        , ( "processInput_1", jm_processInput_1 )
        , ( "paint_1", jm_paint_1 ) ]
        AllBinaryGameLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerGameInputGameLayer"
        [ ( "jm_getPlayerGameInput_0", jm_getPlayerGameInput_0 ), ( "jm_initInputProcessors_0", jm_initInputProcessors_0 ), ( "jm_processInput_1", jm_processInput_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryGameLayer.jinit_3 JR.this [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.int 0), (JR.int 0) ]), (JR.new StaticViewPosition.jnew_3 [ (JR.int 0), (JR.int 0), (JR.int 0) ]) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "playerGameInput" "" JR.this (JR.new PlayerGameInput.jnew_3 [ (JR.invoke "getGameKeyEventList_0" JR.this []), (JR.new BasicArrayListD.jnew_0 []), (JR.local "playerInputId") ])), 
                    JR.declare "canvasStrings" "" (JR.callStatic CanvasStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Danger Danger Danger: Should Not Be Called Except For Testing Input"), JR.this, (JR.field "PAINT" (JR.local "canvasStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getPlayerGameInput_0 : JR.Method
jm_getPlayerGameInput_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "playerGameInput") ])
        (jregister jheap)
        jthis
        jargs


jm_initInputProcessors_0 : JR.Method
jm_initInputProcessors_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processInput_1 : JR.Method
jm_processInput_1 jheap jthis jargs =
    JR.method [ ( "myManager", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
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

