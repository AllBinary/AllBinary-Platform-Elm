module Org.Allbinary.Game.Displayable.Canvas.BaseGameBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Opengles.CurrentDisplayableFactory as CurrentDisplayableFactory
import Org.Allbinary.Game.Displayable.Canvas.DemoGameBehavior as DemoGameBehavior
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Business.Advertisement.GameAdStateFactory as GameAdStateFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory


jclass : String
jclass =
    "BaseGameBehavior"


jchain : List String
jchain =
    [ "BaseGameBehavior" ]
        ++ DemoGameBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    DemoGameBehavior.jfields ++ []


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
        DemoGameBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseGameBehavior"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_pause_1", jm_pause_1 ), ( "jm_unPause_1", jm_unPause_1 ), ( "jm_updateTouch_1", jm_updateTouch_1 ), ( "jm_updateScreenButtonPaintable_1", jm_updateScreenButtonPaintable_1 ), ( "jm_setGameState_1", jm_setGameState_1 ), ( "jm_removeAllGameKeyInputListeners_1", jm_removeAllGameKeyInputListeners_1 ), ( "jm_updateEndGameProcessor_1", jm_updateEndGameProcessor_1 ), ( "jm_buildGame_1", jm_buildGame_1 ), ( "jm_run_1", jm_run_1 ), ( "jm_setHighScore_6", jm_setHighScore_6 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "BaseGameBehavior" jclinit "instanceC"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect DemoGameBehavior.jinit_0 JR.this []),
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
                    JR.return jstatic_instanceC ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.callStatic GameAdStateFactory.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "playingAdState_0" (JR.local "gameAdState") []) ])
        (jregister jheap)
        jthis
        jargs


jm_pause_1 : JR.Method
jm_pause_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL_AS_GAME_THREAD" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.declare "currentDisplayableFactory" "" (JR.callStatic CurrentDisplayableFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "setRunnable_1" (JR.local "currentDisplayableFactory") [ (JR.field "gamePauseRunnable" (JR.local "allBinaryGameCanvas")) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_unPause_1 : JR.Method
jm_unPause_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isDefault_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "OPENGL_AS_GAME_THREAD" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.declare "currentDisplayableFactory" "" (JR.callStatic CurrentDisplayableFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "setRunnable_1" (JR.local "currentDisplayableFactory") [ (JR.field "gameRunnable" (JR.local "allBinaryGameCanvas")) ]), 
                        JR.exec (JR.invoke "setDisplayable_1" (JR.local "currentDisplayableFactory") [ (JR.local "allBinaryGameCanvas") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateTouch_1 : JR.Method
jm_updateTouch_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateTouch2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateScreenButtonPaintable_1 : JR.Method
jm_updateScreenButtonPaintable_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateScreenButtonPaintable2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setGameState_1 : JR.Method
jm_setGameState_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateGameState_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllGameKeyInputListeners_1 : JR.Method
jm_removeAllGameKeyInputListeners_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllGameKeyInputListeners2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateEndGameProcessor_1 : JR.Method
jm_updateEndGameProcessor_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateEndGameProcessor2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_buildGame_1 : JR.Method
jm_buildGame_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "buildGame2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_run_1 : JR.Method
jm_run_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "run2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScore_6 : JR.Method
jm_setHighScore_6 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "allBinaryGameCanvas", "" ), ( "name", "" ), ( "score", "J" ), ( "autoSubmit", "Z" ), ( "isLast", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setHighScore2_5" (JR.local "allBinaryGameCanvas") [ (JR.local "abeClientInformation"), (JR.local "name"), (JR.local "score"), (JR.local "autoSubmit"), (JR.local "isLast") ]) ])
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

