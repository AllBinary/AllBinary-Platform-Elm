module Org.Allbinary.Business.User.Commerce.Money.Payment.Gateway.Modules.Processor.Echo.EchoPaymentGatewayData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo
-}

import JR



jclass : String
jclass =
    "EchoPaymentGatewayData"


jchain : List String
jchain =
    [ "EchoPaymentGatewayData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EchoPaymentGatewayData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_TRANSACTION_TYPE", jstatic_TRANSACTION_TYPE ), ( "jstatic_MERCHANT_ECHO_ID", jstatic_MERCHANT_ECHO_ID ), ( "jstatic_ORDER_TYPE", jstatic_ORDER_TYPE ), ( "jstatic_MERCHANT_PIN", jstatic_MERCHANT_PIN ), ( "jstatic_ISP_ECHO_ID", jstatic_ISP_ECHO_ID ), ( "jstatic_ISP_PIN", jstatic_ISP_PIN ), ( "jstatic_BILLING_IP_ADDRESS", jstatic_BILLING_IP_ADDRESS ), ( "jstatic_MERCHANT_EMAIL", jstatic_MERCHANT_EMAIL ), ( "jstatic_AUTHORIZATION", jstatic_AUTHORIZATION ), ( "jstatic_BILLING_PREFIX", jstatic_BILLING_PREFIX ), ( "jstatic_BILLING_NAME", jstatic_BILLING_NAME ), ( "jstatic_BILLING_FIRST_NAME", jstatic_BILLING_FIRST_NAME ), ( "jstatic_BILLING_LAST_NAME", jstatic_BILLING_LAST_NAME ), ( "jstatic_BILLING_COMPANY_NAME", jstatic_BILLING_COMPANY_NAME ), ( "jstatic_BILLING_ADDRESS1", jstatic_BILLING_ADDRESS1 ), ( "jstatic_BILLING_ADDRESS2", jstatic_BILLING_ADDRESS2 ), ( "jstatic_BILLING_CITY", jstatic_BILLING_CITY ), ( "jstatic_BILLING_STATE", jstatic_BILLING_STATE ), ( "jstatic_BILLING_ZIP", jstatic_BILLING_ZIP ), ( "jstatic_BILLING_COUNTRY", jstatic_BILLING_COUNTRY ), ( "jstatic_BILLING_PHONE", jstatic_BILLING_PHONE ), ( "jstatic_BILLING_FAX", jstatic_BILLING_FAX ), ( "jstatic_BILLING_EMAIL", jstatic_BILLING_EMAIL ), ( "jstatic_CC_NUMBER", jstatic_CC_NUMBER ), ( "jstatic_CCEXP_MONTH", jstatic_CCEXP_MONTH ), ( "jstatic_CCEXP_YEAR", jstatic_CCEXP_YEAR ), ( "jstatic_CNP_RECURRING", jstatic_CNP_RECURRING ), ( "jstatic_cnp_security", jstatic_cnp_security ), ( "jstatic_COUNTER", jstatic_COUNTER ), ( "jstatic_DEBUG", jstatic_DEBUG ), ( "jstatic_EC_ACCOUNT", jstatic_EC_ACCOUNT ), ( "jstatic_EC_ACCOUNT_TYPE", jstatic_EC_ACCOUNT_TYPE ), ( "jstatic_EC_ADDRESS1", jstatic_EC_ADDRESS1 ), ( "jstatic_EC_ADDRESS2", jstatic_EC_ADDRESS2 ), ( "jstatic_EC_BANK_NAME", jstatic_EC_BANK_NAME ), ( "jstatic_EC_CITY", jstatic_EC_CITY ), ( "jstatic_EC_EMAIL", jstatic_EC_EMAIL ), ( "jstatic_EC_FIRST_NAME", jstatic_EC_FIRST_NAME ), ( "jstatic_EC_ID_COUNTRY", jstatic_EC_ID_COUNTRY ), ( "jstatic_EC_ID_EXP_MM", jstatic_EC_ID_EXP_MM ), ( "jstatic_EC_ID_EXP_DD", jstatic_EC_ID_EXP_DD ), ( "jstatic_EC_ID_EXP_YY", jstatic_EC_ID_EXP_YY ), ( "jstatic_EC_ID_NUMBER", jstatic_EC_ID_NUMBER ), ( "jstatic_EC_ID_STATE", jstatic_EC_ID_STATE ), ( "jstatic_EC_ID_TYPE", jstatic_EC_ID_TYPE ), ( "jstatic_EC_LAST_NAME", jstatic_EC_LAST_NAME ), ( "jstatic_EC_BUSINESS_NAME", jstatic_EC_BUSINESS_NAME ), ( "jstatic_EC_LICENSE_NUMBER", jstatic_EC_LICENSE_NUMBER ), ( "jstatic_EC_LICENSE_STATE", jstatic_EC_LICENSE_STATE ), ( "jstatic_EC_MERCHANT_REF", jstatic_EC_MERCHANT_REF ), ( "jstatic_EC_NBDS_CODE", jstatic_EC_NBDS_CODE ), ( "jstatic_EC_OTHER_NAME", jstatic_EC_OTHER_NAME ), ( "jstatic_EC_PAYEE", jstatic_EC_PAYEE ), ( "jstatic_EC_PAYMENT_TYPE", jstatic_EC_PAYMENT_TYPE ), ( "jstatic_EC_RT", jstatic_EC_RT ), ( "jstatic_EC_SERIAL_NUMBER", jstatic_EC_SERIAL_NUMBER ), ( "jstatic_EC_STATE", jstatic_EC_STATE ), ( "jstatic_EC_TRANSACTION_DT", jstatic_EC_TRANSACTION_DT ), ( "jstatic_EC_ZIP", jstatic_EC_ZIP ), ( "jstatic_GRAND_TOTAL", jstatic_GRAND_TOTAL ), ( "jstatic_MERCHANT_TRACE_NBR", jstatic_MERCHANT_TRACE_NBR ), ( "jstatic_ORDER_NUMBER", jstatic_ORDER_NUMBER ), ( "jstatic_ORIGINAL_AMOUNT", jstatic_ORIGINAL_AMOUNT ), ( "jstatic_ORIGINAL_TRANDATE_MM", jstatic_ORIGINAL_TRANDATE_MM ), ( "jstatic_ORIGINAL_TRANDATE_DD", jstatic_ORIGINAL_TRANDATE_DD ), ( "jstatic_ORIGINAL_TRANDATE_YYYY", jstatic_ORIGINAL_TRANDATE_YYYY ), ( "jstatic_ORIGINAL_REFERENCE", jstatic_ORIGINAL_REFERENCE ), ( "jstatic_PRODUCT_DESCRIPTION", jstatic_PRODUCT_DESCRIPTION ), ( "jstatic_PURCHASE_ORDER_NUMBER", jstatic_PURCHASE_ORDER_NUMBER ), ( "jstatic_SALES_TAX", jstatic_SALES_TAX ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_TRANSACTION_TYPE : JR.M
jstatic_TRANSACTION_TYPE s =
    JR.static "EchoPaymentGatewayData" jclinit "TRANSACTION_TYPE"
        (JR.str "transaction_type")
        s


jstatic_MERCHANT_ECHO_ID : JR.M
jstatic_MERCHANT_ECHO_ID s =
    JR.static "EchoPaymentGatewayData" jclinit "MERCHANT_ECHO_ID"
        (JR.str "merchant_echo_id")
        s


jstatic_ORDER_TYPE : JR.M
jstatic_ORDER_TYPE s =
    JR.static "EchoPaymentGatewayData" jclinit "ORDER_TYPE"
        (JR.str "order_type")
        s


jstatic_MERCHANT_PIN : JR.M
jstatic_MERCHANT_PIN s =
    JR.static "EchoPaymentGatewayData" jclinit "MERCHANT_PIN"
        (JR.str "merchant_pin")
        s


jstatic_ISP_ECHO_ID : JR.M
jstatic_ISP_ECHO_ID s =
    JR.static "EchoPaymentGatewayData" jclinit "ISP_ECHO_ID"
        (JR.str "isp_echo_id")
        s


jstatic_ISP_PIN : JR.M
jstatic_ISP_PIN s =
    JR.static "EchoPaymentGatewayData" jclinit "ISP_PIN"
        (JR.str "isp_pin")
        s


jstatic_BILLING_IP_ADDRESS : JR.M
jstatic_BILLING_IP_ADDRESS s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_IP_ADDRESS"
        (JR.str "billing_ip_address")
        s


jstatic_MERCHANT_EMAIL : JR.M
jstatic_MERCHANT_EMAIL s =
    JR.static "EchoPaymentGatewayData" jclinit "MERCHANT_EMAIL"
        (JR.str "merchant_email")
        s


jstatic_AUTHORIZATION : JR.M
jstatic_AUTHORIZATION s =
    JR.static "EchoPaymentGatewayData" jclinit "AUTHORIZATION"
        (JR.str "authorization")
        s


jstatic_BILLING_PREFIX : JR.M
jstatic_BILLING_PREFIX s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_PREFIX"
        (JR.str "billing_prefix")
        s


jstatic_BILLING_NAME : JR.M
jstatic_BILLING_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_NAME"
        (JR.str "billing_name")
        s


jstatic_BILLING_FIRST_NAME : JR.M
jstatic_BILLING_FIRST_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_FIRST_NAME"
        (JR.str "billing_first_name")
        s


jstatic_BILLING_LAST_NAME : JR.M
jstatic_BILLING_LAST_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_LAST_NAME"
        (JR.str "billing_last_name")
        s


jstatic_BILLING_COMPANY_NAME : JR.M
jstatic_BILLING_COMPANY_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_COMPANY_NAME"
        (JR.str "billing_company_name")
        s


jstatic_BILLING_ADDRESS1 : JR.M
jstatic_BILLING_ADDRESS1 s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_ADDRESS1"
        (JR.str "billing_address1")
        s


jstatic_BILLING_ADDRESS2 : JR.M
jstatic_BILLING_ADDRESS2 s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_ADDRESS2"
        (JR.str "billing_address2")
        s


jstatic_BILLING_CITY : JR.M
jstatic_BILLING_CITY s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_CITY"
        (JR.str "billing_city")
        s


jstatic_BILLING_STATE : JR.M
jstatic_BILLING_STATE s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_STATE"
        (JR.str "billing_state")
        s


jstatic_BILLING_ZIP : JR.M
jstatic_BILLING_ZIP s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_ZIP"
        (JR.str "billing_zip")
        s


jstatic_BILLING_COUNTRY : JR.M
jstatic_BILLING_COUNTRY s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_COUNTRY"
        (JR.str "billing_country")
        s


jstatic_BILLING_PHONE : JR.M
jstatic_BILLING_PHONE s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_PHONE"
        (JR.str "billing_phone")
        s


jstatic_BILLING_FAX : JR.M
jstatic_BILLING_FAX s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_FAX"
        (JR.str "billing_fax")
        s


jstatic_BILLING_EMAIL : JR.M
jstatic_BILLING_EMAIL s =
    JR.static "EchoPaymentGatewayData" jclinit "BILLING_EMAIL"
        (JR.str "billing_email")
        s


jstatic_CC_NUMBER : JR.M
jstatic_CC_NUMBER s =
    JR.static "EchoPaymentGatewayData" jclinit "CC_NUMBER"
        (JR.str "cc_number")
        s


jstatic_CCEXP_MONTH : JR.M
jstatic_CCEXP_MONTH s =
    JR.static "EchoPaymentGatewayData" jclinit "CCEXP_MONTH"
        (JR.str "ccexp_month")
        s


jstatic_CCEXP_YEAR : JR.M
jstatic_CCEXP_YEAR s =
    JR.static "EchoPaymentGatewayData" jclinit "CCEXP_YEAR"
        (JR.str "ccexp_year")
        s


jstatic_CNP_RECURRING : JR.M
jstatic_CNP_RECURRING s =
    JR.static "EchoPaymentGatewayData" jclinit "CNP_RECURRING"
        (JR.str "cnp_recurring")
        s


jstatic_cnp_security : JR.M
jstatic_cnp_security s =
    JR.static "EchoPaymentGatewayData" jclinit "cnp_security"
        (JR.str "cnp_security")
        s


jstatic_COUNTER : JR.M
jstatic_COUNTER s =
    JR.static "EchoPaymentGatewayData" jclinit "COUNTER"
        (JR.str "counter")
        s


jstatic_DEBUG : JR.M
jstatic_DEBUG s =
    JR.static "EchoPaymentGatewayData" jclinit "DEBUG"
        (JR.str "debug")
        s


jstatic_EC_ACCOUNT : JR.M
jstatic_EC_ACCOUNT s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ACCOUNT"
        (JR.str "ec_account")
        s


jstatic_EC_ACCOUNT_TYPE : JR.M
jstatic_EC_ACCOUNT_TYPE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ACCOUNT_TYPE"
        (JR.str "ec_account_type")
        s


jstatic_EC_ADDRESS1 : JR.M
jstatic_EC_ADDRESS1 s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ADDRESS1"
        (JR.str "ec_address1")
        s


jstatic_EC_ADDRESS2 : JR.M
jstatic_EC_ADDRESS2 s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ADDRESS2"
        (JR.str "ec_address2")
        s


jstatic_EC_BANK_NAME : JR.M
jstatic_EC_BANK_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_BANK_NAME"
        (JR.str "ec_bank_name")
        s


jstatic_EC_CITY : JR.M
jstatic_EC_CITY s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_CITY"
        (JR.str "ec_city")
        s


jstatic_EC_EMAIL : JR.M
jstatic_EC_EMAIL s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_EMAIL"
        (JR.str "ec_email")
        s


jstatic_EC_FIRST_NAME : JR.M
jstatic_EC_FIRST_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_FIRST_NAME"
        (JR.str "ec_first_name")
        s


jstatic_EC_ID_COUNTRY : JR.M
jstatic_EC_ID_COUNTRY s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ID_COUNTRY"
        (JR.str "ec_id_country")
        s


jstatic_EC_ID_EXP_MM : JR.M
jstatic_EC_ID_EXP_MM s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ID_EXP_MM"
        (JR.str "ec_id_exp_mm")
        s


jstatic_EC_ID_EXP_DD : JR.M
jstatic_EC_ID_EXP_DD s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ID_EXP_DD"
        (JR.str "ec_id_exp_dd")
        s


jstatic_EC_ID_EXP_YY : JR.M
jstatic_EC_ID_EXP_YY s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ID_EXP_YY"
        (JR.str "ec_id_exp_yy")
        s


jstatic_EC_ID_NUMBER : JR.M
jstatic_EC_ID_NUMBER s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ID_NUMBER"
        (JR.str "ec_id_number")
        s


jstatic_EC_ID_STATE : JR.M
jstatic_EC_ID_STATE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ID_STATE"
        (JR.str "ec_id_state")
        s


jstatic_EC_ID_TYPE : JR.M
jstatic_EC_ID_TYPE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ID_TYPE"
        (JR.str "ec_id_type")
        s


jstatic_EC_LAST_NAME : JR.M
jstatic_EC_LAST_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_LAST_NAME"
        (JR.str "ec_last_name")
        s


jstatic_EC_BUSINESS_NAME : JR.M
jstatic_EC_BUSINESS_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_BUSINESS_NAME"
        (JR.str "ec_BUSINESS_NAME")
        s


jstatic_EC_LICENSE_NUMBER : JR.M
jstatic_EC_LICENSE_NUMBER s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_LICENSE_NUMBER"
        (JR.str "ec_LICENSE_NUMBER")
        s


jstatic_EC_LICENSE_STATE : JR.M
jstatic_EC_LICENSE_STATE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_LICENSE_STATE"
        (JR.str "ec_LICENSE_STATE")
        s


jstatic_EC_MERCHANT_REF : JR.M
jstatic_EC_MERCHANT_REF s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_MERCHANT_REF"
        (JR.str "ec_MERCHANT_REF")
        s


jstatic_EC_NBDS_CODE : JR.M
jstatic_EC_NBDS_CODE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_NBDS_CODE"
        (JR.str "ec_NBDS_CODE")
        s


jstatic_EC_OTHER_NAME : JR.M
jstatic_EC_OTHER_NAME s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_OTHER_NAME"
        (JR.str "ec_other_name")
        s


jstatic_EC_PAYEE : JR.M
jstatic_EC_PAYEE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_PAYEE"
        (JR.str "ec_payee")
        s


jstatic_EC_PAYMENT_TYPE : JR.M
jstatic_EC_PAYMENT_TYPE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_PAYMENT_TYPE"
        (JR.str "ec_payment_type")
        s


jstatic_EC_RT : JR.M
jstatic_EC_RT s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_RT"
        (JR.str "ec_rt")
        s


jstatic_EC_SERIAL_NUMBER : JR.M
jstatic_EC_SERIAL_NUMBER s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_SERIAL_NUMBER"
        (JR.str "ec_serial_number")
        s


jstatic_EC_STATE : JR.M
jstatic_EC_STATE s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_STATE"
        (JR.str "ec_state")
        s


jstatic_EC_TRANSACTION_DT : JR.M
jstatic_EC_TRANSACTION_DT s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_TRANSACTION_DT"
        (JR.str "ec_transaction_dt")
        s


jstatic_EC_ZIP : JR.M
jstatic_EC_ZIP s =
    JR.static "EchoPaymentGatewayData" jclinit "EC_ZIP"
        (JR.str "ec_zip")
        s


jstatic_GRAND_TOTAL : JR.M
jstatic_GRAND_TOTAL s =
    JR.static "EchoPaymentGatewayData" jclinit "GRAND_TOTAL"
        (JR.str "grand_total")
        s


jstatic_MERCHANT_TRACE_NBR : JR.M
jstatic_MERCHANT_TRACE_NBR s =
    JR.static "EchoPaymentGatewayData" jclinit "MERCHANT_TRACE_NBR"
        (JR.str "merchant_trace_nbr")
        s


jstatic_ORDER_NUMBER : JR.M
jstatic_ORDER_NUMBER s =
    JR.static "EchoPaymentGatewayData" jclinit "ORDER_NUMBER"
        (JR.str "order_number")
        s


jstatic_ORIGINAL_AMOUNT : JR.M
jstatic_ORIGINAL_AMOUNT s =
    JR.static "EchoPaymentGatewayData" jclinit "ORIGINAL_AMOUNT"
        (JR.str "original_amount")
        s


jstatic_ORIGINAL_TRANDATE_MM : JR.M
jstatic_ORIGINAL_TRANDATE_MM s =
    JR.static "EchoPaymentGatewayData" jclinit "ORIGINAL_TRANDATE_MM"
        (JR.str "original_trandate_mm")
        s


jstatic_ORIGINAL_TRANDATE_DD : JR.M
jstatic_ORIGINAL_TRANDATE_DD s =
    JR.static "EchoPaymentGatewayData" jclinit "ORIGINAL_TRANDATE_DD"
        (JR.str "original_trandate_dd")
        s


jstatic_ORIGINAL_TRANDATE_YYYY : JR.M
jstatic_ORIGINAL_TRANDATE_YYYY s =
    JR.static "EchoPaymentGatewayData" jclinit "ORIGINAL_TRANDATE_YYYY"
        (JR.str "original_trandate_yyyy")
        s


jstatic_ORIGINAL_REFERENCE : JR.M
jstatic_ORIGINAL_REFERENCE s =
    JR.static "EchoPaymentGatewayData" jclinit "ORIGINAL_REFERENCE"
        (JR.str "original_reference")
        s


jstatic_PRODUCT_DESCRIPTION : JR.M
jstatic_PRODUCT_DESCRIPTION s =
    JR.static "EchoPaymentGatewayData" jclinit "PRODUCT_DESCRIPTION"
        (JR.str "product_description")
        s


jstatic_PURCHASE_ORDER_NUMBER : JR.M
jstatic_PURCHASE_ORDER_NUMBER s =
    JR.static "EchoPaymentGatewayData" jclinit "PURCHASE_ORDER_NUMBER"
        (JR.str "purchase_order_number")
        s


jstatic_SALES_TAX : JR.M
jstatic_SALES_TAX s =
    JR.static "EchoPaymentGatewayData" jclinit "SALES_TAX"
        (JR.str "sales_tax")
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

