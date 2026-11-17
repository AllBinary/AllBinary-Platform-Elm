module EventStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.event
-}

import JR



jclass : String
jclass =
    "EventStrings"


jchain : List String
jchain =
    [ "EventStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PERFORMANCE_MESSAGE", JR.defaultOf "" ), ( "TOTAL_LISTENERS", JR.defaultOf "" ), ( "LISTENER_LABEL", JR.defaultOf "" ), ( "FIRE_EVENT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EventStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "EventStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PERFORMANCE_MESSAGE" "" JR.this (JR.str "Use Custom onEvent Methods for needed optimization")),
                JR.exec (JR.setField "TOTAL_LISTENERS" "" JR.this (JR.str "Total Listeners: ")),
                JR.exec (JR.setField "LISTENER_LABEL" "" JR.this (JR.str " Listener: ")),
                JR.exec (JR.setField "FIRE_EVENT" "" JR.this (JR.str "fireEvent")),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

