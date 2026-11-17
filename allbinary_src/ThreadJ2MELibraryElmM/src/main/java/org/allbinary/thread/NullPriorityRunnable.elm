module NullPriorityRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import PriorityRunnable


jclass : String
jclass =
    "NullPriorityRunnable"


jchain : List String
jchain =
    [ "NullPriorityRunnable" ]
        ++ PriorityRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getPriority_0", jm_getPriority_0 )
        , ( "isDone_0", jm_isDone_0 )
        , ( "reset_0", jm_reset_0 )
        , ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullPriorityRunnable"
        [ ( "jm_getPriority_0", jm_getPriority_0 ), ( "jm_isDone_0", jm_isDone_0 ), ( "jm_reset_0", jm_reset_0 ), ( "jm_run_0", jm_run_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_getPriority_0 : JR.Method
jm_getPriority_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_isDone_0 : JR.Method
jm_isDone_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

