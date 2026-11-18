module Org.Allbinary.Thread.NullThread exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import JThread
import Org.Allbinary.Thread.NullRunnable as NullRunnable
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "NullThread"


jchain : List String
jchain =
    [ "NullThread" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullThread"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_THREAD", jstatic_NULL_THREAD ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_THREAD : JR.M
jstatic_NULL_THREAD s =
    JR.static "NullThread" jclinit "NULL_THREAD"
        (JR.new JThread.jnew_2 [ (JR.callStatic NullRunnable.jm_getInstance_0 []), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

