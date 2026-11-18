module Org.Allbinary.Game.Displayable.Canvas.GameCanvasPauseRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Displayable.Canvas.GameRunnable as GameRunnable
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory


jclass : String
jclass =
    "GameCanvasPauseRunnable"


jchain : List String
jchain =
    [ "GameCanvasPauseRunnable" ]
        ++ GameRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameRunnable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "allBinaryGameCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 )
        , ( "processLoopSleep_0", jm_processLoopSleep_0 ) ]
        GameRunnable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameCanvasPauseRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jm_processLoopSleep_0", jm_processLoopSleep_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameRunnable.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "allBinaryGameCanvas" "" JR.this (JR.local "allBinaryGameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processLoopSleep_0 : JR.Method
jm_processLoopSleep_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.declare "isOpenGL" "Z" (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]), 
                        JR.ifElse (JR.local "isOpenGL") (JR.run [ 
                            JR.exec (JR.invoke "processSleep_0" (JR.thisField "allBinaryGameCanvas") []) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "RUN" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

