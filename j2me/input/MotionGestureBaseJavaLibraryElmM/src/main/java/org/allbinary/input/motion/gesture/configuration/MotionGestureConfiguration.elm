module Org.Allbinary.Input.Motion.Gesture.Configuration.MotionGestureConfiguration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.configuration
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Input.Motion.Gesture.MotionGestureToMotionGestureActionAssociation as MotionGestureToMotionGestureActionAssociation
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "MotionGestureConfiguration"


jchain : List String
jchain =
    [ "MotionGestureConfiguration" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "diagonalMotionGestureAllowed", JR.defaultOf "Z" ), ( "diagonalTolerance", JR.defaultOf "I" ), ( "minimumMotionGesture", JR.defaultOf "I" ), ( "button", JR.defaultOf "" ), ( "color", JR.defaultOf "" ), ( "executingActions", JR.defaultOf "Z" ), ( "mouseButtonMask", JR.defaultOf "I" ), ( "activeCommands", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "addMotionGestureAction_2", jm_addMotionGestureAction_2 )
        , ( "clearMotionGestureAction_0", jm_clearMotionGestureAction_0 )
        , ( "getAssociateCommandActionsList_0", jm_getAssociateCommandActionsList_0 )
        , ( "isDiagonalMotionGestureAllowed_0", jm_isDiagonalMotionGestureAllowed_0 )
        , ( "isExecutingActionsAllowed_0", jm_isExecutingActionsAllowed_0 )
        , ( "setExecutingActionsAllowed_1", jm_setExecutingActionsAllowed_1 )
        , ( "setDiagonalMotionGestureAllowed_1", jm_setDiagonalMotionGestureAllowed_1 )
        , ( "getDiagonalTolerance_0", jm_getDiagonalTolerance_0 )
        , ( "setDiagonalTolerance_1", jm_setDiagonalTolerance_1 )
        , ( "getMinimumMotionGesture_0", jm_getMinimumMotionGesture_0 )
        , ( "setMinimumMotionGesture_1", jm_setMinimumMotionGesture_1 )
        , ( "getButton_0", jm_getButton_0 )
        , ( "setButton_1", jm_setButton_1 )
        , ( "getColor_0", jm_getColor_0 )
        , ( "setColor_1", jm_setColor_1 )
        , ( "getMouseButtonMask_0", jm_getMouseButtonMask_0 )
        , ( "setMouseButtonMask_1", jm_setMouseButtonMask_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionGestureConfiguration"
        [ ( "jm_addMotionGestureAction_2", jm_addMotionGestureAction_2 ), ( "jm_clearMotionGestureAction_0", jm_clearMotionGestureAction_0 ), ( "jm_getAssociateCommandActionsList_0", jm_getAssociateCommandActionsList_0 ), ( "jm_isDiagonalMotionGestureAllowed_0", jm_isDiagonalMotionGestureAllowed_0 ), ( "jm_isExecutingActionsAllowed_0", jm_isExecutingActionsAllowed_0 ), ( "jm_setExecutingActionsAllowed_1", jm_setExecutingActionsAllowed_1 ), ( "jm_setDiagonalMotionGestureAllowed_1", jm_setDiagonalMotionGestureAllowed_1 ), ( "jm_getDiagonalTolerance_0", jm_getDiagonalTolerance_0 ), ( "jm_setDiagonalTolerance_1", jm_setDiagonalTolerance_1 ), ( "jm_getMinimumMotionGesture_0", jm_getMinimumMotionGesture_0 ), ( "jm_setMinimumMotionGesture_1", jm_setMinimumMotionGesture_1 ), ( "jm_getButton_0", jm_getButton_0 ), ( "jm_setButton_1", jm_setButton_1 ), ( "jm_getColor_0", jm_getColor_0 ), ( "jm_setColor_1", jm_setColor_1 ), ( "jm_getMouseButtonMask_0", jm_getMouseButtonMask_0 ), ( "jm_setMouseButtonMask_1", jm_setMouseButtonMask_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "diagonalMotionGestureAllowed" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "diagonalTolerance" "I" JR.this (JR.int 7)),
                JR.exec (JR.setField "minimumMotionGesture" "I" JR.this (JR.int 9)),
                JR.exec (JR.setField "button" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "color" "" JR.this (JR.field "BLUE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "executingActions" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "mouseButtonMask" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "activeCommands" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_addMotionGestureAction_2 : JR.Method
jm_addMotionGestureAction_2 jheap jthis jargs =
    JR.method [ ( "list", "" ), ( "commandAction", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "activeCommands") [ (JR.new MotionGestureToMotionGestureActionAssociation.jnew_2 [ (JR.local "list"), (JR.local "commandAction") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clearMotionGestureAction_0 : JR.Method
jm_clearMotionGestureAction_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "activeCommands") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getAssociateCommandActionsList_0 : JR.Method
jm_getAssociateCommandActionsList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "activeCommands") ])
        (jregister jheap)
        jthis
        jargs


jm_isDiagonalMotionGestureAllowed_0 : JR.Method
jm_isDiagonalMotionGestureAllowed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "diagonalMotionGestureAllowed") ])
        (jregister jheap)
        jthis
        jargs


jm_isExecutingActionsAllowed_0 : JR.Method
jm_isExecutingActionsAllowed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "executingActions") ])
        (jregister jheap)
        jthis
        jargs


