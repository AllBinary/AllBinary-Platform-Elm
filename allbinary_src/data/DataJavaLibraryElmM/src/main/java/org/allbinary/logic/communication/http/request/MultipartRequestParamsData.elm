module Org.Allbinary.Logic.Communication.Http.Request.MultipartRequestParamsData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.http.request
-}

import JR



jclass : String
jclass =
    "MultipartRequestParamsData"


jchain : List String
jchain =
    [ "MultipartRequestParamsData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultipartRequestParamsData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_HASHMAP", jstatic_HASHMAP ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_HASHMAP : JR.M
jstatic_HASHMAP s =
    JR.static "MultipartRequestParamsData" jclinit "HASHMAP"
        (JR.str "MULTIPART_REQUEST_HASHMAP")
        s


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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

