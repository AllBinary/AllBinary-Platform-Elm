module Org.Allbinary.Device.OpenGLESGraphicsCompositeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.device
-}

import JR
import Org.Allbinary.Device.OpenGLESGraphicsFactory as OpenGLESGraphicsFactory


jclass : String
jclass =
    "OpenGLESGraphicsCompositeFactory"


jchain : List String
jchain =
    [ "OpenGLESGraphicsCompositeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "openGLESGraphicsFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "set_1", jm_set_1 )
        , ( "get_0", jm_get_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLESGraphicsCompositeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_set_1", jm_set_1 ), ( "jm_get_0", jm_get_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OpenGLESGraphicsCompositeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "openGLESGraphicsFactory" "" JR.this (JR.new OpenGLESGraphicsFactory.jnew_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "openGLESGraphicsFactory", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "openGLESGraphicsFactory" "" JR.this (JR.local "openGLESGraphicsFactory")) ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "openGLESGraphicsFactory") ])
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

