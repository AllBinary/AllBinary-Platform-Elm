module Org.Allbinary.Game.Displayable.Canvas.NoMenuInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Game.Displayable.Canvas.BasicMenuInputProcessor as BasicMenuInputProcessor
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas


jclass : String
jclass =
    "NoMenuInputProcessor"


jchain : List String
jchain =
    [ "NoMenuInputProcessor" ]
        ++ BasicMenuInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicMenuInputProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 )
        , ( "onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 )
        , ( "onMotionGestureEvent_1", jm_onMotionGestureEvent_1 ) ]
        BasicMenuInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoMenuInputProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 ), ( "jm_onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 ), ( "jm_onMotionGestureEvent_1", jm_onMotionGestureEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "NoMenuInputProcessor" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicMenuInputProcessor.jinit_3 JR.this [ (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []), (JR.map JR.neg (JR.int 1)), NullCanvas.jstatic_NULL_CANVAS ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_onDownGameKeyEvent_1 : JR.Method
jm_onDownGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onUpGameKeyEvent_1 : JR.Method
jm_onUpGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onMotionGestureEvent_1 : JR.Method
jm_onMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
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

