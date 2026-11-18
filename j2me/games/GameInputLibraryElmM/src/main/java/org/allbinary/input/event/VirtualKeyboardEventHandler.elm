module Org.Allbinary.Input.Event.VirtualKeyboardEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.Handler.BasicEventHandler as BasicEventHandler
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import JThread
import Org.Allbinary.Input.Event.VirtualKeyboardEvent as VirtualKeyboardEvent


jclass : String
jclass =
    "VirtualKeyboardEventHandler"


jchain : List String
jchain =
    [ "VirtualKeyboardEventHandler" ]
        ++ BasicEventHandler.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicEventHandler.jfields ++ [ ( "SHOW_EVENT", JR.defaultOf "" ), ( "HIDE_EVENT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_2", jm_process_2 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 ) ]
        BasicEventHandler.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VirtualKeyboardEventHandler"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_2", jm_process_2 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_gameKeyEventHandler", jstatic_gameKeyEventHandler ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_gameKeyEventHandler : JR.M
jstatic_gameKeyEventHandler s =
    JR.static "VirtualKeyboardEventHandler" jclinit "gameKeyEventHandler"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicEventHandler.jinit_0 JR.this []),
                JR.exec (JR.setField "SHOW_EVENT" "" JR.this (JR.new VirtualKeyboardEvent.jnew_1 [ (JR.field "TRUE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "HIDE_EVENT" "" JR.this (JR.new VirtualKeyboardEvent.jnew_1 [ (JR.field "FALSE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ])),
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
                    JR.return jstatic_gameKeyEventHandler ])
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "virtualKeyboardEventListenerInterface" "" (JR.local "eventListenerInterface"), 
                    JR.exec (JR.invoke "onVirtualKeyboardEvent_1" (JR.local "virtualKeyboardEventListenerInterface") [ (JR.local "eventObject") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.int 120) ]), 
                        JR.exec (JR.invoke "fireEvent_1" JR.this [ (JR.thisField "SHOW_EVENT") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "open"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.int 120) ]), 
                        JR.exec (JR.invoke "fireEvent_1" JR.this [ (JR.thisField "HIDE_EVENT") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "CLOSE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

