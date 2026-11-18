module Org.Allbinary.Graphics.Paint.InitUpdatePaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.paint
-}

import JR
import Org.Allbinary.Graphics.Paint.InitUpdatePaintableInterface as InitUpdatePaintableInterface
import Org.Allbinary.Graphics.Paint.Paintable as Paintable


jclass : String
jclass =
    "InitUpdatePaintable"


jchain : List String
jchain =
    [ "InitUpdatePaintable" ]
        ++ Paintable.jchain
        ++ InitUpdatePaintableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "update_0", jm_update_0 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitUpdatePaintable"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_update_0", jm_update_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

