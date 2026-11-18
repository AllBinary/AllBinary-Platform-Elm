module Org.Allbinary.Logic.Communication.Smtp.Configuration.Server.EmailServerConfigurationData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.smtp.configuration.server
-}

import JR



jclass : String
jclass =
    "EmailServerConfigurationData"


jchain : List String
jchain =
    [ "EmailServerConfigurationData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EmailServerConfigurationData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_SERVER", jstatic_SERVER ), ( "jstatic_ACCOUNT", jstatic_ACCOUNT ), ( "jstatic_PASSWORD", jstatic_PASSWORD ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "EmailServerConfigurationData" jclinit "NAME"
        (JR.str "EMAIL_SERVER_CONFIGURATION_NAME")
        s


jstatic_SERVER : JR.M
jstatic_SERVER s =
    JR.static "EmailServerConfigurationData" jclinit "SERVER"
        (JR.str "EMAIL_SERVER_CONFIGURATION_SERVER")
        s


jstatic_ACCOUNT : JR.M
jstatic_ACCOUNT s =
    JR.static "EmailServerConfigurationData" jclinit "ACCOUNT"
        (JR.str "EMAIL_SERVER_CONFIGURATION_ACCOUNT")
        s


jstatic_PASSWORD : JR.M
jstatic_PASSWORD s =
    JR.static "EmailServerConfigurationData" jclinit "PASSWORD"
        (JR.str "EMAIL_SERVER_CONFIGURATION_PASSWORD")
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

