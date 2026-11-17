module ExceptionUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.exception
-}

import JR
import JByteArrayOutputStream
import JPrintStream


jclass : String
jclass =
    "ExceptionUtil"


jchain : List String
jchain =
    [ "ExceptionUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NONE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getStackTrace_1", jm_getStackTrace_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ExceptionUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getStackTrace_1", jm_getStackTrace_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_PRETEND_EXCEPTION", jstatic_PRETEND_EXCEPTION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ExceptionUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_PRETEND_EXCEPTION : JR.M
jstatic_PRETEND_EXCEPTION s =
    JR.static "ExceptionUtil" jclinit "PRETEND_EXCEPTION"
        (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Not Really An Exception") ])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NONE" "" JR.this (JR.str "No Stack Trace")),
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


jm_getStackTrace_1 : JR.Method
jm_getStackTrace_1 jheap jthis jargs =
    JR.method [ ( "e", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "e") JR.null) (JR.run [ 
                        JR.declare "byteArrayOutputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                        JR.declare "printStream" "" (JR.new JPrintStream.jnew_1 [ (JR.local "byteArrayOutputStream") ]), 
                        JR.exec (JR.invoke "printStackTrace_1" (JR.local "e") [ (JR.local "printStream") ]), 
                        JR.declare "output" "" (JR.invoke "toString_0" (JR.local "byteArrayOutputStream") []), 
                        JR.return (JR.withState JR.newString [ (JR.local "output") ]) ]) identity, 
                    JR.return (JR.thisField "NONE") ])
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

