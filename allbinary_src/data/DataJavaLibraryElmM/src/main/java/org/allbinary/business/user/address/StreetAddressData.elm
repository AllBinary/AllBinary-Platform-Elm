module Org.Allbinary.Business.User.Address.StreetAddressData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.address
-}

import JR



jclass : String
jclass =
    "StreetAddressData"


jchain : List String
jchain =
    [ "StreetAddressData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StreetAddressData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_MAX", jstatic_MAX ), ( "jstatic_MIN", jstatic_MIN ), ( "jstatic_FORM", jstatic_FORM ), ( "jstatic_STATES", jstatic_STATES ), ( "jstatic_NUMBEROFADDRESSES", jstatic_NUMBEROFADDRESSES ), ( "jstatic_ID", jstatic_ID ), ( "jstatic_DEFAULT", jstatic_DEFAULT ), ( "jstatic_ADDRESS", jstatic_ADDRESS ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_STREET", jstatic_STREET ), ( "jstatic_CITY", jstatic_CITY ), ( "jstatic_STATE", jstatic_STATE ), ( "jstatic_CODE", jstatic_CODE ), ( "jstatic_COUNTRY", jstatic_COUNTRY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAX : JR.M
jstatic_MAX s =
    JR.static "StreetAddressData" jclinit "MAX"
        (JR.int 255)
        s


jstatic_MIN : JR.M
jstatic_MIN s =
    JR.static "StreetAddressData" jclinit "MIN"
        (JR.int 0)
        s


jstatic_FORM : JR.M
jstatic_FORM s =
    JR.static "StreetAddressData" jclinit "FORM"
        (JR.str "FORM")
        s


jstatic_STATES : JR.M
jstatic_STATES s =
    JR.static "StreetAddressData" jclinit "STATES"
        (JR.str "STATES")
        s


jstatic_NUMBEROFADDRESSES : JR.M
jstatic_NUMBEROFADDRESSES s =
    JR.static "StreetAddressData" jclinit "NUMBEROFADDRESSES"
        (JR.str "STREETADDRESS_NUMBEROFADDRESSES")
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "StreetAddressData" jclinit "ID"
        (JR.str "STREETADDRESS_ID")
        s


jstatic_DEFAULT : JR.M
jstatic_DEFAULT s =
    JR.static "StreetAddressData" jclinit "DEFAULT"
        (JR.str "STREETADDRESS_DEFAULT_ADDRESS")
        s


jstatic_ADDRESS : JR.M
jstatic_ADDRESS s =
    JR.static "StreetAddressData" jclinit "ADDRESS"
        (JR.str "STREETADDRESS_ADDRESS")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "StreetAddressData" jclinit "NAME"
        (JR.str "STREETADDRESS_NAME")
        s


jstatic_STREET : JR.M
jstatic_STREET s =
    JR.static "StreetAddressData" jclinit "STREET"
        (JR.str "STREETADDRESS_STREET")
        s


jstatic_CITY : JR.M
jstatic_CITY s =
    JR.static "StreetAddressData" jclinit "CITY"
        (JR.str "STREETADDRESS_CITY")
        s


jstatic_STATE : JR.M
jstatic_STATE s =
    JR.static "StreetAddressData" jclinit "STATE"
        (JR.str "STREETADDRESS_STATE")
        s


jstatic_CODE : JR.M
jstatic_CODE s =
    JR.static "StreetAddressData" jclinit "CODE"
        (JR.str "STREETADDRESS_CODE")
        s


jstatic_COUNTRY : JR.M
jstatic_COUNTRY s =
    JR.static "StreetAddressData" jclinit "COUNTRY"
        (JR.str "STREETADDRESS_COUNTRY")
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

