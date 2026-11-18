module Org.Allbinary.Business.User.Commerce.Inventory.Order.OrderHistoryData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.order
-}

import JR



jclass : String
jclass =
    "OrderHistoryData"


jchain : List String
jchain =
    [ "OrderHistoryData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OrderHistoryData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_MAXIDLEN", jstatic_MAXIDLEN ), ( "jstatic_DATEDELTA", jstatic_DATEDELTA ), ( "jstatic_DATETYPE", jstatic_DATETYPE ), ( "jstatic_TYPELONG", jstatic_TYPELONG ), ( "jstatic_TYPECAESAR", jstatic_TYPECAESAR ), ( "jstatic_TODATE", jstatic_TODATE ), ( "jstatic_FROMHOUR", jstatic_FROMHOUR ), ( "jstatic_FROMDAY", jstatic_FROMDAY ), ( "jstatic_FROMMONTH", jstatic_FROMMONTH ), ( "jstatic_FROMYEAR", jstatic_FROMYEAR ), ( "jstatic_TOHOUR", jstatic_TOHOUR ), ( "jstatic_TODAY", jstatic_TODAY ), ( "jstatic_TOMONTH", jstatic_TOMONTH ), ( "jstatic_TOYEAR", jstatic_TOYEAR ), ( "jstatic_ORDERHISTORY", jstatic_ORDERHISTORY ), ( "jstatic_SHIPPEDDATE", jstatic_SHIPPEDDATE ), ( "jstatic_ORDERDATE", jstatic_ORDERDATE ), ( "jstatic_TRANSDATE", jstatic_TRANSDATE ), ( "jstatic_CANCELDATE", jstatic_CANCELDATE ), ( "jstatic_SHIPPEDDATEFORMATTED", jstatic_SHIPPEDDATEFORMATTED ), ( "jstatic_ORDERDATEFORMATTED", jstatic_ORDERDATEFORMATTED ), ( "jstatic_TRANSDATEFORMATTED", jstatic_TRANSDATEFORMATTED ), ( "jstatic_CANCELDATEFORMATTED", jstatic_CANCELDATEFORMATTED ), ( "jstatic_SUBTOTAL", jstatic_SUBTOTAL ), ( "jstatic_SHIPPINGCOST", jstatic_SHIPPINGCOST ), ( "jstatic_TAX", jstatic_TAX ), ( "jstatic_TOTAL", jstatic_TOTAL ), ( "jstatic_CANCELINFO", jstatic_CANCELINFO ), ( "jstatic_CANCELTYPE", jstatic_CANCELTYPE ), ( "jstatic_STATUS", jstatic_STATUS ), ( "jstatic_PREPROCESSINGNAME", jstatic_PREPROCESSINGNAME ), ( "jstatic_PROCESSINGNAME", jstatic_PROCESSINGNAME ), ( "jstatic_CANCELLEDNAME", jstatic_CANCELLEDNAME ), ( "jstatic_PARTIALLYSHIPPEDNAME", jstatic_PARTIALLYSHIPPEDNAME ), ( "jstatic_SHIPPEDNAME", jstatic_SHIPPEDNAME ), ( "jstatic_PREPROCESSING", jstatic_PREPROCESSING ), ( "jstatic_PROCESSING", jstatic_PROCESSING ), ( "jstatic_CANCELLED", jstatic_CANCELLED ), ( "jstatic_PARTIALLYSHIPPED", jstatic_PARTIALLYSHIPPED ), ( "jstatic_SHIPPED", jstatic_SHIPPED ), ( "jstatic_SETSTATUS", jstatic_SETSTATUS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAXIDLEN : JR.M
jstatic_MAXIDLEN s =
    JR.static "OrderHistoryData" jclinit "MAXIDLEN"
        (JR.int 19)
        s


jstatic_DATEDELTA : JR.M
jstatic_DATEDELTA s =
    JR.static "OrderHistoryData" jclinit "DATEDELTA"
        (JR.str "DATE_DELTA")
        s


jstatic_DATETYPE : JR.M
jstatic_DATETYPE s =
    JR.static "OrderHistoryData" jclinit "DATETYPE"
        (JR.str "DATE_TYPE")
        s


jstatic_TYPELONG : JR.M
jstatic_TYPELONG s =
    JR.static "OrderHistoryData" jclinit "TYPELONG"
        (JR.str "TYPE_LONG")
        s


jstatic_TYPECAESAR : JR.M
jstatic_TYPECAESAR s =
    JR.static "OrderHistoryData" jclinit "TYPECAESAR"
        (JR.str "TYPE_CAESAR")
        s


jstatic_TODATE : JR.M
jstatic_TODATE s =
    JR.static "OrderHistoryData" jclinit "TODATE"
        (JR.str "TO_DATE")
        s


jstatic_FROMHOUR : JR.M
jstatic_FROMHOUR s =
    JR.static "OrderHistoryData" jclinit "FROMHOUR"
        (JR.str "FROM_HOUR")
        s


jstatic_FROMDAY : JR.M
jstatic_FROMDAY s =
    JR.static "OrderHistoryData" jclinit "FROMDAY"
        (JR.str "FROM_DAY")
        s


jstatic_FROMMONTH : JR.M
jstatic_FROMMONTH s =
    JR.static "OrderHistoryData" jclinit "FROMMONTH"
        (JR.str "FROM_MONTH")
        s


jstatic_FROMYEAR : JR.M
jstatic_FROMYEAR s =
    JR.static "OrderHistoryData" jclinit "FROMYEAR"
        (JR.str "FROM_YEAR")
        s


jstatic_TOHOUR : JR.M
jstatic_TOHOUR s =
    JR.static "OrderHistoryData" jclinit "TOHOUR"
        (JR.str "TO_HOUR")
        s


jstatic_TODAY : JR.M
jstatic_TODAY s =
    JR.static "OrderHistoryData" jclinit "TODAY"
        (JR.str "TO_DAY")
        s


jstatic_TOMONTH : JR.M
jstatic_TOMONTH s =
    JR.static "OrderHistoryData" jclinit "TOMONTH"
        (JR.str "TO_MONTH")
        s


jstatic_TOYEAR : JR.M
jstatic_TOYEAR s =
    JR.static "OrderHistoryData" jclinit "TOYEAR"
        (JR.str "TO_YEAR")
        s


jstatic_ORDERHISTORY : JR.M
jstatic_ORDERHISTORY s =
    JR.static "OrderHistoryData" jclinit "ORDERHISTORY"
        (JR.str "ORDERHISTORY")
        s


jstatic_SHIPPEDDATE : JR.M
jstatic_SHIPPEDDATE s =
    JR.static "OrderHistoryData" jclinit "SHIPPEDDATE"
        (JR.str "ORDERHISTORY_SHIPPED_DATE")
        s


jstatic_ORDERDATE : JR.M
jstatic_ORDERDATE s =
    JR.static "OrderHistoryData" jclinit "ORDERDATE"
        (JR.str "ORDERHISTORY_ORDER_DATE")
        s


jstatic_TRANSDATE : JR.M
jstatic_TRANSDATE s =
    JR.static "OrderHistoryData" jclinit "TRANSDATE"
        (JR.str "ORDERHISTORY_TRANS_DATE")
        s


jstatic_CANCELDATE : JR.M
jstatic_CANCELDATE s =
    JR.static "OrderHistoryData" jclinit "CANCELDATE"
        (JR.str "ORDERHISTORY_CANCEL_DATE")
        s


jstatic_SHIPPEDDATEFORMATTED : JR.M
jstatic_SHIPPEDDATEFORMATTED s =
    JR.static "OrderHistoryData" jclinit "SHIPPEDDATEFORMATTED"
        (JR.str "ORDERHISTORY_SHIPPED_DATE_FORMATTED")
        s


jstatic_ORDERDATEFORMATTED : JR.M
jstatic_ORDERDATEFORMATTED s =
    JR.static "OrderHistoryData" jclinit "ORDERDATEFORMATTED"
        (JR.str "ORDERHISTORY_ORDER_DATE_FORMATTED")
        s


jstatic_TRANSDATEFORMATTED : JR.M
jstatic_TRANSDATEFORMATTED s =
    JR.static "OrderHistoryData" jclinit "TRANSDATEFORMATTED"
        (JR.str "ORDERHISTORY_TRANS_DATE_FORMATTED")
        s


jstatic_CANCELDATEFORMATTED : JR.M
jstatic_CANCELDATEFORMATTED s =
    JR.static "OrderHistoryData" jclinit "CANCELDATEFORMATTED"
        (JR.str "ORDERHISTORY_CANCEL_DATE_FORMATTED")
        s


jstatic_SUBTOTAL : JR.M
jstatic_SUBTOTAL s =
    JR.static "OrderHistoryData" jclinit "SUBTOTAL"
        (JR.str "ORDERHISTORY_SUB_TOTAL")
        s


jstatic_SHIPPINGCOST : JR.M
jstatic_SHIPPINGCOST s =
    JR.static "OrderHistoryData" jclinit "SHIPPINGCOST"
        (JR.str "ORDERHISTORY_SHIPPING_COST")
        s


jstatic_TAX : JR.M
jstatic_TAX s =
    JR.static "OrderHistoryData" jclinit "TAX"
        (JR.str "ORDERHISTORY_TAX")
        s


jstatic_TOTAL : JR.M
jstatic_TOTAL s =
    JR.static "OrderHistoryData" jclinit "TOTAL"
        (JR.str "ORDERHISTORY_TOTAL")
        s


jstatic_CANCELINFO : JR.M
jstatic_CANCELINFO s =
    JR.static "OrderHistoryData" jclinit "CANCELINFO"
        (JR.str "ORDERHISTORY_CANCEL_INFO")
        s


jstatic_CANCELTYPE : JR.M
jstatic_CANCELTYPE s =
    JR.static "OrderHistoryData" jclinit "CANCELTYPE"
        (JR.str "ORDERHISTORY_CANCEL_TYPE")
        s


jstatic_STATUS : JR.M
jstatic_STATUS s =
    JR.static "OrderHistoryData" jclinit "STATUS"
        (JR.str "ORDERHISTORY_STATUS")
        s


jstatic_PREPROCESSINGNAME : JR.M
jstatic_PREPROCESSINGNAME s =
    JR.static "OrderHistoryData" jclinit "PREPROCESSINGNAME"
        (JR.str "PREPROCESSING")
        s


jstatic_PROCESSINGNAME : JR.M
jstatic_PROCESSINGNAME s =
    JR.static "OrderHistoryData" jclinit "PROCESSINGNAME"
        (JR.str "PROCESSING")
        s


jstatic_CANCELLEDNAME : JR.M
jstatic_CANCELLEDNAME s =
    JR.static "OrderHistoryData" jclinit "CANCELLEDNAME"
        (JR.str "CANCELLED")
        s


jstatic_PARTIALLYSHIPPEDNAME : JR.M
jstatic_PARTIALLYSHIPPEDNAME s =
    JR.static "OrderHistoryData" jclinit "PARTIALLYSHIPPEDNAME"
        (JR.str "PARTIALLYSHIPPED")
        s


jstatic_SHIPPEDNAME : JR.M
jstatic_SHIPPEDNAME s =
    JR.static "OrderHistoryData" jclinit "SHIPPEDNAME"
        (JR.str "SHIPPED")
        s


jstatic_PREPROCESSING : JR.M
jstatic_PREPROCESSING s =
    JR.static "OrderHistoryData" jclinit "PREPROCESSING"
        (JR.str "Order Preprocessing")
        s


jstatic_PROCESSING : JR.M
jstatic_PROCESSING s =
    JR.static "OrderHistoryData" jclinit "PROCESSING"
        (JR.str "Order Processing")
        s


jstatic_CANCELLED : JR.M
jstatic_CANCELLED s =
    JR.static "OrderHistoryData" jclinit "CANCELLED"
        (JR.str "Order Cancelled")
        s


jstatic_PARTIALLYSHIPPED : JR.M
jstatic_PARTIALLYSHIPPED s =
    JR.static "OrderHistoryData" jclinit "PARTIALLYSHIPPED"
        (JR.str "Order Partially Shipped")
        s


jstatic_SHIPPED : JR.M
jstatic_SHIPPED s =
    JR.static "OrderHistoryData" jclinit "SHIPPED"
        (JR.str "Order Shipped")
        s


jstatic_SETSTATUS : JR.M
jstatic_SETSTATUS s =
    JR.static "OrderHistoryData" jclinit "SETSTATUS"
        (JR.str "Set Status")
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

