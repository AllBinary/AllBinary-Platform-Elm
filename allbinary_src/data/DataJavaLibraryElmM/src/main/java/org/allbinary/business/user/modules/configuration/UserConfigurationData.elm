module Org.Allbinary.Business.User.Modules.Configuration.UserConfigurationData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.modules.configuration
-}

import JR
import Org.Allbinary.Logic.Io.File.CommonDataFileStrings as CommonDataFileStrings


jclass : String
jclass =
    "UserConfigurationData"


jchain : List String
jchain =
    [ "UserConfigurationData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UserConfigurationData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_UNCRYPTED_EXTENSION", jstatic_UNCRYPTED_EXTENSION ), ( "jstatic_ENCRYPTED_EXTENSION", jstatic_ENCRYPTED_EXTENSION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "UserConfigurationData" jclinit "NAME"
        (JR.str "USER_CONFIGURATION_NAME")
        s


jstatic_UNCRYPTED_EXTENSION : JR.M
jstatic_UNCRYPTED_EXTENSION s =
    JR.static "UserConfigurationData" jclinit "UNCRYPTED_EXTENSION"
        (JR.field "UNCRYPTED_EXTENSION" (JR.callStatic CommonDataFileStrings.jm_getInstance_0 []))
        s


jstatic_ENCRYPTED_EXTENSION : JR.M
jstatic_ENCRYPTED_EXTENSION s =
    JR.static "UserConfigurationData" jclinit "ENCRYPTED_EXTENSION"
        (JR.field "ENCRYPTED_EXTENSION" (JR.callStatic CommonDataFileStrings.jm_getInstance_0 []))
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

