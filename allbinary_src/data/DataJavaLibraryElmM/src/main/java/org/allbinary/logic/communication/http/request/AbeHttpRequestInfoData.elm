module Org.Allbinary.Logic.Communication.Http.Request.AbeHttpRequestInfoData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.http.request
-}

import JR



jclass : String
jclass =
    "AbeHttpRequestInfoData"


jchain : List String
jchain =
    [ "AbeHttpRequestInfoData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "HTTP_USER_AGENT", JR.defaultOf "" ), ( "REMOTE_ADDRESS", JR.defaultOf "" ), ( "REMOTE_HOST", JR.defaultOf "" ), ( "REMOTE_HOST_BY_ADDRESS", JR.defaultOf "" ), ( "REMOTE_PORT", JR.defaultOf "" ), ( "REQUEST_FILE_PATH", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeHttpRequestInfoData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbeHttpRequestInfoData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "HTTP_USER_AGENT" "" JR.this (JR.str "HTTP_USER_AGENT")),
                JR.exec (JR.setField "REMOTE_ADDRESS" "" JR.this (JR.str "REMOTE_ADDRESS")),
                JR.exec (JR.setField "REMOTE_HOST" "" JR.this (JR.str "REMOTE_HOST")),
                JR.exec (JR.setField "REMOTE_HOST_BY_ADDRESS" "" JR.this (JR.str "REMOTE_HOST_BY_ADDRESS")),
                JR.exec (JR.setField "REMOTE_PORT" "" JR.this (JR.str "REMOTE_PORT")),
                JR.exec (JR.setField "REQUEST_FILE_PATH" "" JR.this (JR.str "REQUEST_FILE_PATH")),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

