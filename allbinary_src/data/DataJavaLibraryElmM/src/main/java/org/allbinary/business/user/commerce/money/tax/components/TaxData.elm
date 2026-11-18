module Org.Allbinary.Business.User.Commerce.Money.Tax.Components.TaxData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.money.tax.components
-}

import JR



jclass : String
jclass =
    "TaxData"


jchain : List String
jchain =
    [ "TaxData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TaxData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_RATE", jstatic_RATE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "TaxData" jclinit "NAME"
        (JR.str "TAX_NAME")
        s


jstatic_RATE : JR.M
jstatic_RATE s =
    JR.static "TaxData" jclinit "RATE"
        (JR.str "TAX_RATE")
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

