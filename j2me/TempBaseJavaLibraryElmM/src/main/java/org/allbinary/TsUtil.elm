module Org.Allbinary.TsUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary
-}

import JR
import JDouble
import JFloat


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
        , ( "longBitsToDouble_1", jm_longBitsToDouble_1 )
        , ( "intBitsToFloat_1", jm_intBitsToFloat_1 )
        , ( "hashCode_1", jm_hashCode_1 )
        , ( "waitFor_2", jm_waitFor_2 )
        , ( "compareTo_2", jm_compareTo_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TsUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_longBitsToDouble_1", jm_longBitsToDouble_1 ), ( "jm_intBitsToFloat_1", jm_intBitsToFloat_1 ), ( "jm_hashCode_1", jm_hashCode_1 ), ( "jm_waitFor_2", jm_waitFor_2 ), ( "jm_compareTo_2", jm_compareTo_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_longBitsToDouble_1 : JR.Method
jm_longBitsToDouble_1 jheap jthis jargs =
    JR.method [ ( "bits", "J" ) ] "D"
        (JR.run [ 
                    JR.return (JR.callStatic JDouble.jm_longBitsToDouble_1 [ (JR.local "bits") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_intBitsToFloat_1 : JR.Method
jm_intBitsToFloat_1 jheap jthis jargs =
    JR.method [ ( "bits", "I" ) ] "F"
        (JR.run [ 
                    JR.return (JR.callStatic JFloat.jm_intBitsToFloat_1 [ (JR.local "bits") ]) ])
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


jm_compareTo_2 : JR.Method
jm_compareTo_2 jheap jthis jargs =
    JR.method [ ( "a", "" ), ( "b", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "compareTo_1" (JR.local "a") [ (JR.local "b") ]) ])
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

