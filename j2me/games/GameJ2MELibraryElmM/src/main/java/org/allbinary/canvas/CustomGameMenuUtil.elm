module Org.Allbinary.Canvas.CustomGameMenuUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR
import Org.Allbinary.AppletUtil as AppletUtil
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.J2MEUtil as J2MEUtil


jclass : String
jclass =
    "CustomGameMenuUtil"


jchain : List String
jchain =
    [ "CustomGameMenuUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomGameMenuUtil"
        [ ( "jm_add_1", jm_add_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "canvas", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.callStatic AppletUtil.jm_isAppletLoader_1 [ (JR.local "canvas") ]) identity (JR.run [ 
                    JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) identity (JR.run [ 
                        JR.exec (JR.invoke "addCommand_1" (JR.local "canvas") [ (JR.field "EXIT_COMMAND" (JR.local "gameCommandsFactory")) ]) ]) ]) ])
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

