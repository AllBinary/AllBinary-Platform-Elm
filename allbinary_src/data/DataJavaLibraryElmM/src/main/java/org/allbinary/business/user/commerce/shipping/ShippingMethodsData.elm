module Org.Allbinary.Business.User.Commerce.Shipping.ShippingMethodsData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.shipping
-}

import JR



jclass : String
jclass =
    "ShippingMethodsData"


jchain : List String
jchain =
    [ "ShippingMethodsData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShippingMethodsData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SHIPPINGMETHODSORDERSUMMARIES", jstatic_SHIPPINGMETHODSORDERSUMMARIES ), ( "jstatic_SHIPPINGMETHODORDERSUMMARY", jstatic_SHIPPINGMETHODORDERSUMMARY ), ( "jstatic_SHIPPINGMETHODS", jstatic_SHIPPINGMETHODS ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_SHIPPINGCOST", jstatic_SHIPPINGCOST ), ( "jstatic_TAXRATE", jstatic_TAXRATE ), ( "jstatic_SUBTOTAL", jstatic_SUBTOTAL ), ( "jstatic_TAX", jstatic_TAX ), ( "jstatic_TOTAL", jstatic_TOTAL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SHIPPINGMETHODSORDERSUMMARIES : JR.M
jstatic_SHIPPINGMETHODSORDERSUMMARIES s =
    JR.static "ShippingMethodsData" jclinit "SHIPPINGMETHODSORDERSUMMARIES"
        (JR.str "SHIPPINGMETHODS_ORDERSUMMARIES")
        s


jstatic_SHIPPINGMETHODORDERSUMMARY : JR.M
jstatic_SHIPPINGMETHODORDERSUMMARY s =
    JR.static "ShippingMethodsData" jclinit "SHIPPINGMETHODORDERSUMMARY"
        (JR.str "SHIPPINGMETHOD_ORDERSUMMARY")
        s


jstatic_SHIPPINGMETHODS : JR.M
jstatic_SHIPPINGMETHODS s =
    JR.static "ShippingMethodsData" jclinit "SHIPPINGMETHODS"
        (JR.str "SHIPPINGMETHODS")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "ShippingMethodsData" jclinit "NAME"
        (JR.str "SHIPPINGMETHODS_NAME")
        s


jstatic_SHIPPINGCOST : JR.M
jstatic_SHIPPINGCOST s =
    JR.static "ShippingMethodsData" jclinit "SHIPPINGCOST"
        (JR.str "SHIPPINGMETHOD_SHIPPINGCOST")
        s


jstatic_TAXRATE : JR.M
jstatic_TAXRATE s =
    JR.static "ShippingMethodsData" jclinit "TAXRATE"
        (JR.str "SHIPPINGMETHOD_TAXRATE")
        s


jstatic_SUBTOTAL : JR.M
jstatic_SUBTOTAL s =
    JR.static "ShippingMethodsData" jclinit "SUBTOTAL"
        (JR.str "SHIPPINGMETHOD_SUBTOTAL")
        s


jstatic_TAX : JR.M
jstatic_TAX s =
    JR.static "ShippingMethodsData" jclinit "TAX"
        (JR.str "SHIPPINGMETHOD_TAX")
        s


jstatic_TOTAL : JR.M
jstatic_TOTAL s =
    JR.static "ShippingMethodsData" jclinit "TOTAL"
        (JR.str "SHIPPINGMETHOD_TOTAL")
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

