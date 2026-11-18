module Org.Allbinary.Logic.Communication.Log.LogFormatUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Java.Exception.ExceptionUtil as ExceptionUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Time.TimeStampUtil as TimeStampUtil


jclass : String
jclass =
    "LogFormatUtil"


jchain : List String
jchain =
    [ "LogFormatUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "timeStampUtil", JR.defaultOf "" ), ( "commonSeps", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "LOG_ERROR", JR.defaultOf "" ), ( "EMPTY", JR.defaultOf "" ), ( "STACK_TRACE", JR.defaultOf "" ), ( "TIME", JR.defaultOf "" ), ( "CLASS_NAME", JR.defaultOf "" ), ( "FUNCTION_CALL", JR.defaultOf "" ), ( "SPECIAL_MESSAGE", JR.defaultOf "" ), ( "stringUtil", JR.defaultOf "" ), ( "exceptionUtil", JR.defaultOf "" ), ( "nullUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "get_4", jm_get_4 )
        , ( "getS_3", jm_getS_3 )
        , ( "getF_2", jm_getF_2 )
        , ( "getO_1", jm_getO_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogFormatUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_get_4", jm_get_4 ), ( "jm_getS_3", jm_getS_3 ), ( "jm_getF_2", jm_getF_2 ), ( "jm_getO_1", jm_getO_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LogFormatUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "timeStampUtil" "" JR.this (JR.callStatic TimeStampUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
                JR.exec (JR.setField "NONE" "" JR.this (JR.str "None")),
                JR.exec (JR.setField "LOG_ERROR" "" JR.this (JR.str "\nLog-Error: ")),
                JR.exec (JR.setField "EMPTY" "" JR.this (JR.str "Empty")),
                JR.exec (JR.setField "STACK_TRACE" "" JR.this (JR.str "\nStack Trace: ")),
                JR.exec (JR.setField "TIME" "" JR.this (JR.str "Time: ")),
                JR.exec (JR.setField "CLASS_NAME" "" JR.this (JR.field "SPACE" (JR.thisField "commonSeps"))),
                JR.exec (JR.setField "FUNCTION_CALL" "" JR.this (JR.field "COLON_SEP" (JR.callStatic CommonLabels.jm_getInstance_0 []))),
                JR.exec (JR.setField "SPECIAL_MESSAGE" "" JR.this (JR.str "> ")),
                JR.exec (JR.setField "stringUtil" "" JR.this (JR.callStatic StringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "exceptionUtil" "" JR.this (JR.callStatic ExceptionUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "nullUtil" "" JR.this (JR.callStatic NullUtil.jm_getInstance_0 [])),
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


jm_get_4 : JR.Method
jm_get_4 jheap jthis jargs =
    JR.method [ ( "className", "" ), ( "functionName", "" ), ( "specialMessage", "" ), ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.invoke "getF_2" JR.this [ (JR.local "className"), (JR.local "functionName") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getO_1" JR.this [ (JR.local "exception") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SPECIAL_MESSAGE") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "specialMessage") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.thisField "commonSeps")) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getS_3 : JR.Method
jm_getS_3 jheap jthis jargs =
    JR.method [ ( "className", "" ), ( "functionName", "" ), ( "specialMessage", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.invoke "getF_2" JR.this [ (JR.local "className"), (JR.local "functionName") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SPECIAL_MESSAGE") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "specialMessage") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.thisField "commonSeps")) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getF_2 : JR.Method
jm_getF_2 jheap jthis jargs =
    JR.method [ ( "className", "" ), ( "functionName", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "TIME") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getAsString_0" (JR.thisField "timeStampUtil") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "CLASS_NAME") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "className") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "FUNCTION_CALL") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "functionName") ]), 
                    JR.return (JR.local "stringBuffer") ])
        (jregister jheap)
        jthis
        jargs


jm_getO_1 : JR.Method
jm_getO_1 jheap jthis jargs =
    JR.method [ ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "exception") (JR.field "NULL_OBJECT" (JR.thisField "nullUtil"))) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "LOG_ERROR") ]), 
                        JR.declare "exceptionAsString" "" (JR.invoke "toString_0" (JR.local "exception") []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "exceptionAsString") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "STACK_TRACE") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "exception") (JR.field "NULL_OBJECT" (JR.thisField "nullUtil"))) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getStackTrace_1" (JR.thisField "exceptionUtil") [ (JR.local "exception") ]) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NULL_STRING" (JR.thisField "stringUtil")) ]) ]), 
                        JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) (JR.run [ 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
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

