module Org.Allbinary.Game.Displayable.Canvas.PopupCommandFormInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.CommandFormInputProcessor as CommandFormInputProcessor


jclass : String
jclass =
    "PopupCommandFormInputProcessor"


jchain : List String
jchain =
    [ "PopupCommandFormInputProcessor" ]
        ++ CommandFormInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    CommandFormInputProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processInput_1", jm_processInput_1 )
        , ( "processMotionInput_1", jm_processMotionInput_1 ) ]
        CommandFormInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PopupCommandFormInputProcessor"
        [ ( "jm_processInput_1", jm_processInput_1 ), ( "jm_processMotionInput_1", jm_processMotionInput_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "playerInputId", "I" ), ( "gameCanvas", "" ), ( "form", "" ), ( "popupMenuInputProcessor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CommandFormInputProcessor.jinit_4 JR.this [ (JR.local "gameKeyEventList"), (JR.local "playerInputId"), (JR.local "gameCanvas"), (JR.local "form") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_processInput_1 : JR.Method
jm_processInput_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.callVia CommandFormInputProcessor.jvtable "processInput_1" JR.this [ (JR.local "key") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processMotionInput_1 : JR.Method
jm_processMotionInput_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CommandFormInputProcessor.jvtable "processMotionInput_1" JR.this [ (JR.local "motionGestureEvent") ]) ])
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

