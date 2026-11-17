module TsUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary
-}

import JR
import JSystem


jclass : String
jclass =
    "TsUtil"


jchain : List String
jchain =
    [ "TsUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "hashCode_1", jm_hashCode_1 )
        , ( "waitFor_2", jm_waitFor_2 )
        , ( "getRecord_2", jm_getRecord_2 )
        , ( "compareTo_2", jm_compareTo_2 )
        , ( "equalIgnoreCase_2", jm_equalIgnoreCase_2 )
        , ( "equalsNotstring_2", jm_equalsNotstring_2 )
        , ( "toNumberFromChar_1", jm_toNumberFromChar_1 )
        , ( "toNumber_1", jm_toNumber_1 )
        , ( "getByteArray_1", jm_getByteArray_1 )
        , ( "isItemListener_1", jm_isItemListener_1 )
        , ( "printAvailableMethods_1", jm_printAvailableMethods_1 )
        , ( "gc_0", jm_gc_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TsUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_hashCode_1", jm_hashCode_1 ), ( "jm_waitFor_2", jm_waitFor_2 ), ( "jm_getRecord_2", jm_getRecord_2 ), ( "jm_compareTo_2", jm_compareTo_2 ), ( "jm_equalIgnoreCase_2", jm_equalIgnoreCase_2 ), ( "jm_equalsNotstring_2", jm_equalsNotstring_2 ), ( "jm_toNumberFromChar_1", jm_toNumberFromChar_1 ), ( "jm_toNumber_1", jm_toNumber_1 ), ( "jm_getByteArray_1", jm_getByteArray_1 ), ( "jm_isItemListener_1", jm_isItemListener_1 ), ( "jm_printAvailableMethods_1", jm_printAvailableMethods_1 ), ( "jm_gc_0", jm_gc_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TsUtil" jclinit "instance"
        (JR.new jnew_0 [])
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_hashCode_1 : JR.Method
jm_hashCode_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "hashCode_0" (JR.local "anyType") []) ])
        (jregister jheap)
        jthis
        jargs


jm_waitFor_2 : JR.Method
jm_waitFor_2 jheap jthis jargs =
    JR.method [ ( "any", "" ), ( "timeoutMillis", "J" ) ] ""
        (JR.run [ 
                    JR.declare "anyType" "" (JR.local "any"), 
                    JR.exec (JR.invoke "wait_1" (JR.local "anyType") [ (JR.local "timeoutMillis") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getRecord_2 : JR.Method
jm_getRecord_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "recordId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.newArray "B" [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_compareTo_2 : JR.Method
jm_compareTo_2 jheap jthis jargs =
    JR.method [ ( "a", "" ), ( "b", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "compareTo_1" (JR.local "a") [ (JR.local "b") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_equalIgnoreCase_2 : JR.Method
jm_equalIgnoreCase_2 jheap jthis jargs =
    JR.method [ ( "a", "" ), ( "b", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "equalsIgnoreCase_1" (JR.local "a") [ (JR.local "b") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_equalsNotstring_2 : JR.Method
jm_equalsNotstring_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "object2", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "equals_1" (JR.local "anyType") [ (JR.local "object2") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toNumberFromChar_1 : JR.Method
jm_toNumberFromChar_1 jheap jthis jargs =
    JR.method [ ( "value", "C" ) ] "I"
        (JR.run [ 
                    JR.return (JR.cast "I" (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_toNumber_1 : JR.Method
jm_toNumber_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.local "value") ])
        (jregister jheap)
        jthis
        jargs


jm_getByteArray_1 : JR.Method
jm_getByteArray_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getBytes_0" (JR.local "string") []) ])
        (jregister jheap)
        jthis
        jargs


jm_isItemListener_1 : JR.Method
jm_isItemListener_1 jheap jthis jargs =
    JR.method [ ( "owner", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_printAvailableMethods_1 : JR.Method
jm_printAvailableMethods_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_gc_0 : JR.Method
jm_gc_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic JSystem.jm_gc_0 []) ])
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

