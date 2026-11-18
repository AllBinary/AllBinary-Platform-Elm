module Org.Apache.Xmlrpc.XmlRpcException exposing (..)

{-| Generated Code Do Not Modify package org.apache.xmlrpc
-}

import JR



jclass : String
jclass =
    "XmlRpcException"


jchain : List String
jchain =
    [ "XmlRpcException" ]
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
    JR.register "XmlRpcException"
        [ ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "code", "I" ), ( "message", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect JR.throwableInit JR.this [ (JR.local "message") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

