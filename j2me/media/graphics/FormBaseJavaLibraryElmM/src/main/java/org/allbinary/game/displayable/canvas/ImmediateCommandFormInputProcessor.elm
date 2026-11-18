module Org.Allbinary.Game.Displayable.Canvas.ImmediateCommandFormInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.CommandFormInputProcessor as CommandFormInputProcessor
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "ImmediateCommandFormInputProcessor"


jchain : List String
jchain =
    [ "ImmediateCommandFormInputProcessor" ]
        ++ CommandFormInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    CommandFormInputProcessor.jfields ++ [ ( "timeHelper", JR.defaultOf "" ), ( "gameCommandCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onPressGameKeyEvent_1", jm_onPressGameKeyEvent_1 )
        , ( "onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 )
        , ( "onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 )
        , ( "onMotionGestureEvent_1", jm_onMotionGestureEvent_1 ) ]
        CommandFormInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImmediateCommandFormInputProcessor"
        [ ( "jm_onPressGameKeyEvent_1", jm_onPressGameKeyEvent_1 ), ( "jm_onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 ), ( "jm_onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 ), ( "jm_onMotionGestureEvent_1", jm_onMotionGestureEvent_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "playerInputId", "I" ), ( "gameCommandCanvas", "" ), ( "form", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CommandFormInputProcessor.jinit_4 JR.this [ (JR.local "gameKeyEventList"), (JR.local "playerInputId"), (JR.local "gameCommandCanvas"), (JR.local "form") ]),
                JR.exec (JR.setField "timeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 25) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameCommandCanvas" "" JR.this (JR.local "gameCommandCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_onPressGameKeyEvent_1 : JR.Method
jm_onPressGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callVia CommandFormInputProcessor.jvtable "onPressGameKeyEvent_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                        JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "timeHelper") []) (JR.run [ 
                            JR.exec (JR.invoke "processInputList_0" JR.this []), 
                            JR.exec (JR.invoke "onChangeRepaint_1" (JR.field "repaintBehavior" (JR.thisField "gameCommandCanvas")) [ (JR.invoke "getCanvas_0" JR.this []) ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ON_PRESS_GAME_KEY" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_onDownGameKeyEvent_1 : JR.Method
jm_onDownGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callVia CommandFormInputProcessor.jvtable "onDownGameKeyEvent_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                        JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "timeHelper") []) (JR.run [ 
                            JR.exec (JR.invoke "processInputList_0" JR.this []), 
                            JR.exec (JR.invoke "onChangeRepaint_1" (JR.field "repaintBehavior" (JR.thisField "gameCommandCanvas")) [ (JR.invoke "getCanvas_0" JR.this []) ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ON_DOWN_GAME_KEY" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_onUpGameKeyEvent_1 : JR.Method
jm_onUpGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callVia CommandFormInputProcessor.jvtable "onUpGameKeyEvent_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                        JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "timeHelper") []) (JR.run [ 
                            JR.exec (JR.invoke "processInputList_0" JR.this []), 
                            JR.exec (JR.invoke "onChangeRepaint_1" (JR.field "repaintBehavior" (JR.thisField "gameCommandCanvas")) [ (JR.invoke "getCanvas_0" JR.this []) ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ON_UP_GAME_KEY" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_onMotionGestureEvent_1 : JR.Method
jm_onMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callVia CommandFormInputProcessor.jvtable "onMotionGestureEvent_1" JR.this [ (JR.local "motionGestureEvent") ]), 
                        JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "timeHelper") []) (JR.run [ 
                            JR.exec (JR.invoke "processInputList_0" JR.this []), 
                            JR.exec (JR.invoke "onChangeRepaint_1" (JR.field "repaintBehavior" (JR.thisField "gameCommandCanvas")) [ (JR.invoke "getCanvas_0" JR.this []) ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "onMotionGestureEvent"), (JR.local "e") ]) ]) ) ] identity ])
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

