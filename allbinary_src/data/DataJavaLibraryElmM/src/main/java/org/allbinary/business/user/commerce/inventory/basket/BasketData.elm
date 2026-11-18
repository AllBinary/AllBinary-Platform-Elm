module Org.Allbinary.Business.User.Commerce.Inventory.Basket.BasketData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.basket
-}

import JR



jclass : String
jclass =
    "BasketData"


jchain : List String
jchain =
    [ "BasketData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasketData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_BASKET", jstatic_BASKET ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_BASKETREVIEW", jstatic_BASKETREVIEW ), ( "jstatic_TOTALWEIGHT", jstatic_TOTALWEIGHT ), ( "jstatic_ITEMTOTAL", jstatic_ITEMTOTAL ), ( "jstatic_ITEMTOTALINBASKET", jstatic_ITEMTOTALINBASKET ), ( "jstatic_SUBTOTAL", jstatic_SUBTOTAL ), ( "jstatic_ISEMPTY", jstatic_ISEMPTY ), ( "jstatic_INSERT", jstatic_INSERT ), ( "jstatic_DELETE", jstatic_DELETE ), ( "jstatic_ADJUST", jstatic_ADJUST ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_BASKET : JR.M
jstatic_BASKET s =
    JR.static "BasketData" jclinit "BASKET"
        (JR.str "BASKET")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "BasketData" jclinit "NAME"
        (JR.str "NAME")
        s


jstatic_BASKETREVIEW : JR.M
jstatic_BASKETREVIEW s =
    JR.static "BasketData" jclinit "BASKETREVIEW"
        (JR.str "BASKET_REVIEW")
        s


jstatic_TOTALWEIGHT : JR.M
jstatic_TOTALWEIGHT s =
    JR.static "BasketData" jclinit "TOTALWEIGHT"
        (JR.str "BASKET_TOTALWEIGTH")
        s


jstatic_ITEMTOTAL : JR.M
jstatic_ITEMTOTAL s =
    JR.static "BasketData" jclinit "ITEMTOTAL"
        (JR.str "BASKET_ITEMTOTAL")
        s


jstatic_ITEMTOTALINBASKET : JR.M
jstatic_ITEMTOTALINBASKET s =
    JR.static "BasketData" jclinit "ITEMTOTALINBASKET"
        (JR.str "BASKET_ITEMTOTALINBASKET")
        s


jstatic_SUBTOTAL : JR.M
jstatic_SUBTOTAL s =
    JR.static "BasketData" jclinit "SUBTOTAL"
        (JR.str "BASKET_SUBTOTAL")
        s


jstatic_ISEMPTY : JR.M
jstatic_ISEMPTY s =
    JR.static "BasketData" jclinit "ISEMPTY"
        (JR.str "BASKET_ISEMPTY")
        s


jstatic_INSERT : JR.M
jstatic_INSERT s =
    JR.static "BasketData" jclinit "INSERT"
        (JR.str "BASKET_INSERT")
        s


jstatic_DELETE : JR.M
jstatic_DELETE s =
    JR.static "BasketData" jclinit "DELETE"
        (JR.str "BASKET_DELETE")
        s


jstatic_ADJUST : JR.M
jstatic_ADJUST s =
    JR.static "BasketData" jclinit "ADJUST"
        (JR.str "BASKET_ADJUST")
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

