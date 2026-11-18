module Org.Allbinary.Business.User.Commerce.Money.Payment.Gateway.Modules.Processor.Authorizenet.Sim.AuthorizeNetSimData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim
-}

import JR



jclass : String
jclass =
    "AuthorizeNetSimData"


jchain : List String
jchain =
    [ "AuthorizeNetSimData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AuthorizeNetSimData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_X_FP_HASH", jstatic_X_FP_HASH ), ( "jstatic_X_FP_SEQUENCE", jstatic_X_FP_SEQUENCE ), ( "jstatic_X_FP_TIMESTAMP", jstatic_X_FP_TIMESTAMP ), ( "jstatic_X_SHOW_FORM", jstatic_X_SHOW_FORM ), ( "jstatic_X_HEADER_HTML_PAYMENT_FORM", jstatic_X_HEADER_HTML_PAYMENT_FORM ), ( "jstatic_X_FOOTER_HTML_PAYMENT_FORM", jstatic_X_FOOTER_HTML_PAYMENT_FORM ), ( "jstatic_X_HEADER_HTML_RECEIPT", jstatic_X_HEADER_HTML_RECEIPT ), ( "jstatic_X_FOOTER_HTML_RECEIPT", jstatic_X_FOOTER_HTML_RECEIPT ), ( "jstatic_X_RECEIPT_LINK_TEXT", jstatic_X_RECEIPT_LINK_TEXT ), ( "jstatic_X_RECEIPT_LINK_URL", jstatic_X_RECEIPT_LINK_URL ), ( "jstatic_X_LOGO_URL", jstatic_X_LOGO_URL ), ( "jstatic_X_BACKGROUND_URL", jstatic_X_BACKGROUND_URL ), ( "jstatic_X_COLOR_BACKGROUND", jstatic_X_COLOR_BACKGROUND ), ( "jstatic_X_COLOR_LINK", jstatic_X_COLOR_LINK ), ( "jstatic_X_COLOR_TEXT", jstatic_X_COLOR_TEXT ), ( "jstatic_X_RELAY_URL", jstatic_X_RELAY_URL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_X_FP_HASH : JR.M
jstatic_X_FP_HASH s =
    JR.static "AuthorizeNetSimData" jclinit "X_FP_HASH"
        (JR.str "x_fp_hash")
        s


jstatic_X_FP_SEQUENCE : JR.M
jstatic_X_FP_SEQUENCE s =
    JR.static "AuthorizeNetSimData" jclinit "X_FP_SEQUENCE"
        (JR.str "x_fp_sequence")
        s


jstatic_X_FP_TIMESTAMP : JR.M
jstatic_X_FP_TIMESTAMP s =
    JR.static "AuthorizeNetSimData" jclinit "X_FP_TIMESTAMP"
        (JR.str "x_fp_timestamp")
        s


jstatic_X_SHOW_FORM : JR.M
jstatic_X_SHOW_FORM s =
    JR.static "AuthorizeNetSimData" jclinit "X_SHOW_FORM"
        (JR.str "x_show_form")
        s


jstatic_X_HEADER_HTML_PAYMENT_FORM : JR.M
jstatic_X_HEADER_HTML_PAYMENT_FORM s =
    JR.static "AuthorizeNetSimData" jclinit "X_HEADER_HTML_PAYMENT_FORM"
        (JR.str "x_header_html_payment_form")
        s


jstatic_X_FOOTER_HTML_PAYMENT_FORM : JR.M
jstatic_X_FOOTER_HTML_PAYMENT_FORM s =
    JR.static "AuthorizeNetSimData" jclinit "X_FOOTER_HTML_PAYMENT_FORM"
        (JR.str "x_footer_html_payment_form")
        s


jstatic_X_HEADER_HTML_RECEIPT : JR.M
jstatic_X_HEADER_HTML_RECEIPT s =
    JR.static "AuthorizeNetSimData" jclinit "X_HEADER_HTML_RECEIPT"
        (JR.str "x_header_html_receipt")
        s


jstatic_X_FOOTER_HTML_RECEIPT : JR.M
jstatic_X_FOOTER_HTML_RECEIPT s =
    JR.static "AuthorizeNetSimData" jclinit "X_FOOTER_HTML_RECEIPT"
        (JR.str "x_footer_html_receipt")
        s


jstatic_X_RECEIPT_LINK_TEXT : JR.M
jstatic_X_RECEIPT_LINK_TEXT s =
    JR.static "AuthorizeNetSimData" jclinit "X_RECEIPT_LINK_TEXT"
        (JR.str "x_receipt_link_text")
        s


jstatic_X_RECEIPT_LINK_URL : JR.M
jstatic_X_RECEIPT_LINK_URL s =
    JR.static "AuthorizeNetSimData" jclinit "X_RECEIPT_LINK_URL"
        (JR.str "x_receipt_link_url")
        s


jstatic_X_LOGO_URL : JR.M
jstatic_X_LOGO_URL s =
    JR.static "AuthorizeNetSimData" jclinit "X_LOGO_URL"
        (JR.str "x_logo_url")
        s


jstatic_X_BACKGROUND_URL : JR.M
jstatic_X_BACKGROUND_URL s =
    JR.static "AuthorizeNetSimData" jclinit "X_BACKGROUND_URL"
        (JR.str "x_background_url")
        s


jstatic_X_COLOR_BACKGROUND : JR.M
jstatic_X_COLOR_BACKGROUND s =
    JR.static "AuthorizeNetSimData" jclinit "X_COLOR_BACKGROUND"
        (JR.str "x_color_background")
        s


jstatic_X_COLOR_LINK : JR.M
jstatic_X_COLOR_LINK s =
    JR.static "AuthorizeNetSimData" jclinit "X_COLOR_LINK"
        (JR.str "x_color_link")
        s


jstatic_X_COLOR_TEXT : JR.M
jstatic_X_COLOR_TEXT s =
    JR.static "AuthorizeNetSimData" jclinit "X_COLOR_TEXT"
        (JR.str "x_color_text")
        s


jstatic_X_RELAY_URL : JR.M
jstatic_X_RELAY_URL s =
    JR.static "AuthorizeNetSimData" jclinit "X_RELAY_URL"
        (JR.str "x_relay_url")
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

