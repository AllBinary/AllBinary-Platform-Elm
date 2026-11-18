module Org.Allbinary.Business.User.Modules.Admin.Configuration.AdminConfigurationData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.modules.admin.configuration
-}

import JR



jclass : String
jclass =
    "AdminConfigurationData"


jchain : List String
jchain =
    [ "AdminConfigurationData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdminConfigurationData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_CONTEXTNAME", jstatic_CONTEXTNAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_CONTEXTNAME : JR.M
jstatic_CONTEXTNAME s =
    JR.static "AdminConfigurationData" jclinit "CONTEXTNAME"
        (JR.str "Admin")
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

