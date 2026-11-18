module Org.Allbinary.Game.Displayable.Canvas.NullAllBinaryGameCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.AllBinaryGameCanvasInterface as AllBinaryGameCanvasInterface


jclass : String
jclass =
    "NullAllBinaryGameCanvas"


jchain : List String
jchain =
    [ "NullAllBinaryGameCanvas" ]
        ++ AllBinaryGameCanvasInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getLayerManager_0", jm_getLayerManager_0 )
        , ( "addCommand_1", jm_addCommand_1 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "removeCommand_1", jm_removeCommand_1 )
        , ( "setCommandListener_1", jm_setCommandListener_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullAllBinaryGameCanvas"
        [ ( "jm_getLayerManager_0", jm_getLayerManager_0 ), ( "jm_addCommand_1", jm_addCommand_1 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_removeCommand_1", jm_removeCommand_1 ), ( "jm_setCommandListener_1", jm_setCommandListener_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_ALLBINARY_GAME_CANVAS", jstatic_NULL_ALLBINARY_GAME_CANVAS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ALLBINARY_GAME_CANVAS : JR.M
jstatic_NULL_ALLBINARY_GAME_CANVAS s =
    JR.static "NullAllBinaryGameCanvas" jclinit "NULL_ALLBINARY_GAME_CANVAS"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getLayerManager_0 : JR.Method
jm_getLayerManager_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_addCommand_1 : JR.Method
jm_addCommand_1 jheap jthis jargs =
    JR.method [ ( "cmd", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeCommand_1 : JR.Method
jm_removeCommand_1 jheap jthis jargs =
    JR.method [ ( "cmd", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setCommandListener_1 : JR.Method
jm_setCommandListener_1 jheap jthis jargs =
    JR.method [ ( "l", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
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

