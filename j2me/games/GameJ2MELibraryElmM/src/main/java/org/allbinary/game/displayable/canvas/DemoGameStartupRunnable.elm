module Org.Allbinary.Game.Displayable.Canvas.DemoGameStartupRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Thread.ABRunnable as ABRunnable
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "DemoGameStartupRunnable"


jchain : List String
jchain =
    [ "DemoGameStartupRunnable" ]
        ++ ABRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ABRunnable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "demoCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 )
        , ( "getType_0", jm_getType_0 ) ]
        ABRunnable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoGameStartupRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_TYPE", jstatic_TYPE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "DemoGameStartupRunnable" jclinit "TYPE"
        (JR.int 4)
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "demoCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ABRunnable.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "demoCanvas" "" JR.this (JR.local "demoCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "setRunning_1" JR.this [ (JR.bool True) ]), 
                        JR.exec (JR.invoke "stopGameDemo_0" (JR.thisField "demoCanvas") []), 
                        JR.exec (JR.invoke "create_0" (JR.thisField "demoCanvas") []), 
                        JR.exec (JR.invoke "start_0" (JR.thisField "demoCanvas") []), 
                        JR.exec (JR.invoke "setRunning_1" JR.this [ (JR.bool False) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "setRunning_1" JR.this [ (JR.bool False) ]), 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "RUN" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_TYPE ])
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

