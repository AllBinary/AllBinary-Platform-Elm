module Org.Allbinary.Game.Input.DesktopGameInputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.DesktopDefaultGameInputMapping as DesktopDefaultGameInputMapping
import Org.Allbinary.Game.Input.PCGameInputMapping as PCGameInputMapping


jclass : String
jclass =
    "DesktopGameInputMapping"


jchain : List String
jchain =
    [ "DesktopGameInputMapping" ]
        ++ PCGameInputMapping.jchain


jfields : List ( String, JR.JValue )
jfields =
    PCGameInputMapping.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getDefault_0", jm_getDefault_0 ) ]
        PCGameInputMapping.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DesktopGameInputMapping"
        [ ( "jm_getDefault_0", jm_getDefault_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect PCGameInputMapping.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getDefault_0 : JR.Method
jm_getDefault_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInputMapping_0" (JR.new DesktopDefaultGameInputMapping.jnew_0 []) []) ])
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

