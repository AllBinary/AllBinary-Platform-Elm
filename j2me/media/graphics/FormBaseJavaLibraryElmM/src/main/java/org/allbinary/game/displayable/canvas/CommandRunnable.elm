module Org.Allbinary.Game.Displayable.Canvas.CommandRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JRunnable
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "CommandRunnable"


jchain : List String
jchain =
    [ "CommandRunnable" ]
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "commandFormInputProcessor", JR.defaultOf "" ), ( "command", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommandRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "commandFormInputProcessor", "" ), ( "command", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "commandFormInputProcessor" "" JR.this (JR.local "commandFormInputProcessor")), 
                    JR.exec (JR.setField "command" "" JR.this (JR.local "command")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.declare "canvas" "" (JR.invoke "getCanvas_0" (JR.thisField "commandFormInputProcessor") []), 
                        JR.declare "commandListener" "" (JR.invoke "getCustomCommandListener_0" (JR.local "canvas") []), 
                        JR.exec (JR.invoke "commandAction_2" (JR.local "commandListener") [ (JR.thisField "command"), (JR.local "canvas") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

