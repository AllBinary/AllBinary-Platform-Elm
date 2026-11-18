module Org.Allbinary.Logic.Communication.Http.Request.NameSpaceRequestParamData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.http.request
-}

import JR



jclass : String
jclass =
    "NameSpaceRequestParamData"


jchain : List String
jchain =
    [ "NameSpaceRequestParamData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NameSpaceRequestParamData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_VALUE", jstatic_VALUE ), ( "jstatic_PROPERTIES", jstatic_PROPERTIES ), ( "jstatic_SEP", jstatic_SEP ), ( "jstatic_PROPERTIESSEPARATOR", jstatic_PROPERTIESSEPARATOR ), ( "jstatic_DOCUMENT", jstatic_DOCUMENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "NameSpaceRequestParamData" jclinit "NAME"
        (JR.str "NAMESPACE_REQUESTDATA_NAME")
        s


jstatic_VALUE : JR.M
jstatic_VALUE s =
    JR.static "NameSpaceRequestParamData" jclinit "VALUE"
        (JR.str "INPUT_VALUE")
        s


jstatic_PROPERTIES : JR.M
jstatic_PROPERTIES s =
    JR.static "NameSpaceRequestParamData" jclinit "PROPERTIES"
        (JR.str "_PROPERTIES_")
        s


jstatic_SEP : JR.M
jstatic_SEP s =
    JR.static "NameSpaceRequestParamData" jclinit "SEP"
        (JR.str "_DOT_")
        s


jstatic_PROPERTIESSEPARATOR : JR.M
jstatic_PROPERTIESSEPARATOR s =
    JR.static "NameSpaceRequestParamData" jclinit "PROPERTIESSEPARATOR"
        (JR.str "_PROPDOT_")
        s


jstatic_DOCUMENT : JR.M
jstatic_DOCUMENT s =
    JR.static "NameSpaceRequestParamData" jclinit "DOCUMENT"
        (JR.str "NAMESPACE_REQUESTDATA_DOCUMENT")
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

