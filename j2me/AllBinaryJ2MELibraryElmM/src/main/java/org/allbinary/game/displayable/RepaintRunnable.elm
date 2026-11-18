module Org.Allbinary.Game.Displayable.RepaintRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable
-}

import JR
import Org.Allbinary.Thread.ARunnable as ARunnable
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "RepaintRunnable"


jchain : List String
jchain =
    [ "RepaintRunnable" ]
        ++ ARunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ARunnable.jfields ++ [ ( "canvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        ARunnable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RepaintRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "canvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ARunnable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "canvas" "" JR.this (JR.local "canvas")) ]) ])
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
                        JR.exec (JR.invoke "repaint_0" (JR.thisField "canvas") []), 
                        JR.exec (JR.invoke "process_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "RUN" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

