module Org.Allbinary.Logic.Communication.Http.Request.RequestData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.http.request
-}

import JR



jclass : String
jclass =
    "RequestData"


jchain : List String
jchain =
    [ "RequestData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RequestData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_REQUEST", jstatic_REQUEST ), ( "jstatic_PARAMETER", jstatic_PARAMETER ), ( "jstatic_VIEWS", jstatic_VIEWS ), ( "jstatic_VISITORS", jstatic_VISITORS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_REQUEST : JR.M
jstatic_REQUEST s =
    JR.static "RequestData" jclinit "REQUEST"
        (JR.str "REQUESTDATA_REQUEST")
        s


jstatic_PARAMETER : JR.M
jstatic_PARAMETER s =
    JR.static "RequestData" jclinit "PARAMETER"
        (JR.str "REQUESTDATA_PARAMETER")
        s


jstatic_VIEWS : JR.M
jstatic_VIEWS s =
    JR.static "RequestData" jclinit "VIEWS"
        (JR.str "REQUESTDATA_VIEWS")
        s


jstatic_VISITORS : JR.M
jstatic_VISITORS s =
    JR.static "RequestData" jclinit "VISITORS"
        (JR.str "REQUESTDATA_VISITORS")
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

