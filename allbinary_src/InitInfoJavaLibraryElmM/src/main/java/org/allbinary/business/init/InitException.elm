module Org.Allbinary.Business.Init.InitException exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR



jclass : String
jclass =
    "InitException"


jchain : List String
jchain =
    [ "InitException" ]
        ++ [ "Exception" ] ++ [ "Exception" ] ++ [ "Throwable" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "message", JR.JNull ), ( "cause", JR.JNull ) ] ++ []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitException"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "msg", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect JR.throwableInit JR.this [ (JR.local "msg") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

