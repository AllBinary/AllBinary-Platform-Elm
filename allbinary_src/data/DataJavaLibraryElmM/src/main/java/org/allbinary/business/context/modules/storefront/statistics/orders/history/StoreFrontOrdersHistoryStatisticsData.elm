module Org.Allbinary.Business.Context.Modules.Storefront.Statistics.Orders.History.StoreFrontOrdersHistoryStatisticsData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.context.modules.storefront.statistics.orders.history
-}

import JR



jclass : String
jclass =
    "StoreFrontOrdersHistoryStatisticsData"


jchain : List String
jchain =
    [ "StoreFrontOrdersHistoryStatisticsData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "NUMBEROFORDERS", JR.defaultOf "" ), ( "SUBTOTAL", JR.defaultOf "" ), ( "SHIPPINGCOST", JR.defaultOf "" ), ( "TAXES", JR.defaultOf "" ), ( "TOTAL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StoreFrontOrdersHistoryStatisticsData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "StoreFrontOrdersHistoryStatisticsData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME")),
                JR.exec (JR.setField "NUMBEROFORDERS" "" JR.this (JR.str "STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS")),
                JR.exec (JR.setField "SUBTOTAL" "" JR.this (JR.str "STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL")),
                JR.exec (JR.setField "SHIPPINGCOST" "" JR.this (JR.str "STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST")),
                JR.exec (JR.setField "TAXES" "" JR.this (JR.str "STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES")),
                JR.exec (JR.setField "TOTAL" "" JR.this (JR.str "STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