jm_setExecutingActionsAllowed_1 : JR.Method
jm_setExecutingActionsAllowed_1 jheap jthis jargs =
    JR.method [ ( "executingActionAllowed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "executingActions" "Z" JR.this (JR.local "executingActionAllowed")) ])
        (jregister jheap)
        jthis
        jargs


jm_setDiagonalMotionGestureAllowed_1 : JR.Method
jm_setDiagonalMotionGestureAllowed_1 jheap jthis jargs =
    JR.method [ ( "diagonalMotionGestureAllowed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "diagonalMotionGestureAllowed" "Z" JR.this (JR.local "diagonalMotionGestureAllowed")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDiagonalTolerance_0 : JR.Method
jm_getDiagonalTolerance_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "diagonalTolerance") ])
        (jregister jheap)
        jthis
        jargs


jm_setDiagonalTolerance_1 : JR.Method
jm_setDiagonalTolerance_1 jheap jthis jargs =
    JR.method [ ( "diagonalTolerance", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "diagonalTolerance" "I" JR.this (JR.local "diagonalTolerance")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMinimumMotionGesture_0 : JR.Method
jm_getMinimumMotionGesture_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "minimumMotionGesture") ])
        (jregister jheap)
        jthis
        jargs


jm_setMinimumMotionGesture_1 : JR.Method
jm_setMinimumMotionGesture_1 jheap jthis jargs =
    JR.method [ ( "minimumMotionGesture", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "minimumMotionGesture" "I" JR.this (JR.local "minimumMotionGesture")) ])
        (jregister jheap)
        jthis
        jargs


jm_getButton_0 : JR.Method
jm_getButton_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "button") ])
        (jregister jheap)
        jthis
        jargs


jm_setButton_1 : JR.Method
jm_setButton_1 jheap jthis jargs =
    JR.method [ ( "button", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "button" "" JR.this (JR.local "button")) ])
        (jregister jheap)
        jthis
        jargs


jm_getColor_0 : JR.Method
jm_getColor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "color") ])
        (jregister jheap)
        jthis
        jargs


jm_setColor_1 : JR.Method
jm_setColor_1 jheap jthis jargs =
    JR.method [ ( "color", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "color" "" JR.this (JR.local "color")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMouseButtonMask_0 : JR.Method
jm_getMouseButtonMask_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "mouseButtonMask") ])
        (jregister jheap)
        jthis
        jargs


jm_setMouseButtonMask_1 : JR.Method
jm_setMouseButtonMask_1 jheap jthis jargs =
    JR.method [ ( "mouseButtonMask", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "mouseButtonMask" "I" JR.this (JR.local "mouseButtonMask")) ])
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

