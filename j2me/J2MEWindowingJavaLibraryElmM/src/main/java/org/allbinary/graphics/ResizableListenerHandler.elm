module Org.Allbinary.Graphics.ResizableListenerHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR



jclass : String
jclass =
    "ResizableListenerHandler"


jchain : List String
jchain =
    [ "ResizableListenerHandler" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setListener_1", jm_setListener_1 )
        , ( "fire_1", jm_fire_1 )
        , ( "fireEvent_1", jm_fireEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ResizableListenerHandler"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setListener_1", jm_setListener_1 ), ( "jm_fire_1", jm_fire_1 ), ( "jm_fireEvent_1", jm_fireEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ResizableListenerHandler" jclinit "instance"
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_setListener_1 : JR.Method
jm_setListener_1 jheap jthis jargs =
    JR.method [ ( "resizableListenerInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_fire_1 : JR.Method
jm_fire_1 jheap jthis jargs =
    JR.method [ ( "isFullScreen", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_fireEvent_1 : JR.Method
jm_fireEvent_1 jheap jthis jargs =
    JR.method [ ( "value", "Z" ) ] ""
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

