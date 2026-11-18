module Org.Allbinary.Game.Displayable.Canvas.GameEventHandlerUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Input.Event.DownGameKeyEventHandler as DownGameKeyEventHandler
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler


jclass : String
jclass =
    "GameEventHandlerUtil"


jchain : List String
jchain =
    [ "GameEventHandlerUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "removeAllListeners_0", jm_removeAllListeners_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameEventHandlerUtil"
        [ ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_removeAllListeners_0 : JR.Method
jm_removeAllListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.callStatic DownGameKeyEventHandler.jm_getInstance_0 []) []) ])
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

