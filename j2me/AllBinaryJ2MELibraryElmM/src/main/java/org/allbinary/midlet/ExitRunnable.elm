module Org.Allbinary.Midlet.ExitRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.midlet
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JRunnable
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas


jclass : String
jclass =
    "ExitRunnable"


jchain : List String
jchain =
    [ "ExitRunnable" ]
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "midlet", JR.defaultOf "" ), ( "processor", JR.defaultOf "" ), ( "isProgress", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ExitRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "midlet", "" ), ( "processor", "" ), ( "isProgress", "Z" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "midlet" "" JR.this (JR.local "midlet")), 
                    JR.exec (JR.setField "isProgress" "Z" JR.this (JR.local "isProgress")), 
                    JR.exec (JR.setField "processor" "" JR.this (JR.local "processor")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "destroyAppInRunnable_2" (JR.thisField "midlet") [ (JR.bool False), (JR.thisField "isProgress") ]), 
                        JR.exec (JR.invoke "setDisplay_1" (JR.thisField "midlet") [ NullCanvas.jstatic_NULL_CANVAS ]), 
                        JR.exec (JR.invoke "notifyDestroyed_0" (JR.thisField "midlet") []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "process_0" (JR.thisField "processor") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.try (JR.run [ 
                            JR.exec (JR.invoke "process_0" (JR.thisField "processor") []) ]) [ ( [ "Exception" ], "e2", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ) ] identity ])
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

