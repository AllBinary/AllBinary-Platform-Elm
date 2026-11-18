module Org.Allbinary.Game.Displayable.Canvas.DemoGameBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.GameTypeFactory as GameTypeFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable


jclass : String
jclass =
    "DemoGameBehavior"


jchain : List String
jchain =
    [ "DemoGameBehavior" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 )
        , ( "pause_1", jm_pause_1 )
        , ( "unPause_1", jm_unPause_1 )
        , ( "updateTouch_1", jm_updateTouch_1 )
        , ( "updateScreenButtonPaintable_1", jm_updateScreenButtonPaintable_1 )
        , ( "setGameState_1", jm_setGameState_1 )
        , ( "removeAllGameKeyInputListeners_1", jm_removeAllGameKeyInputListeners_1 )
        , ( "updateEndGameProcessor_1", jm_updateEndGameProcessor_1 )
        , ( "buildGame_1", jm_buildGame_1 )
        , ( "run_1", jm_run_1 )
        , ( "setHighScore_6", jm_setHighScore_6 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoGameBehavior"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_pause_1", jm_pause_1 ), ( "jm_unPause_1", jm_unPause_1 ), ( "jm_updateTouch_1", jm_updateTouch_1 ), ( "jm_updateScreenButtonPaintable_1", jm_updateScreenButtonPaintable_1 ), ( "jm_setGameState_1", jm_setGameState_1 ), ( "jm_removeAllGameKeyInputListeners_1", jm_removeAllGameKeyInputListeners_1 ), ( "jm_updateEndGameProcessor_1", jm_updateEndGameProcessor_1 ), ( "jm_buildGame_1", jm_buildGame_1 ), ( "jm_run_1", jm_run_1 ), ( "jm_setHighScore_6", jm_setHighScore_6 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DemoGameBehavior" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_pause_1 : JR.Method
jm_pause_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_unPause_1 : JR.Method
jm_unPause_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_updateTouch_1 : JR.Method
jm_updateTouch_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_updateScreenButtonPaintable_1 : JR.Method
jm_updateScreenButtonPaintable_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setTouchPaintableP_1" (JR.local "allBinaryGameCanvas") [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setGameState_1 : JR.Method
jm_setGameState_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_removeAllGameKeyInputListeners_1 : JR.Method
jm_removeAllGameKeyInputListeners_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_updateEndGameProcessor_1 : JR.Method
jm_updateEndGameProcessor_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_buildGame_1 : JR.Method
jm_buildGame_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_run_1 : JR.Method
jm_run_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.field "BOT" (JR.callStatic GameTypeFactory.jm_getInstance_0 [])) []), JR.this, (JR.field "RUN" (JR.local "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScore_6 : JR.Method
jm_setHighScore_6 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "allBinaryGameCanvas", "" ), ( "name", "" ), ( "score", "J" ), ( "autoSubmit", "Z" ), ( "isLast", "Z" ) ] ""
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

