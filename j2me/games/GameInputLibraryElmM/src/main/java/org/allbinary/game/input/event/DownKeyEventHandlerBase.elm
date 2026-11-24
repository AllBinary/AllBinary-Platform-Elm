module Org.Allbinary.Game.Input.Event.DownKeyEventHandlerBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Util.Event.Handler.BasicEventHandler as BasicEventHandler
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "DownKeyEventHandlerBase"


jchain : List String
jchain =
    [ "DownKeyEventHandlerBase" ]
        ++ BasicEventHandler.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicEventHandler.jfields ++ [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "addListener_1", jm_addListener_1 )
        , ( "removeAllListeners_0", jm_removeAllListeners_0 )
        , ( "removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 )
        , ( "removeListener_1", jm_removeListener_1 )
        , ( "fireEventI_1", jm_fireEventI_1 )
        , ( "fireEventForGameKeyEvent_1", jm_fireEventForGameKeyEvent_1 )
        , ( "processI_2", jm_processI_2 )
        , ( "processEvent_2", jm_processEvent_2 )
        , ( "toString_0", jm_toString_0 ) ]
        BasicEventHandler.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DownKeyEventHandlerBase"
        [ ( "jm_addListener_1", jm_addListener_1 ), ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jm_removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 ), ( "jm_removeListener_1", jm_removeListener_1 ), ( "jm_fireEventI_1", jm_fireEventI_1 ), ( "jm_fireEventForGameKeyEvent_1", jm_fireEventForGameKeyEvent_1 ), ( "jm_processI_2", jm_processI_2 ), ( "jm_processEvent_2", jm_processEvent_2 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_TOTAL_LISTENERS", jstatic_TOTAL_LISTENERS ), ( "jstatic_LISTENER_LABEL", jstatic_LISTENER_LABEL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_TOTAL_LISTENERS : JR.M
jstatic_TOTAL_LISTENERS s =
    JR.static "DownKeyEventHandlerBase" jclinit "TOTAL_LISTENERS"
        (JR.str " Total PlayerGameInput Listeners: ")
        s


jstatic_LISTENER_LABEL : JR.M
jstatic_LISTENER_LABEL s =
    JR.static "DownKeyEventHandlerBase" jclinit "LISTENER_LABEL"
        (JR.str " PlayerGameInput Listener: ")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicEventHandler.jinit_0 JR.this []),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_addListener_1 : JR.Method
jm_addListener_1 jheap jthis jargs =
    JR.method [ ( "playerGameInput", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "playerGameInput") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "playerGameInput") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllListeners_0 : JR.Method
jm_removeAllListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []), 
                    JR.exec (JR.callVia BasicEventHandler.jvtable "removeAllListeners_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeListenerSingleThreaded_1 : JR.Method
jm_removeListenerSingleThreaded_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.callVia BasicEventHandler.jvtable "removeListenerSingleThreaded_1" JR.this [ (JR.local "eventListenerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeListener_1 : JR.Method
jm_removeListener_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.callVia BasicEventHandler.jvtable "removeListener_1" JR.this [ (JR.local "eventListenerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fireEventI_1 : JR.Method
jm_fireEventI_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.thisField "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN68058 -> (JR.setLocal "index" "I" (JR.lit jwN68058))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.declare "playerGameInput" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")), 
                            JR.exec (JR.invoke "onDownKey_1" (JR.local "playerGameInput") [ (JR.local "eventObject") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "FIRE_EVENT" (JR.callStatic EventStrings.jm_getInstance_0 [])), (JR.local "e") ]) ]) ) ] identity ]) ], 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") [])) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "index") ])), 
                            JR.exec (JR.invoke "processI_2" JR.this [ (JR.local "eventObject"), (JR.local "eventListenerInterface") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "FIRE_EVENT" (JR.callStatic EventStrings.jm_getInstance_0 [])), (JR.local "e") ]) ]) ) ] identity, 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN68402 -> (JR.setLocal "index" "I" (JR.lit jwN68402))) JR.increment) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fireEventForGameKeyEvent_1 : JR.Method
jm_fireEventForGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.local "size"), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN68808 -> (JR.setLocal "index" "I" (JR.lit jwN68808))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.declare "playerGameInput" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")), 
                            JR.exec (JR.invoke "onDownKeyEvent_1" (JR.local "playerGameInput") [ (JR.local "eventObject") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "FIRE_EVENT" (JR.callStatic EventStrings.jm_getInstance_0 [])), (JR.local "e") ]) ]) ) ] identity ]) ], 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") [])) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "index") ])), 
                            JR.exec (JR.invoke "processEvent_2" JR.this [ (JR.local "eventObject"), (JR.local "eventListenerInterface") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "FIRE_EVENT" (JR.callStatic EventStrings.jm_getInstance_0 [])), (JR.local "e") ]) ]) ) ] identity, 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN69137 -> (JR.setLocal "index" "I" (JR.lit jwN69137))) JR.increment) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processI_2 : JR.Method
jm_processI_2 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "downKeyEventListenerInterface" "" (JR.local "eventListenerInterface"), 
                    JR.exec (JR.invoke "onDownKey_1" (JR.local "downKeyEventListenerInterface") [ (JR.local "eventObject") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processEvent_2 : JR.Method
jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "downKeyEventListenerInterface" "" (JR.local "eventListenerInterface"), 
                    JR.exec (JR.invoke "onDownKeyEvent_1" (JR.local "downKeyEventListenerInterface") [ (JR.local "eventObject") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callVia BasicEventHandler.jvtable "toString_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_TOTAL_LISTENERS ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.thisField "list") []) ]), 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "list") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70193 -> (JR.setLocal "index" "I" (JR.lit jwN70193))) JR.increment) ]) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.thisField "list") [ (JR.local "index") ])), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_LISTENER_LABEL ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "eventListenerInterface") []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "TOSTRING" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

