module Org.Allbinary.Business.User.Commerce.Shipping.ShippingMethodData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.shipping
-}

import JR



jclass : String
jclass =
    "ShippingMethodData"


jchain : List String
jchain =
    [ "ShippingMethodData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShippingMethodData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_DESCRIPTION", jstatic_DESCRIPTION ), ( "jstatic_DEFAULT", jstatic_DEFAULT ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_GROUP", jstatic_GROUP ), ( "jstatic_COST", jstatic_COST ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_DESCRIPTION : JR.M
jstatic_DESCRIPTION s =
    JR.static "ShippingMethodData" jclinit "DESCRIPTION"
        (JR.str "SHIPPINGMETHOD_DESCRIPTION")
        s


jstatic_DEFAULT : JR.M
jstatic_DEFAULT s =
    JR.static "ShippingMethodData" jclinit "DEFAULT"
        (JR.str "SHIPPINGMETHOD_DEFAULT")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "ShippingMethodData" jclinit "NAME"
        (JR.str "SHIPPINGMETHOD_NAME")
        s


jstatic_GROUP : JR.M
jstatic_GROUP s =
    JR.static "ShippingMethodData" jclinit "GROUP"
        (JR.str "SHIPPINGMETHOD_GROUP")
        s


jstatic_COST : JR.M
jstatic_COST s =
    JR.static "ShippingMethodData" jclinit "COST"
        (JR.str "SHIPPINGMETHOD_COST")
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

