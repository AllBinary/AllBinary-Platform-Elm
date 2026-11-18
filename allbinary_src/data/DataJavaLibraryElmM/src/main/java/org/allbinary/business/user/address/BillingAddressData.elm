module Org.Allbinary.Business.User.Address.BillingAddressData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.address
-}

import JR



jclass : String
jclass =
    "BillingAddressData"


jchain : List String
jchain =
    [ "BillingAddressData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BillingAddressData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_MAX", jstatic_MAX ), ( "jstatic_MIN", jstatic_MIN ), ( "jstatic_MULTIPLE", jstatic_MULTIPLE ), ( "jstatic_STATES", jstatic_STATES ), ( "jstatic_SETTOSHIPPINGADDRESS", jstatic_SETTOSHIPPINGADDRESS ), ( "jstatic_SELECT", jstatic_SELECT ), ( "jstatic_SETTOSHIPPINGADDRESSNAME", jstatic_SETTOSHIPPINGADDRESSNAME ), ( "jstatic_BILLINGADDRESSES", jstatic_BILLINGADDRESSES ), ( "jstatic_BILLINGADDRESS", jstatic_BILLINGADDRESS ), ( "jstatic_ID", jstatic_ID ), ( "jstatic_ADDRESS", jstatic_ADDRESS ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_STREET", jstatic_STREET ), ( "jstatic_CITY", jstatic_CITY ), ( "jstatic_STATE", jstatic_STATE ), ( "jstatic_CODE", jstatic_CODE ), ( "jstatic_COUNTRY", jstatic_COUNTRY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAX : JR.M
jstatic_MAX s =
    JR.static "BillingAddressData" jclinit "MAX"
        (JR.int 255)
        s


jstatic_MIN : JR.M
jstatic_MIN s =
    JR.static "BillingAddressData" jclinit "MIN"
        (JR.int 0)
        s


jstatic_MULTIPLE : JR.M
jstatic_MULTIPLE s =
    JR.static "BillingAddressData" jclinit "MULTIPLE"
        (JR.str "BILLINGADDRESSES")
        s


jstatic_STATES : JR.M
jstatic_STATES s =
    JR.static "BillingAddressData" jclinit "STATES"
        (JR.str "BILLINGADDRESS_STATES")
        s


jstatic_SETTOSHIPPINGADDRESS : JR.M
jstatic_SETTOSHIPPINGADDRESS s =
    JR.static "BillingAddressData" jclinit "SETTOSHIPPINGADDRESS"
        (JR.str "Set To Shipping Address")
        s


jstatic_SELECT : JR.M
jstatic_SELECT s =
    JR.static "BillingAddressData" jclinit "SELECT"
        (JR.str "Select Billing Address")
        s


jstatic_SETTOSHIPPINGADDRESSNAME : JR.M
jstatic_SETTOSHIPPINGADDRESSNAME s =
    JR.static "BillingAddressData" jclinit "SETTOSHIPPINGADDRESSNAME"
        (JR.str "SETTOSHIPPINGADDRESS")
        s


jstatic_BILLINGADDRESSES : JR.M
jstatic_BILLINGADDRESSES s =
    JR.static "BillingAddressData" jclinit "BILLINGADDRESSES"
        (JR.str "BILLINGADDRESSES")
        s


jstatic_BILLINGADDRESS : JR.M
jstatic_BILLINGADDRESS s =
    JR.static "BillingAddressData" jclinit "BILLINGADDRESS"
        (JR.str "BILLINGADDRESS")
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "BillingAddressData" jclinit "ID"
        (JR.str "BILLINGADDRESS_ID")
        s


jstatic_ADDRESS : JR.M
jstatic_ADDRESS s =
    JR.static "BillingAddressData" jclinit "ADDRESS"
        (JR.str "BILLINGADDRESS_ADDRESS")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "BillingAddressData" jclinit "NAME"
        (JR.str "BILLINGADDRESS_NAME")
        s


jstatic_STREET : JR.M
jstatic_STREET s =
    JR.static "BillingAddressData" jclinit "STREET"
        (JR.str "BILLINGADDRESS_STREET")
        s


jstatic_CITY : JR.M
jstatic_CITY s =
    JR.static "BillingAddressData" jclinit "CITY"
        (JR.str "BILLINGADDRESS_CITY")
        s


jstatic_STATE : JR.M
jstatic_STATE s =
    JR.static "BillingAddressData" jclinit "STATE"
        (JR.str "BILLINGADDRESS_STATE")
        s


jstatic_CODE : JR.M
jstatic_CODE s =
    JR.static "BillingAddressData" jclinit "CODE"
        (JR.str "BILLINGADDRESS_CODE")
        s


jstatic_COUNTRY : JR.M
jstatic_COUNTRY s =
    JR.static "BillingAddressData" jclinit "COUNTRY"
        (JR.str "BILLINGADDRESS_COUNTRY")
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

