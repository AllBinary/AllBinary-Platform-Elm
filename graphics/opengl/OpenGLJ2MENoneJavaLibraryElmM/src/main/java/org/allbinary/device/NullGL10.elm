module Org.Allbinary.Device.NullGL10 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.device
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL10 as GL10


jclass : String
jclass =
    "NullGL10"


jchain : List String
jchain =
    [ "NullGL10" ]
        ++ GL10.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullGL10"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_GL10", jstatic_NULL_GL10 ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_GL10 : JR.M
jstatic_NULL_GL10 s =
    JR.static "NullGL10" jclinit "NULL_GL10"
        (JR.new jnew_0 [])
        s


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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

