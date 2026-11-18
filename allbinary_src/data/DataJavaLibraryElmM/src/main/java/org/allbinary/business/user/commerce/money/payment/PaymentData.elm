module Org.Allbinary.Business.User.Commerce.Money.Payment.PaymentData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.money.payment
-}

import JR



jclass : String
jclass =
    "PaymentData"


jchain : List String
jchain =
    [ "PaymentData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PaymentData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_MIN", jstatic_MIN ), ( "jstatic_MAX", jstatic_MAX ), ( "jstatic_ADDNEW", jstatic_ADDNEW ), ( "jstatic_VIEW", jstatic_VIEW ), ( "jstatic_SELECT", jstatic_SELECT ), ( "jstatic_CHANGE", jstatic_CHANGE ), ( "jstatic_PAYMENT", jstatic_PAYMENT ), ( "jstatic_METHOD", jstatic_METHOD ), ( "jstatic_ID", jstatic_ID ), ( "jstatic_NUMBER", jstatic_NUMBER ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_TYPE", jstatic_TYPE ), ( "jstatic_EXPIRATION", jstatic_EXPIRATION ), ( "jstatic_TENDERTYPE", jstatic_TENDERTYPE ), ( "jstatic_TRANSACTIONTYPE", jstatic_TRANSACTIONTYPE ), ( "jstatic_ABA", jstatic_ABA ), ( "jstatic_ACCOUNT", jstatic_ACCOUNT ), ( "jstatic_ACCOUNTTYPE", jstatic_ACCOUNTTYPE ), ( "jstatic_AUTHORIZATIONCODE", jstatic_AUTHORIZATIONCODE ), ( "jstatic_CHECKNUMBER", jstatic_CHECKNUMBER ), ( "jstatic_CHECKTYPE", jstatic_CHECKTYPE ), ( "jstatic_DRIVERSLICENSE", jstatic_DRIVERSLICENSE ), ( "jstatic_MAGNETICINKCHECKREADER", jstatic_MAGNETICINKCHECKREADER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MIN : JR.M
jstatic_MIN s =
    JR.static "PaymentData" jclinit "MIN"
        (JR.int 4)
        s


jstatic_MAX : JR.M
jstatic_MAX s =
    JR.static "PaymentData" jclinit "MAX"
        (JR.int 19)
        s


jstatic_ADDNEW : JR.M
jstatic_ADDNEW s =
    JR.static "PaymentData" jclinit "ADDNEW"
        (JR.str "Add New Payment")
        s


jstatic_VIEW : JR.M
jstatic_VIEW s =
    JR.static "PaymentData" jclinit "VIEW"
        (JR.str "View Payment")
        s


jstatic_SELECT : JR.M
jstatic_SELECT s =
    JR.static "PaymentData" jclinit "SELECT"
        (JR.str "Select Payment")
        s


jstatic_CHANGE : JR.M
jstatic_CHANGE s =
    JR.static "PaymentData" jclinit "CHANGE"
        (JR.str "Change Payment")
        s


jstatic_PAYMENT : JR.M
jstatic_PAYMENT s =
    JR.static "PaymentData" jclinit "PAYMENT"
        (JR.str "PAYMENT")
        s


jstatic_METHOD : JR.M
jstatic_METHOD s =
    JR.static "PaymentData" jclinit "METHOD"
        (JR.str "PAYMENT_METHOD")
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "PaymentData" jclinit "ID"
        (JR.str "PAYMENT_ID")
        s


jstatic_NUMBER : JR.M
jstatic_NUMBER s =
    JR.static "PaymentData" jclinit "NUMBER"
        (JR.str "PAYMENT_NUMBER")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "PaymentData" jclinit "NAME"
        (JR.str "PAYMENT_NAME")
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "PaymentData" jclinit "TYPE"
        (JR.str "PAYMENT_TYPE")
        s


jstatic_EXPIRATION : JR.M
jstatic_EXPIRATION s =
    JR.static "PaymentData" jclinit "EXPIRATION"
        (JR.str "PAYMENT_EXPIRATION")
        s


jstatic_TENDERTYPE : JR.M
jstatic_TENDERTYPE s =
    JR.static "PaymentData" jclinit "TENDERTYPE"
        (JR.str "PAYMENT_TENDERTYPE")
        s


jstatic_TRANSACTIONTYPE : JR.M
jstatic_TRANSACTIONTYPE s =
    JR.static "PaymentData" jclinit "TRANSACTIONTYPE"
        (JR.str "PAYMENT_TRANSACTIONTYPE")
        s


jstatic_ABA : JR.M
jstatic_ABA s =
    JR.static "PaymentData" jclinit "ABA"
        (JR.str "PAYMENT_ABA")
        s


jstatic_ACCOUNT : JR.M
jstatic_ACCOUNT s =
    JR.static "PaymentData" jclinit "ACCOUNT"
        (JR.str "PAYMENT_ACCOUNT")
        s


jstatic_ACCOUNTTYPE : JR.M
jstatic_ACCOUNTTYPE s =
    JR.static "PaymentData" jclinit "ACCOUNTTYPE"
        (JR.str "PAYMENT_ACCOUNTTYPE")
        s


jstatic_AUTHORIZATIONCODE : JR.M
jstatic_AUTHORIZATIONCODE s =
    JR.static "PaymentData" jclinit "AUTHORIZATIONCODE"
        (JR.str "PAYMENT_AUTHORIZATIONCODE")
        s


jstatic_CHECKNUMBER : JR.M
jstatic_CHECKNUMBER s =
    JR.static "PaymentData" jclinit "CHECKNUMBER"
        (JR.str "PAYMENT_CHECKNUMBER")
        s


jstatic_CHECKTYPE : JR.M
jstatic_CHECKTYPE s =
    JR.static "PaymentData" jclinit "CHECKTYPE"
        (JR.str "PAYMENT_CHECKTYPE")
        s


jstatic_DRIVERSLICENSE : JR.M
jstatic_DRIVERSLICENSE s =
    JR.static "PaymentData" jclinit "DRIVERSLICENSE"
        (JR.str "PAYMENT_DRIVERSLICENSE")
        s


jstatic_MAGNETICINKCHECKREADER : JR.M
jstatic_MAGNETICINKCHECKREADER s =
    JR.static "PaymentData" jclinit "MAGNETICINKCHECKREADER"
        (JR.str "PAYMENT_MAGNETICINKCHECKREADER")
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

