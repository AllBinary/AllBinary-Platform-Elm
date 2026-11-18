module Org.Allbinary.Business.User.Commerce.Money.Payment.Gateway.Modules.Processor.Authorizenet.Aim.AuthorizeNetAimData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim
-}

import JR



jclass : String
jclass =
    "AuthorizeNetAimData"


jchain : List String
jchain =
    [ "AuthorizeNetAimData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AuthorizeNetAimData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_X_DELIM_DATA", jstatic_X_DELIM_DATA ), ( "jstatic_X_DELIM_CHAR", jstatic_X_DELIM_CHAR ), ( "jstatic_X_ENCAP_CHAR", jstatic_X_ENCAP_CHAR ), ( "jstatic_X_AUTHENTICATION_INDICATOR", jstatic_X_AUTHENTICATION_INDICATOR ), ( "jstatic_X_CARDHOLDER_AUTHENTICATION_VALUE", jstatic_X_CARDHOLDER_AUTHENTICATION_VALUE ), ( "jstatic_X_DRIVERS_LICENSE_NUM", jstatic_X_DRIVERS_LICENSE_NUM ), ( "jstatic_X_DRIVERS_LICENSE_STATE", jstatic_X_DRIVERS_LICENSE_STATE ), ( "jstatic_X_DRIVERS_LICENSE_DOB", jstatic_X_DRIVERS_LICENSE_DOB ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_X_DELIM_DATA : JR.M
jstatic_X_DELIM_DATA s =
    JR.static "AuthorizeNetAimData" jclinit "X_DELIM_DATA"
        (JR.str "x_delim_data")
        s


jstatic_X_DELIM_CHAR : JR.M
jstatic_X_DELIM_CHAR s =
    JR.static "AuthorizeNetAimData" jclinit "X_DELIM_CHAR"
        (JR.str "x_delim_char")
        s


jstatic_X_ENCAP_CHAR : JR.M
jstatic_X_ENCAP_CHAR s =
    JR.static "AuthorizeNetAimData" jclinit "X_ENCAP_CHAR"
        (JR.str "x_encap_char")
        s


jstatic_X_AUTHENTICATION_INDICATOR : JR.M
jstatic_X_AUTHENTICATION_INDICATOR s =
    JR.static "AuthorizeNetAimData" jclinit "X_AUTHENTICATION_INDICATOR"
        (JR.str "x_authentication_indicator")
        s


jstatic_X_CARDHOLDER_AUTHENTICATION_VALUE : JR.M
jstatic_X_CARDHOLDER_AUTHENTICATION_VALUE s =
    JR.static "AuthorizeNetAimData" jclinit "X_CARDHOLDER_AUTHENTICATION_VALUE"
        (JR.str "x_cardholder_authentication_value")
        s


jstatic_X_DRIVERS_LICENSE_NUM : JR.M
jstatic_X_DRIVERS_LICENSE_NUM s =
    JR.static "AuthorizeNetAimData" jclinit "X_DRIVERS_LICENSE_NUM"
        (JR.str "x_drivers_license_num")
        s


jstatic_X_DRIVERS_LICENSE_STATE : JR.M
jstatic_X_DRIVERS_LICENSE_STATE s =
    JR.static "AuthorizeNetAimData" jclinit "X_DRIVERS_LICENSE_STATE"
        (JR.str "x_drivers_license_state")
        s


jstatic_X_DRIVERS_LICENSE_DOB : JR.M
jstatic_X_DRIVERS_LICENSE_DOB s =
    JR.static "AuthorizeNetAimData" jclinit "X_DRIVERS_LICENSE_DOB"
        (JR.str "x_drivers_license_dob")
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

