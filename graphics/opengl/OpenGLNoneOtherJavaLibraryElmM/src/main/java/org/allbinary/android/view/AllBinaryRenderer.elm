module Org.Allbinary.Android.View.AllBinaryRenderer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.android.view
-}

import JR



jclass : String
jclass =
    "AllBinaryRenderer"


jchain : List String
jchain =
    [ "AllBinaryRenderer" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setRunnable_1", jm_setRunnable_1 )
        , ( "clearRunnable_0", jm_clearRunnable_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryRenderer"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setRunnable_1", jm_setRunnable_1 ), ( "jm_clearRunnable_0", jm_clearRunnable_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AllBinaryRenderer" jclinit "instance"
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


jm_setRunnable_1 : JR.Method
jm_setRunnable_1 jheap jthis jargs =
    JR.method [ ( "runnable", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_clearRunnable_0 : JR.Method
jm_clearRunnable_0 jheap jthis jargs =
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

