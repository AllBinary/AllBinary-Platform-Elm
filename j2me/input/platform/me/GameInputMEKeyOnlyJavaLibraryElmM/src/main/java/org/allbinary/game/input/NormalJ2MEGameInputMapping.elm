module Org.Allbinary.Game.Input.NormalJ2MEGameInputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.J2MEGameInputMapping as J2MEGameInputMapping
import Org.Allbinary.Game.Input.NormalJ2MEDefaultGameInputMapping as NormalJ2MEDefaultGameInputMapping


jclass : String
jclass =
    "NormalJ2MEGameInputMapping"


jchain : List String
jchain =
    [ "NormalJ2MEGameInputMapping" ]
        ++ J2MEGameInputMapping.jchain


jfields : List ( String, JR.JValue )
jfields =
    J2MEGameInputMapping.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getDefault_0", jm_getDefault_0 ) ]
        J2MEGameInputMapping.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NormalJ2MEGameInputMapping"
        [ ( "jm_getDefault_0", jm_getDefault_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect J2MEGameInputMapping.jinit_0 JR.this []),
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
                    JR.return (JR.invoke "getInputMapping_0" (JR.new NormalJ2MEDefaultGameInputMapping.jnew_0 []) []) ])
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

