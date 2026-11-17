module Log exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import CommonStrings
import LogFormatUtil


jclass : String
jclass =
    "Log"


jchain : List String
jchain =
    [ "Log" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logFormatUtil", JR.defaultOf "" ), ( "specialMessage", JR.defaultOf "" ), ( "anyType", JR.defaultOf "" ), ( "functionName", JR.defaultOf "" ), ( "exception", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getSpecialMessage_0", jm_getSpecialMessage_0 )
        , ( "getObject_0", jm_getObject_0 )
        , ( "getFunctionName_0", jm_getFunctionName_0 )
        , ( "getThrowable_0", jm_getThrowable_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Log"
        [ ( "jm_getSpecialMessage_0", jm_getSpecialMessage_0 ), ( "jm_getObject_0", jm_getObject_0 ), ( "jm_getFunctionName_0", jm_getFunctionName_0 ), ( "jm_getThrowable_0", jm_getThrowable_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logFormatUtil" "" JR.this (JR.callStatic LogFormatUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "specialMessage" "" JR.this (JR.local "specialMessage")), 
                    JR.exec (JR.setField "anyType" "" JR.this (JR.local "anyType")), 
                    JR.exec (JR.setField "functionName" "" JR.this (JR.local "functionName")), 
                    JR.exec (JR.setField "exception" "" JR.this (JR.local "exception")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getSpecialMessage_0 : JR.Method
jm_getSpecialMessage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "specialMessage") ])
        (jregister jheap)
        jthis
        jargs


jm_getObject_0 : JR.Method
jm_getObject_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "anyType") ])
        (jregister jheap)
        jthis
        jargs


jm_getFunctionName_0 : JR.Method
jm_getFunctionName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "functionName") ])
        (jregister jheap)
        jthis
        jargs


jm_getThrowable_0 : JR.Method
jm_getThrowable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "exception") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "className" "" (JR.field "EMPTY" (JR.callStatic CommonStrings.jm_getInstance_0 [])), 
                    JR.declare "clazz" "" (JR.getClass (JR.thisField "anyType")), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getName_0" (JR.local "clazz") []) JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "className" "" (JR.invoke "getName_0" (JR.local "clazz") [])) ]) identity, 
                    JR.return (JR.invoke "get_4" (JR.thisField "logFormatUtil") [ (JR.local "className"), (JR.thisField "functionName"), (JR.thisField "specialMessage"), (JR.thisField "exception") ]) ])
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

