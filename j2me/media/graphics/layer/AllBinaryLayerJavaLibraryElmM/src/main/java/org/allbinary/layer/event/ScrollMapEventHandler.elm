module Org.Allbinary.Layer.Event.ScrollMapEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.Handler.BasicEventHandler as BasicEventHandler


jclass : String
jclass =
    "ScrollMapEventHandler"


jchain : List String
jchain =
    [ "ScrollMapEventHandler" ]
        ++ BasicEventHandler.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicEventHandler.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_2", jm_process_2 ) ]
        BasicEventHandler.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScrollMapEventHandler"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_2", jm_process_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "ScrollMapEventHandler" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicEventHandler.jinit_0 JR.this []),
                identity,
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "scrollMapEventListenerInterface" "" ((JR.local "eventListenerInterface")), 
                    JR.exec (JR.invoke "onMoveEvent_1" (JR.local "scrollMapEventListenerInterface") [ (JR.local "eventObject") ]) ])
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

