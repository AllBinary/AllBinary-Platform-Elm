module Org.Allbinary.Business.User.Address.ShippingAddressData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.address
-}

import JR



jclass : String
jclass =
    "ShippingAddressData"


jchain : List String
jchain =
    [ "ShippingAddressData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShippingAddressData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SETTOBILLINGADDRESS", jstatic_SETTOBILLINGADDRESS ), ( "jstatic_SELECT", jstatic_SELECT ), ( "jstatic_SELECTNAME", jstatic_SELECTNAME ), ( "jstatic_MULTIPLE", jstatic_MULTIPLE ), ( "jstatic_SHIPPINGADDRESSES", jstatic_SHIPPINGADDRESSES ), ( "jstatic_SHIPPINGADDRESS", jstatic_SHIPPINGADDRESS ), ( "jstatic_ID", jstatic_ID ), ( "jstatic_ADDRESS", jstatic_ADDRESS ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_STREET", jstatic_STREET ), ( "jstatic_CITY", jstatic_CITY ), ( "jstatic_STATE", jstatic_STATE ), ( "jstatic_CODE", jstatic_CODE ), ( "jstatic_COUNTRY", jstatic_COUNTRY ), ( "jstatic_TAX", jstatic_TAX ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SETTOBILLINGADDRESS : JR.M
jstatic_SETTOBILLINGADDRESS s =
    JR.static "ShippingAddressData" jclinit "SETTOBILLINGADDRESS"
        (JR.str "Set To Billing Address")
        s


jstatic_SELECT : JR.M
jstatic_SELECT s =
    JR.static "ShippingAddressData" jclinit "SELECT"
        (JR.str "Select Shipping Address")
        s


jstatic_SELECTNAME : JR.M
jstatic_SELECTNAME s =
    JR.static "ShippingAddressData" jclinit "SELECTNAME"
        (JR.str "SELECTSHIPPINGADDRESS")
        s


jstatic_MULTIPLE : JR.M
jstatic_MULTIPLE s =
    JR.static "ShippingAddressData" jclinit "MULTIPLE"
        (JR.str "SHIPPINGADDRESSES")
        s


jstatic_SHIPPINGADDRESSES : JR.M
jstatic_SHIPPINGADDRESSES s =
    JR.static "ShippingAddressData" jclinit "SHIPPINGADDRESSES"
        (JR.str "SHIPPINGADDRESSES")
        s


jstatic_SHIPPINGADDRESS : JR.M
jstatic_SHIPPINGADDRESS s =
    JR.static "ShippingAddressData" jclinit "SHIPPINGADDRESS"
        (JR.str "SHIPPINGADDRESS")
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "ShippingAddressData" jclinit "ID"
        (JR.str "SHIPPINGADDRESS_ID")
        s


jstatic_ADDRESS : JR.M
jstatic_ADDRESS s =
    JR.static "ShippingAddressData" jclinit "ADDRESS"
        (JR.str "SHIPPINGADDRESS_ADDRESS")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "ShippingAddressData" jclinit "NAME"
        (JR.str "SHIPPINGADDRESS_NAME")
        s


jstatic_STREET : JR.M
jstatic_STREET s =
    JR.static "ShippingAddressData" jclinit "STREET"
        (JR.str "SHIPPINGADDRESS_STREET")
        s


jstatic_CITY : JR.M
jstatic_CITY s =
    JR.static "ShippingAddressData" jclinit "CITY"
        (JR.str "SHIPPINGADDRESS_CITY")
        s


jstatic_STATE : JR.M
jstatic_STATE s =
    JR.static "ShippingAddressData" jclinit "STATE"
        (JR.str "SHIPPINGADDRESS_STATE")
        s


jstatic_CODE : JR.M
jstatic_CODE s =
    JR.static "ShippingAddressData" jclinit "CODE"
        (JR.str "SHIPPINGADDRESS_CODE")
        s


jstatic_COUNTRY : JR.M
jstatic_COUNTRY s =
    JR.static "ShippingAddressData" jclinit "COUNTRY"
        (JR.str "SHIPPINGADDRESS_COUNTRY")
        s


jstatic_TAX : JR.M
jstatic_TAX s =
    JR.static "ShippingAddressData" jclinit "TAX"
        (JR.str "SHIPPINGADDRESS_TAX")
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

