module Org.Allbinary.Business.User.Commerce.Inventory.Order.OrderData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.order
-}

import JR



jclass : String
jclass =
    "OrderData"


jchain : List String
jchain =
    [ "OrderData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OrderData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_ORDERS", jstatic_ORDERS ), ( "jstatic_ORDER", jstatic_ORDER ), ( "jstatic_ID", jstatic_ID ), ( "jstatic_CUSTOMERCOMMENT", jstatic_CUSTOMERCOMMENT ), ( "jstatic_CUSTOMERCANCELCOMMENT", jstatic_CUSTOMERCANCELCOMMENT ), ( "jstatic_STORECOMMENT", jstatic_STORECOMMENT ), ( "jstatic_STORECANCELCOMMENT", jstatic_STORECANCELCOMMENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ORDERS : JR.M
jstatic_ORDERS s =
    JR.static "OrderData" jclinit "ORDERS"
        (JR.str "ORDERS")
        s


jstatic_ORDER : JR.M
jstatic_ORDER s =
    JR.static "OrderData" jclinit "ORDER"
        (JR.str "ORDER")
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "OrderData" jclinit "ID"
        (JR.str "ORDER_ID")
        s


jstatic_CUSTOMERCOMMENT : JR.M
jstatic_CUSTOMERCOMMENT s =
    JR.static "OrderData" jclinit "CUSTOMERCOMMENT"
        (JR.str "ORDER_CUSTOMER_COMMENT")
        s


jstatic_CUSTOMERCANCELCOMMENT : JR.M
jstatic_CUSTOMERCANCELCOMMENT s =
    JR.static "OrderData" jclinit "CUSTOMERCANCELCOMMENT"
        (JR.str "ORDER_CUSTOMER_CANCEL_COMMENT")
        s


jstatic_STORECOMMENT : JR.M
jstatic_STORECOMMENT s =
    JR.static "OrderData" jclinit "STORECOMMENT"
        (JR.str "ORDER_STORE_COMMENT")
        s


jstatic_STORECANCELCOMMENT : JR.M
jstatic_STORECANCELCOMMENT s =
    JR.static "OrderData" jclinit "STORECANCELCOMMENT"
        (JR.str "ORDER_STORE_CANCEL_COMMENT")
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

