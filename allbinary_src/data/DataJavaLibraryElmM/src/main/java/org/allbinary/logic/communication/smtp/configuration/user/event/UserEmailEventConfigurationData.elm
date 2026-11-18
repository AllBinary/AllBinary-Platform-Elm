module Org.Allbinary.Logic.Communication.Smtp.Configuration.User.Event.UserEmailEventConfigurationData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.smtp.configuration.user.event
-}

import JR



jclass : String
jclass =
    "UserEmailEventConfigurationData"


jchain : List String
jchain =
    [ "UserEmailEventConfigurationData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UserEmailEventConfigurationData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_LISTENER_CLASSPATH", jstatic_LISTENER_CLASSPATH ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "UserEmailEventConfigurationData" jclinit "NAME"
        (JR.str "EMAIL_EVENT_CONFIGURATION_NAME")
        s


jstatic_LISTENER_CLASSPATH : JR.M
jstatic_LISTENER_CLASSPATH s =
    JR.static "UserEmailEventConfigurationData" jclinit "LISTENER_CLASSPATH"
        (JR.str "EMAIL_EVENT_CONFIGURATION_LISTENER_CLASSPATH")
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

