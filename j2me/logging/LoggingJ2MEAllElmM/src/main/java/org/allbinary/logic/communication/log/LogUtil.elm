module Org.Allbinary.Logic.Communication.Log.LogUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import JInteger
import JSystem
import Org.Allbinary.Logic.Communication.Log.LogFormatUtil as LogFormatUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "LogUtil"


jchain : List String
jchain =
    [ "LogUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logFormatUtil", JR.defaultOf "" ), ( "LOG_SUCCESS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "putL_1", jm_putL_1 )
        , ( "putF_3", jm_putF_3 )
        , ( "putFS_3", jm_putFS_3 )
        , ( "put_4", jm_put_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_putL_1", jm_putL_1 ), ( "jm_putF_3", jm_putF_3 ), ( "jm_putFS_3", jm_putFS_3 ), ( "jm_put_4", jm_put_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LogUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logFormatUtil" "" JR.this (JR.callStatic LogFormatUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "LOG_SUCCESS" "" JR.this (JR.str "org.allbinary: ")),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_putL_1 : JR.Method
jm_putL_1 jheap jthis jargs =
    JR.method [ ( "log", "" ) ] ""
        (JR.run [ 
                    JR.declare "specialMessage" "" (JR.invoke "getSpecialMessage_0" (JR.local "log") []), 
                    JR.declare "anyType" "" (JR.invoke "getObject_0" (JR.local "log") []), 
                    JR.declare "functionName" "" (JR.invoke "getFunctionName_0" (JR.local "log") []), 
                    JR.declare "exception" "" (JR.invoke "getThrowable_0" (JR.local "log") []), 
                    JR.exec (JR.invoke "put_4" JR.this [ (JR.local "specialMessage"), (JR.local "anyType"), (JR.local "functionName"), (JR.local "exception") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_putF_3 : JR.Method
jm_putF_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ) ] ""
        (JR.run [ 
                    JR.declare "className" "" (JR.field "EMPTY" (JR.callStatic CommonStrings.jm_getInstance_0 [])), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getName_0" (JR.getClass (JR.local "anyType")) []) JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "className" "" (JR.withState JR.newString [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "getName_0" (JR.getClass (JR.local "anyType")) []) ]) [ (JR.field "COLON" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.callStatic JInteger.jm_toHexString_1 [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.local "anyType") ]) ]) ]) []) ])) ]) identity, 
                    JR.declare "message" "" (JR.invoke "getS_3" (JR.thisField "logFormatUtil") [ (JR.local "className"), (JR.local "functionName"), (JR.local "specialMessage") ]), 
                    JR.exec (JR.invoke "print_1" JSystem.jstatic_out [ (JR.thisField "LOG_SUCCESS") ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.local "message") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_putFS_3 : JR.Method
jm_putFS_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "className", "" ), ( "functionName", "" ) ] ""
        (JR.run [ 
                    JR.declare "message" "" (JR.invoke "getS_3" (JR.thisField "logFormatUtil") [ (JR.local "className"), (JR.local "functionName"), (JR.local "specialMessage") ]), 
                    JR.exec (JR.invoke "print_1" JSystem.jstatic_out [ (JR.thisField "LOG_SUCCESS") ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.local "message") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_put_4 : JR.Method
jm_put_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.declare "className" "" (JR.field "EMPTY" (JR.callStatic CommonStrings.jm_getInstance_0 [])), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getName_0" (JR.getClass (JR.local "anyType")) []) JR.null) (JR.run [ 
                        JR.declare "hashCodeValue" "I" (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.local "anyType") ]), 
                        JR.declare "hexString" "" (JR.callStatic JInteger.jm_toHexString_1 [ (JR.local "hashCodeValue") ]), 
                        JR.exec (JR.setLocal "className" "" (JR.withState JR.newString [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "getName_0" (JR.getClass (JR.local "anyType")) []) ]) [ (JR.field "COLON" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.local "hexString") ]) []) ])) ]) identity, 
                    JR.declare "message" "" (JR.invoke "get_4" (JR.thisField "logFormatUtil") [ (JR.local "className"), (JR.local "functionName"), (JR.local "specialMessage"), (JR.local "exception") ]), 
                    JR.exec (JR.invoke "print_1" JSystem.jstatic_out [ (JR.thisField "LOG_SUCCESS") ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.local "message") ]) ])
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

