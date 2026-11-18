module Org.Allbinary.Game.Displayable.Canvas.StartIntermissionProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Canvas.Processor as Processor


jclass : String
jclass =
    "StartIntermissionProcessor"


jchain : List String
jchain =
    [ "StartIntermissionProcessor" ]
        ++ Processor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Processor.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "gameCanvas", JR.defaultOf "" ), ( "WAIT", JR.defaultOf "J" ) ]


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 ) ]
        Processor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StartIntermissionProcessor"
        [ ( "jm_process_0", jm_process_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Processor.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "WAIT" "J" JR.this (JR.long 5000)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameCanvas" "" JR.this (JR.local "gameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isElapsedTNT_1" (JR.invoke "getTimeDelayHelper_0" (JR.invoke "getStartIntermissionInterface_0" (JR.thisField "gameCanvas") []) []) [ (JR.thisField "WAIT") ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Intermission End"), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "setEnabled_1" (JR.invoke "getStartIntermissionInterface_0" (JR.thisField "gameCanvas") []) [ (JR.bool False) ]) ]) identity ])
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

