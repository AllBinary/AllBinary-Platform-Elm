module Org.Allbinary.Logic.Communication.Log.PreLogUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JSystem
import Org.Allbinary.Logic.Communication.Log.LogFormatUtil as LogFormatUtil
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "PreLogUtil"


jchain : List String
jchain =
    [ "PreLogUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "put_3", jm_put_3 )
        , ( "putOE_4", jm_putOE_4 )
        , ( "putS_3", jm_putS_3 )
        , ( "putSE_4", jm_putSE_4 )
        , ( "getClassName_1", jm_getClassName_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PreLogUtil"
        [ ( "jm_put_3", jm_put_3 ), ( "jm_putOE_4", jm_putOE_4 ), ( "jm_putS_3", jm_putS_3 ), ( "jm_putSE_4", jm_putSE_4 ), ( "jm_getClassName_1", jm_getClassName_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_LOG_SUCCESS", jstatic_LOG_SUCCESS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_LOG_SUCCESS : JR.M
jstatic_LOG_SUCCESS s =
    JR.static "PreLogUtil" jclinit "LOG_SUCCESS"
        (JR.str "org.allbinary: ")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_put_3 : JR.Method
jm_put_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic jm_putOE_4 [ (JR.local "specialMessage"), (JR.local "anyType"), (JR.local "functionName"), (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_putOE_4 : JR.Method
jm_putOE_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.declare "className" "" (JR.field "EMPTY" (JR.callStatic CommonStrings.jm_getInstance_0 [])), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getName_0" (JR.getClass (JR.local "anyType")) []) JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "className" "" (JR.withState JR.newString [ (JR.invoke "getName_0" (JR.getClass (JR.local "anyType")) []) ])) ]) identity, 
                    JR.declare "message" "" (JR.invoke "get_4" (JR.callStatic LogFormatUtil.jm_getInstance_0 []) [ (JR.local "className"), (JR.local "functionName"), (JR.local "specialMessage"), (JR.local "exception") ]), 
                    JR.exec (JR.invoke "print_1" JSystem.jstatic_out [ jstatic_LOG_SUCCESS ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.local "message") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_putS_3 : JR.Method
jm_putS_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "className", "" ), ( "functionName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic jm_putSE_4 [ (JR.local "specialMessage"), (JR.local "className"), (JR.local "functionName"), (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_putSE_4 : JR.Method
jm_putSE_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "className", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.declare "message" "" (JR.invoke "get_4" (JR.callStatic LogFormatUtil.jm_getInstance_0 []) [ (JR.local "className"), (JR.local "functionName"), (JR.local "specialMessage"), (JR.local "exception") ]), 
                    JR.exec (JR.invoke "print_1" JSystem.jstatic_out [ jstatic_LOG_SUCCESS ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.local "message") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getClassName_1 : JR.Method
jm_getClassName_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" (JR.getClass (JR.local "anyType")) []) ])
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

