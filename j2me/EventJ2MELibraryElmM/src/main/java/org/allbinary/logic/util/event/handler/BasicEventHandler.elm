module BasicEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.event.handler
-}

import JR
import BasicArrayListD
import BasicEventHandlerInterface
import CommonStrings
import EventStrings
import LogUtil
import StringMaker


jclass : String
jclass =
    "BasicEventHandler"


jchain : List String
jchain =
    [ "BasicEventHandler" ]
        ++ BasicEventHandlerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "eventStrings", JR.defaultOf "" ), ( "eventListenerInterfaceList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "removeAllListeners_0", jm_removeAllListeners_0 )
        , ( "addListeners_1", jm_addListeners_1 )
        , ( "removeListeners_1", jm_removeListeners_1 )
        , ( "addListenerSingleThreaded_1", jm_addListenerSingleThreaded_1 )
        , ( "addListenerInterface_1", jm_addListenerInterface_1 )
        , ( "removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 )
        , ( "removeListener_1", jm_removeListener_1 )
        , ( "fireEvent_1", jm_fireEvent_1 )
        , ( "process_2", jm_process_2 )
        , ( "getEventListenerInterfaceListP_0", jm_getEventListenerInterfaceListP_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicEventHandler"
        [ ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jm_addListeners_1", jm_addListeners_1 ), ( "jm_removeListeners_1", jm_removeListeners_1 ), ( "jm_addListenerSingleThreaded_1", jm_addListenerSingleThreaded_1 ), ( "jm_addListenerInterface_1", jm_addListenerInterface_1 ), ( "jm_removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 ), ( "jm_removeListener_1", jm_removeListener_1 ), ( "jm_fireEvent_1", jm_fireEvent_1 ), ( "jm_process_2", jm_process_2 ), ( "jm_getEventListenerInterfaceListP_0", jm_getEventListenerInterfaceListP_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "eventStrings" "" JR.this (JR.callStatic EventStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "eventListenerInterfaceList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


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
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67578 -> (JR.setLocal "index" "I" (JR.lit jwN67578))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.local "vector") [ (JR.local "index") ])), 
                        JR.exec (JR.invoke "addListenerInterface_1" JR.this [ (JR.local "eventListenerInterface") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_removeListeners_1 : JR.Method
jm_removeListeners_1 jheap jthis jargs =
    JR.method [ ( "vector", "" ) ] ""
        (JR.run [ 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67878 -> (JR.setLocal "index" "I" (JR.lit jwN67878))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.local "vector") [ (JR.local "index") ])), 
                        JR.exec (JR.invoke "removeListener_1" JR.this [ (JR.local "eventListenerInterface") ]) ]) ] ])
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


jm_addListenerInterface_1 : JR.Method
jm_addListenerInterface_1 jheap jthis jargs =
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


jm_fireEvent_1 : JR.Method
jm_fireEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") [])) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "index") ])), 
                            JR.exec (JR.invoke "process_2" JR.this [ (JR.local "eventObject"), (JR.local "eventListenerInterface") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "FIRE_EVENT" (JR.thisField "eventStrings")), (JR.local "e") ]) ]) ) ] identity, 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN68751 -> (JR.setLocal "index" "I" (JR.lit jwN68751))) JR.increment) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onEvent_1" (JR.local "eventListenerInterface") [ (JR.local "eventObject") ]) ])
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
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TOTAL_LISTENERS" (JR.thisField "eventStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") []) ]), 
                    JR.declare "eventListenerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "eventListenerInterfaceList") [])) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "eventListenerInterface" "" (JR.invoke "get_1" (JR.thisField "eventListenerInterfaceList") [ (JR.local "index") ])), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "LISTENER_LABEL" (JR.thisField "eventStrings")) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "eventListenerInterface") []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "TOSTRING" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN69523 -> (JR.setLocal "index" "I" (JR.lit jwN69523))) JR.increment) ]), 
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

