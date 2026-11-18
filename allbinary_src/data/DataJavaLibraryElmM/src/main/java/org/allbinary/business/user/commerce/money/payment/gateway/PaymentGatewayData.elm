module Org.Allbinary.Business.User.Commerce.Money.Payment.Gateway.PaymentGatewayData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.money.payment.gateway
-}

import JR



jclass : String
jclass =
    "PaymentGatewayData"


jchain : List String
jchain =
    [ "PaymentGatewayData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "key", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PaymentGatewayData"
        [ ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_CRYPTNUM", jstatic_CRYPTNUM ), ( "jstatic_ID", jstatic_ID ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_VALUE", jstatic_VALUE ), ( "jstatic_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE", jstatic_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE ), ( "jstatic_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE", jstatic_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE ), ( "jstatic_MODE", jstatic_MODE ), ( "jstatic_SERVERPROTOCOL", jstatic_SERVERPROTOCOL ), ( "jstatic_SERVER", jstatic_SERVER ), ( "jstatic_SERVERPORT", jstatic_SERVERPORT ), ( "jstatic_SERVERPATH", jstatic_SERVERPATH ), ( "jstatic_TESTPROTOCOL", jstatic_TESTPROTOCOL ), ( "jstatic_TESTSERVER", jstatic_TESTSERVER ), ( "jstatic_TESTPORT", jstatic_TESTPORT ), ( "jstatic_TESTPATH", jstatic_TESTPATH ), ( "jstatic_TIMEOUT", jstatic_TIMEOUT ), ( "jstatic_PROXYPROTOCOL", jstatic_PROXYPROTOCOL ), ( "jstatic_PROXYSERVER", jstatic_PROXYSERVER ), ( "jstatic_PROXYPATH", jstatic_PROXYPATH ), ( "jstatic_PROXYUSERNAME", jstatic_PROXYUSERNAME ), ( "jstatic_PROXYPASSWORD", jstatic_PROXYPASSWORD ), ( "jstatic_PROXYPORT", jstatic_PROXYPORT ), ( "jstatic_PROXYTIMEOUT", jstatic_PROXYTIMEOUT ), ( "jstatic_SPECIAL1", jstatic_SPECIAL1 ), ( "jstatic_SPECIAL2", jstatic_SPECIAL2 ), ( "jstatic_SPECIAL3", jstatic_SPECIAL3 ), ( "jstatic_SPECIAL4", jstatic_SPECIAL4 ), ( "jstatic_SPECIAL5", jstatic_SPECIAL5 ), ( "jstatic_SPECIAL6", jstatic_SPECIAL6 ), ( "jstatic_SPECIAL7", jstatic_SPECIAL7 ), ( "jstatic_SPECIAL8", jstatic_SPECIAL8 ), ( "jstatic_SPECIAL9", jstatic_SPECIAL9 ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_CRYPTNUM : JR.M
jstatic_CRYPTNUM s =
    JR.static "PaymentGatewayData" jclinit "CRYPTNUM"
        (JR.int 5)
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "PaymentGatewayData" jclinit "ID"
        (JR.new jnew_1 [ (JR.str "PAYMENTGATEWAY_ID") ])
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "PaymentGatewayData" jclinit "NAME"
        (JR.new jnew_1 [ (JR.str "PAYMENTGATEWAY_NAME") ])
        s


jstatic_VALUE : JR.M
jstatic_VALUE s =
    JR.static "PaymentGatewayData" jclinit "VALUE"
        (JR.new jnew_1 [ (JR.str "PAYMENTGATEWAY_VALUE") ])
        s


jstatic_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE : JR.M
jstatic_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE s =
    JR.static "PaymentGatewayData" jclinit "PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE"
        (JR.new jnew_1 [ (JR.str "PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE") ])
        s


jstatic_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE : JR.M
jstatic_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE s =
    JR.static "PaymentGatewayData" jclinit "PAYMENTPROCESSORINTERFACEFACTORYINTERFACE"
        (JR.new jnew_1 [ (JR.str "PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE") ])
        s


jstatic_MODE : JR.M
jstatic_MODE s =
    JR.static "PaymentGatewayData" jclinit "MODE"
        (JR.new jnew_1 [ (JR.str "MODE") ])
        s


jstatic_SERVERPROTOCOL : JR.M
jstatic_SERVERPROTOCOL s =
    JR.static "PaymentGatewayData" jclinit "SERVERPROTOCOL"
        (JR.new jnew_1 [ (JR.str "SERVERPROTOCOL") ])
        s


jstatic_SERVER : JR.M
jstatic_SERVER s =
    JR.static "PaymentGatewayData" jclinit "SERVER"
        (JR.new jnew_1 [ (JR.str "SERVER") ])
        s


jstatic_SERVERPORT : JR.M
jstatic_SERVERPORT s =
    JR.static "PaymentGatewayData" jclinit "SERVERPORT"
        (JR.new jnew_1 [ (JR.str "SERVERPORT") ])
        s


jstatic_SERVERPATH : JR.M
jstatic_SERVERPATH s =
    JR.static "PaymentGatewayData" jclinit "SERVERPATH"
        (JR.new jnew_1 [ (JR.str "SERVERPATH") ])
        s


jstatic_TESTPROTOCOL : JR.M
jstatic_TESTPROTOCOL s =
    JR.static "PaymentGatewayData" jclinit "TESTPROTOCOL"
        (JR.new jnew_1 [ (JR.str "TESTSERVERPROTOCOL") ])
        s


jstatic_TESTSERVER : JR.M
jstatic_TESTSERVER s =
    JR.static "PaymentGatewayData" jclinit "TESTSERVER"
        (JR.new jnew_1 [ (JR.str "TESTSERVER") ])
        s


jstatic_TESTPORT : JR.M
jstatic_TESTPORT s =
    JR.static "PaymentGatewayData" jclinit "TESTPORT"
        (JR.new jnew_1 [ (JR.str "TESTPORT") ])
        s


jstatic_TESTPATH : JR.M
jstatic_TESTPATH s =
    JR.static "PaymentGatewayData" jclinit "TESTPATH"
        (JR.new jnew_1 [ (JR.str "TESTSERVERPATH") ])
        s


jstatic_TIMEOUT : JR.M
jstatic_TIMEOUT s =
    JR.static "PaymentGatewayData" jclinit "TIMEOUT"
        (JR.new jnew_1 [ (JR.str "TIMEOUT") ])
        s


jstatic_PROXYPROTOCOL : JR.M
jstatic_PROXYPROTOCOL s =
    JR.static "PaymentGatewayData" jclinit "PROXYPROTOCOL"
        (JR.new jnew_1 [ (JR.str "PROXYPROTOCOL") ])
        s


jstatic_PROXYSERVER : JR.M
jstatic_PROXYSERVER s =
    JR.static "PaymentGatewayData" jclinit "PROXYSERVER"
        (JR.new jnew_1 [ (JR.str "PROXYSERVER") ])
        s


jstatic_PROXYPATH : JR.M
jstatic_PROXYPATH s =
    JR.static "PaymentGatewayData" jclinit "PROXYPATH"
        (JR.new jnew_1 [ (JR.str "PROXYPATH") ])
        s


jstatic_PROXYUSERNAME : JR.M
jstatic_PROXYUSERNAME s =
    JR.static "PaymentGatewayData" jclinit "PROXYUSERNAME"
        (JR.new jnew_1 [ (JR.str "PROXYUSERNAME") ])
        s


jstatic_PROXYPASSWORD : JR.M
jstatic_PROXYPASSWORD s =
    JR.static "PaymentGatewayData" jclinit "PROXYPASSWORD"
        (JR.new jnew_1 [ (JR.str "PROXYPASSWORD") ])
        s


jstatic_PROXYPORT : JR.M
jstatic_PROXYPORT s =
    JR.static "PaymentGatewayData" jclinit "PROXYPORT"
        (JR.new jnew_1 [ (JR.str "PROXYPORT") ])
        s


jstatic_PROXYTIMEOUT : JR.M
jstatic_PROXYTIMEOUT s =
    JR.static "PaymentGatewayData" jclinit "PROXYTIMEOUT"
        (JR.new jnew_1 [ (JR.str "PROXYTIMEOUT") ])
        s


jstatic_SPECIAL1 : JR.M
jstatic_SPECIAL1 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL1"
        (JR.new jnew_1 [ (JR.str "SPECIAL1") ])
        s


jstatic_SPECIAL2 : JR.M
jstatic_SPECIAL2 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL2"
        (JR.new jnew_1 [ (JR.str "SPECIAL2") ])
        s


jstatic_SPECIAL3 : JR.M
jstatic_SPECIAL3 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL3"
        (JR.new jnew_1 [ (JR.str "SPECIAL3") ])
        s


jstatic_SPECIAL4 : JR.M
jstatic_SPECIAL4 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL4"
        (JR.new jnew_1 [ (JR.str "SPECIAL4") ])
        s


jstatic_SPECIAL5 : JR.M
jstatic_SPECIAL5 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL5"
        (JR.new jnew_1 [ (JR.str "SPECIAL5") ])
        s


jstatic_SPECIAL6 : JR.M
jstatic_SPECIAL6 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL6"
        (JR.new jnew_1 [ (JR.str "SPECIAL6") ])
        s


jstatic_SPECIAL7 : JR.M
jstatic_SPECIAL7 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL7"
        (JR.new jnew_1 [ (JR.str "SPECIAL7") ])
        s


jstatic_SPECIAL8 : JR.M
jstatic_SPECIAL8 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL8"
        (JR.new jnew_1 [ (JR.str "SPECIAL8") ])
        s


jstatic_SPECIAL9 : JR.M
jstatic_SPECIAL9 s =
    JR.static "PaymentGatewayData" jclinit "SPECIAL9"
        (JR.new jnew_1 [ (JR.str "SPECIAL9") ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "key" "" JR.this (JR.local "value")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "key") ])
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

