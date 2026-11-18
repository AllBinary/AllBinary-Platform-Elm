module Org.Allbinary.Logic.Communication.Log.LogFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import Org.Allbinary.Logic.Communication.Log.Log as Log
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "LogFactory"


jchain : List String
jchain =
    [ "LogFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstanceD_0", jm_getInstanceD_0 )
        , ( "getInstance_4", jm_getInstance_4 )
        , ( "getInstanceF_3", jm_getInstanceF_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogFactory"
        [ ( "jm_getInstanceD_0", jm_getInstanceD_0 ), ( "jm_getInstance_4", jm_getInstance_4 ), ( "jm_getInstanceF_3", jm_getInstanceF_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_LOG", jstatic_LOG ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_LOG : JR.M
jstatic_LOG s =
    JR.static "LogFactory" jclinit "LOG"
        (JR.new Log.jnew_4 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
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


jm_getInstanceD_0 : JR.Method
jm_getInstanceD_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.declare "nullUtil" "" (JR.callStatic NullUtil.jm_getInstance_0 []), 
                    JR.return (JR.new Log.jnew_4 [ (JR.field "EMPTY_STRING" (JR.local "stringUtil")), (JR.field "NULL_OBJECT" (JR.local "nullUtil")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")), (JR.field "NULL_OBJECT" (JR.local "nullUtil")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_4 : JR.Method
jm_getInstance_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.return jstatic_LOG ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceF_3 : JR.Method
jm_getInstanceF_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ) ] ""
        (JR.run [ 
                    JR.return jstatic_LOG ])
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

