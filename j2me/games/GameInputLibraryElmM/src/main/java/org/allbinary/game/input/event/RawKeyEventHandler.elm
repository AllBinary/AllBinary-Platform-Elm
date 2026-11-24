module Org.Allbinary.Game.Input.Event.RawKeyEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "RawKeyEventHandler"


jchain : List String
jchain =
    [ "RawKeyEventHandler" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "eventListenerInterfaceList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "removeAllListeners_0", jm_removeAllListeners_0 )
        , ( "addListeners_1", jm_addListeners_1 )
        , ( "addListenerSingleThreaded_1", jm_addListenerSingleThreaded_1 )
        , ( "addListener_1", jm_addListener_1 )
        , ( "removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 )
        , ( "removeListener_1", jm_removeListener_1 )
        , ( "fireEvent_3", jm_fireEvent_3 )
        , ( "process_4", jm_process_4 )
        , ( "getEventListenerInterfaceListP_0", jm_getEventListenerInterfaceListP_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RawKeyEventHandler"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jm_addListeners_1", jm_addListeners_1 ), ( "jm_addListenerSingleThreaded_1", jm_addListenerSingleThreaded_1 ), ( "jm_addListener_1", jm_addListener_1 ), ( "jm_removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 ), ( "jm_removeListener_1", jm_removeListener_1 ), ( "jm_fireEvent_3", jm_fireEvent_3 ), ( "jm_process_4", jm_process_4 ), ( "jm_getEventListenerInterfaceListP_0", jm_getEventListenerInterfaceListP_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_TOTAL_LISTENERS", jstatic_TOTAL_LISTENERS ), ( "jstatic_LISTENER_LABEL", jstatic_LISTENER_LABEL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "RawKeyEventHandler" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_TOTAL_LISTENERS : JR.M
jstatic_TOTAL_LISTENERS s =
    JR.static "RawKeyEventHandler" jclinit "TOTAL_LISTENERS"
        (JR.str "Total Listeners: ")
        s


jstatic_LISTENER_LABEL : JR.M
jstatic_LISTENER_LABEL s =
    JR.static "RawKeyEventHandler" jclinit "LISTENER_LABEL"
        (JR.str " Listener: ")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "eventListenerInterfaceList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])) ]) ])
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


jm_removeAllListeners_0 : JR.Method
jm_removeAllListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "eventListenerInterfaceList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_addListeners_1 : JR.Method
jm_addListeners_1 jheap jthis jargs =
    JR.method [ ( "vector", "" ) ] ""
        (JR.run [ 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67304 -> (JR.setLocal "index" "I" (JR.lit jwN67304))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.local "vector") [ (JR.local "index") ])), 
                        JR.exec (JR.invoke "addListener_1" JR.this [ (JR.local "eventListenerInterface") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_addListenerSingleThreaded_1 : JR.Method
jm_addListenerSingleThreaded_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "eventListenerInterface") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "eventListenerInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_addListener_1 : JR.Method
jm_addListener_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "eventListenerInterface") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "eventListenerInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeListenerSingleThreaded_1 : JR.Method
jm_removeListenerSingleThreaded_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "eventListenerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeListener_1 : JR.Method
jm_removeListener_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "eventListenerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fireEvent_3 : JR.Method
jm_fireEvent_3 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") [])) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "index") ])), 
                            JR.exec (JR.invoke "process_4" JR.this [ (JR.local "keyCode"), (JR.local "deviceId"), (JR.local "repeated"), (JR.local "eventListenerInterface") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "FIRE_EVENT" (JR.callStatic EventStrings.jm_getInstance_0 [])), (JR.local "e") ]) ]) ) ] identity, 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN68162 -> (JR.setLocal "index" "I" (JR.lit jwN68162))) JR.increment) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_4 : JR.Method
jm_process_4 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onEventRaw_3" (JR.local "eventListenerInterface") [ (JR.local "keyCode"), (JR.local "deviceId"), (JR.local "repeated") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getEventListenerInterfaceListP_0 : JR.Method
jm_getEventListenerInterfaceListP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "eventListenerInterfaceList") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_TOTAL_LISTENERS ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") []) ]), 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") [])) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "index") ])), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_LISTENER_LABEL ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "eventListenerInterface") []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "TOSTRING" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN69099 -> (JR.setLocal "index" "I" (JR.lit jwN69099))) JR.increment) ]), 
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

