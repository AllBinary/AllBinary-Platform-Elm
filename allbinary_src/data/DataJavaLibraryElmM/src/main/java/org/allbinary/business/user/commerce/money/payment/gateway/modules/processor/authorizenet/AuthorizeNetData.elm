module Org.Allbinary.Business.User.Commerce.Money.Payment.Gateway.Modules.Processor.Authorizenet.AuthorizeNetData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet
-}

import JR



jclass : String
jclass =
    "AuthorizeNetData"


jchain : List String
jchain =
    [ "AuthorizeNetData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AuthorizeNetData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_X_LOGIN", jstatic_X_LOGIN ), ( "jstatic_X_TRAN_KEY", jstatic_X_TRAN_KEY ), ( "jstatic_X_VERSION", jstatic_X_VERSION ), ( "jstatic_X_TEST_REQUEST", jstatic_X_TEST_REQUEST ), ( "jstatic_X_RELAY_RESPONSE", jstatic_X_RELAY_RESPONSE ), ( "jstatic_X_DUPLICATE_WINDOW", jstatic_X_DUPLICATE_WINDOW ), ( "jstatic_X_FIRST_NAME", jstatic_X_FIRST_NAME ), ( "jstatic_X_LAST_NAME", jstatic_X_LAST_NAME ), ( "jstatic_X_COMPANY", jstatic_X_COMPANY ), ( "jstatic_X_ADDRESS", jstatic_X_ADDRESS ), ( "jstatic_X_CITY", jstatic_X_CITY ), ( "jstatic_X_STATE", jstatic_X_STATE ), ( "jstatic_X_ZIP", jstatic_X_ZIP ), ( "jstatic_X_COUNTRY", jstatic_X_COUNTRY ), ( "jstatic_X_PHONE", jstatic_X_PHONE ), ( "jstatic_X_FAX", jstatic_X_FAX ), ( "jstatic_X_CUST_ID", jstatic_X_CUST_ID ), ( "jstatic_X_CUSTOMER_IP", jstatic_X_CUSTOMER_IP ), ( "jstatic_X_CUSTOMER_TAX_ID", jstatic_X_CUSTOMER_TAX_ID ), ( "jstatic_X_EMAIL_CUSTOMER", jstatic_X_EMAIL_CUSTOMER ), ( "jstatic_X_EMAIL", jstatic_X_EMAIL ), ( "jstatic_X_EMAIL_MERCHANT", jstatic_X_EMAIL_MERCHANT ), ( "jstatic_X_INVOICE_NUM", jstatic_X_INVOICE_NUM ), ( "jstatic_X_DESCRIPTION", jstatic_X_DESCRIPTION ), ( "jstatic_X_SHIP_TO_FIRST_NAME", jstatic_X_SHIP_TO_FIRST_NAME ), ( "jstatic_X_SHIP_TO_LAST_NAME", jstatic_X_SHIP_TO_LAST_NAME ), ( "jstatic_X_SHIP_TO_COMPANY", jstatic_X_SHIP_TO_COMPANY ), ( "jstatic_X_SHIP_TO_ADDRESS", jstatic_X_SHIP_TO_ADDRESS ), ( "jstatic_X_SHIP_TO_CITY", jstatic_X_SHIP_TO_CITY ), ( "jstatic_X_SHIP_TO_STATE", jstatic_X_SHIP_TO_STATE ), ( "jstatic_X_SHIP_TO_ZIP", jstatic_X_SHIP_TO_ZIP ), ( "jstatic_X_SHIP_TO_COUNTRY", jstatic_X_SHIP_TO_COUNTRY ), ( "jstatic_X_AMOUNT", jstatic_X_AMOUNT ), ( "jstatic_X_CURRENCY_CODE", jstatic_X_CURRENCY_CODE ), ( "jstatic_X_METHOD", jstatic_X_METHOD ), ( "jstatic_X_TYPE", jstatic_X_TYPE ), ( "jstatic_X_RECURRING_BILLING", jstatic_X_RECURRING_BILLING ), ( "jstatic_X_BANK_ABA_CODE", jstatic_X_BANK_ABA_CODE ), ( "jstatic_X_BANK_ACCT_NUM", jstatic_X_BANK_ACCT_NUM ), ( "jstatic_X_BANK_ACCT_TYPE", jstatic_X_BANK_ACCT_TYPE ), ( "jstatic_X_BANK_NAME", jstatic_X_BANK_NAME ), ( "jstatic_X_BANK_ACCT_NAME", jstatic_X_BANK_ACCT_NAME ), ( "jstatic_X_ECHECK_TYPE", jstatic_X_ECHECK_TYPE ), ( "jstatic_X_CARD_NUM", jstatic_X_CARD_NUM ), ( "jstatic_X_EXP_DATE", jstatic_X_EXP_DATE ), ( "jstatic_X_CARD_CODE", jstatic_X_CARD_CODE ), ( "jstatic_X_TRANS_ID", jstatic_X_TRANS_ID ), ( "jstatic_X_AUTH_CODE", jstatic_X_AUTH_CODE ), ( "jstatic_X_PO_NUM", jstatic_X_PO_NUM ), ( "jstatic_X_TAX", jstatic_X_TAX ), ( "jstatic_X_TAX_EXEMPT", jstatic_X_TAX_EXEMPT ), ( "jstatic_X_FREIGHT", jstatic_X_FREIGHT ), ( "jstatic_X_DUTY", jstatic_X_DUTY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_X_LOGIN : JR.M
jstatic_X_LOGIN s =
    JR.static "AuthorizeNetData" jclinit "X_LOGIN"
        (JR.str "x_login")
        s


jstatic_X_TRAN_KEY : JR.M
jstatic_X_TRAN_KEY s =
    JR.static "AuthorizeNetData" jclinit "X_TRAN_KEY"
        (JR.str "x_tran_key")
        s


jstatic_X_VERSION : JR.M
jstatic_X_VERSION s =
    JR.static "AuthorizeNetData" jclinit "X_VERSION"
        (JR.str "x_version")
        s


jstatic_X_TEST_REQUEST : JR.M
jstatic_X_TEST_REQUEST s =
    JR.static "AuthorizeNetData" jclinit "X_TEST_REQUEST"
        (JR.str "x_test_request")
        s


jstatic_X_RELAY_RESPONSE : JR.M
jstatic_X_RELAY_RESPONSE s =
    JR.static "AuthorizeNetData" jclinit "X_RELAY_RESPONSE"
        (JR.str "x_relay_response")
        s


jstatic_X_DUPLICATE_WINDOW : JR.M
jstatic_X_DUPLICATE_WINDOW s =
    JR.static "AuthorizeNetData" jclinit "X_DUPLICATE_WINDOW"
        (JR.str "x_duplicate_window")
        s


jstatic_X_FIRST_NAME : JR.M
jstatic_X_FIRST_NAME s =
    JR.static "AuthorizeNetData" jclinit "X_FIRST_NAME"
        (JR.str "x_first_name")
        s


jstatic_X_LAST_NAME : JR.M
jstatic_X_LAST_NAME s =
    JR.static "AuthorizeNetData" jclinit "X_LAST_NAME"
        (JR.str "x_last_name")
        s


jstatic_X_COMPANY : JR.M
jstatic_X_COMPANY s =
    JR.static "AuthorizeNetData" jclinit "X_COMPANY"
        (JR.str "x_company")
        s


jstatic_X_ADDRESS : JR.M
jstatic_X_ADDRESS s =
    JR.static "AuthorizeNetData" jclinit "X_ADDRESS"
        (JR.str "x_address")
        s


jstatic_X_CITY : JR.M
jstatic_X_CITY s =
    JR.static "AuthorizeNetData" jclinit "X_CITY"
        (JR.str "x_city")
        s


jstatic_X_STATE : JR.M
jstatic_X_STATE s =
    JR.static "AuthorizeNetData" jclinit "X_STATE"
        (JR.str "x_state")
        s


jstatic_X_ZIP : JR.M
jstatic_X_ZIP s =
    JR.static "AuthorizeNetData" jclinit "X_ZIP"
        (JR.str "x_zip")
        s


jstatic_X_COUNTRY : JR.M
jstatic_X_COUNTRY s =
    JR.static "AuthorizeNetData" jclinit "X_COUNTRY"
        (JR.str "x_country")
        s


jstatic_X_PHONE : JR.M
jstatic_X_PHONE s =
    JR.static "AuthorizeNetData" jclinit "X_PHONE"
        (JR.str "x_phone")
        s


jstatic_X_FAX : JR.M
jstatic_X_FAX s =
    JR.static "AuthorizeNetData" jclinit "X_FAX"
        (JR.str "x_fax")
        s


jstatic_X_CUST_ID : JR.M
jstatic_X_CUST_ID s =
    JR.static "AuthorizeNetData" jclinit "X_CUST_ID"
        (JR.str "x_cust_id")
        s


jstatic_X_CUSTOMER_IP : JR.M
jstatic_X_CUSTOMER_IP s =
    JR.static "AuthorizeNetData" jclinit "X_CUSTOMER_IP"
        (JR.str "x_customer_ip")
        s


jstatic_X_CUSTOMER_TAX_ID : JR.M
jstatic_X_CUSTOMER_TAX_ID s =
    JR.static "AuthorizeNetData" jclinit "X_CUSTOMER_TAX_ID"
        (JR.str "x_customer_tax_id")
        s


jstatic_X_EMAIL_CUSTOMER : JR.M
jstatic_X_EMAIL_CUSTOMER s =
    JR.static "AuthorizeNetData" jclinit "X_EMAIL_CUSTOMER"
        (JR.str "x_email_customer")
        s


jstatic_X_EMAIL : JR.M
jstatic_X_EMAIL s =
    JR.static "AuthorizeNetData" jclinit "X_EMAIL"
        (JR.str "x_email")
        s


jstatic_X_EMAIL_MERCHANT : JR.M
jstatic_X_EMAIL_MERCHANT s =
    JR.static "AuthorizeNetData" jclinit "X_EMAIL_MERCHANT"
        (JR.str "x_email_merchant")
        s


jstatic_X_INVOICE_NUM : JR.M
jstatic_X_INVOICE_NUM s =
    JR.static "AuthorizeNetData" jclinit "X_INVOICE_NUM"
        (JR.str "x_invoice_num")
        s


jstatic_X_DESCRIPTION : JR.M
jstatic_X_DESCRIPTION s =
    JR.static "AuthorizeNetData" jclinit "X_DESCRIPTION"
        (JR.str "x_description")
        s


jstatic_X_SHIP_TO_FIRST_NAME : JR.M
jstatic_X_SHIP_TO_FIRST_NAME s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_FIRST_NAME"
        (JR.str "x_ship_to_first_name")
        s


jstatic_X_SHIP_TO_LAST_NAME : JR.M
jstatic_X_SHIP_TO_LAST_NAME s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_LAST_NAME"
        (JR.str "x_ship_to_last_name")
        s


jstatic_X_SHIP_TO_COMPANY : JR.M
jstatic_X_SHIP_TO_COMPANY s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_COMPANY"
        (JR.str "x_ship_to_company")
        s


jstatic_X_SHIP_TO_ADDRESS : JR.M
jstatic_X_SHIP_TO_ADDRESS s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_ADDRESS"
        (JR.str "x_ship_to_address")
        s


jstatic_X_SHIP_TO_CITY : JR.M
jstatic_X_SHIP_TO_CITY s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_CITY"
        (JR.str "x_ship_to_city")
        s


jstatic_X_SHIP_TO_STATE : JR.M
jstatic_X_SHIP_TO_STATE s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_STATE"
        (JR.str "x_ship_to_state")
        s


jstatic_X_SHIP_TO_ZIP : JR.M
jstatic_X_SHIP_TO_ZIP s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_ZIP"
        (JR.str "x_ship_to_zip")
        s


jstatic_X_SHIP_TO_COUNTRY : JR.M
jstatic_X_SHIP_TO_COUNTRY s =
    JR.static "AuthorizeNetData" jclinit "X_SHIP_TO_COUNTRY"
        (JR.str "x_ship_to_country")
        s


jstatic_X_AMOUNT : JR.M
jstatic_X_AMOUNT s =
    JR.static "AuthorizeNetData" jclinit "X_AMOUNT"
        (JR.str "x_amount")
        s


jstatic_X_CURRENCY_CODE : JR.M
jstatic_X_CURRENCY_CODE s =
    JR.static "AuthorizeNetData" jclinit "X_CURRENCY_CODE"
        (JR.str "x_currency_code")
        s


jstatic_X_METHOD : JR.M
jstatic_X_METHOD s =
    JR.static "AuthorizeNetData" jclinit "X_METHOD"
        (JR.str "x_method")
        s


jstatic_X_TYPE : JR.M
jstatic_X_TYPE s =
    JR.static "AuthorizeNetData" jclinit "X_TYPE"
        (JR.str "x_type")
        s


jstatic_X_RECURRING_BILLING : JR.M
jstatic_X_RECURRING_BILLING s =
    JR.static "AuthorizeNetData" jclinit "X_RECURRING_BILLING"
        (JR.str "x_recurring_billing")
        s


jstatic_X_BANK_ABA_CODE : JR.M
jstatic_X_BANK_ABA_CODE s =
    JR.static "AuthorizeNetData" jclinit "X_BANK_ABA_CODE"
        (JR.str "x_bank_aba_code")
        s


jstatic_X_BANK_ACCT_NUM : JR.M
jstatic_X_BANK_ACCT_NUM s =
    JR.static "AuthorizeNetData" jclinit "X_BANK_ACCT_NUM"
        (JR.str "x_bank_acct_num")
        s


jstatic_X_BANK_ACCT_TYPE : JR.M
jstatic_X_BANK_ACCT_TYPE s =
    JR.static "AuthorizeNetData" jclinit "X_BANK_ACCT_TYPE"
        (JR.str "x_bank_acct_type")
        s


jstatic_X_BANK_NAME : JR.M
jstatic_X_BANK_NAME s =
    JR.static "AuthorizeNetData" jclinit "X_BANK_NAME"
        (JR.str "x_bank_name")
        s


jstatic_X_BANK_ACCT_NAME : JR.M
jstatic_X_BANK_ACCT_NAME s =
    JR.static "AuthorizeNetData" jclinit "X_BANK_ACCT_NAME"
        (JR.str "x_bank_acct_name")
        s


jstatic_X_ECHECK_TYPE : JR.M
jstatic_X_ECHECK_TYPE s =
    JR.static "AuthorizeNetData" jclinit "X_ECHECK_TYPE"
        (JR.str "x_echeck_type")
        s


jstatic_X_CARD_NUM : JR.M
jstatic_X_CARD_NUM s =
    JR.static "AuthorizeNetData" jclinit "X_CARD_NUM"
        (JR.str "x_card_num")
        s


jstatic_X_EXP_DATE : JR.M
jstatic_X_EXP_DATE s =
    JR.static "AuthorizeNetData" jclinit "X_EXP_DATE"
        (JR.str "x_exp_date")
        s


jstatic_X_CARD_CODE : JR.M
jstatic_X_CARD_CODE s =
    JR.static "AuthorizeNetData" jclinit "X_CARD_CODE"
        (JR.str "x_card_code")
        s


jstatic_X_TRANS_ID : JR.M
jstatic_X_TRANS_ID s =
    JR.static "AuthorizeNetData" jclinit "X_TRANS_ID"
        (JR.str "x_trans_id")
        s


jstatic_X_AUTH_CODE : JR.M
jstatic_X_AUTH_CODE s =
    JR.static "AuthorizeNetData" jclinit "X_AUTH_CODE"
        (JR.str "x_auth_code")
        s


jstatic_X_PO_NUM : JR.M
jstatic_X_PO_NUM s =
    JR.static "AuthorizeNetData" jclinit "X_PO_NUM"
        (JR.str "x_po_num")
        s


jstatic_X_TAX : JR.M
jstatic_X_TAX s =
    JR.static "AuthorizeNetData" jclinit "X_TAX"
        (JR.str "x_tax")
        s


jstatic_X_TAX_EXEMPT : JR.M
jstatic_X_TAX_EXEMPT s =
    JR.static "AuthorizeNetData" jclinit "X_TAX_EXEMPT"
        (JR.str "x_tax_exempt")
        s


jstatic_X_FREIGHT : JR.M
jstatic_X_FREIGHT s =
    JR.static "AuthorizeNetData" jclinit "X_FREIGHT"
        (JR.str "x_freight")
        s


jstatic_X_DUTY : JR.M
jstatic_X_DUTY s =
    JR.static "AuthorizeNetData" jclinit "X_DUTY"
        (JR.str "x_duty")
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

