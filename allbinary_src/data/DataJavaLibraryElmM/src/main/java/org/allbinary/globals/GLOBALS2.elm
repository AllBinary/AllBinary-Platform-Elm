module Org.Allbinary.Globals.GLOBALS2 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.globals
-}

import JR



jclass : String
jclass =
    "GLOBALS2"


jchain : List String
jchain =
    [ "GLOBALS2" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GLOBALS2"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_GETCURRENTLOCATION", jstatic_GETCURRENTLOCATION ), ( "jstatic_GETCURRENTHOMELOCATION", jstatic_GETCURRENTHOMELOCATION ), ( "jstatic_GENERATEALLSTORES", jstatic_GENERATEALLSTORES ), ( "jstatic_LICENSEAGREEMENT", jstatic_LICENSEAGREEMENT ), ( "jstatic_CREATEDATABASES", jstatic_CREATEDATABASES ), ( "jstatic_VIEWNAME", jstatic_VIEWNAME ), ( "jstatic_SETSHIPPINGTYPE", jstatic_SETSHIPPINGTYPE ), ( "jstatic_VIEWSUMMARY", jstatic_VIEWSUMMARY ), ( "jstatic_SET", jstatic_SET ), ( "jstatic_SELECT", jstatic_SELECT ), ( "jstatic_SELECTNEW", jstatic_SELECTNEW ), ( "jstatic_SELECTEXISTING", jstatic_SELECTEXISTING ), ( "jstatic_PROCESS", jstatic_PROCESS ), ( "jstatic_LOGINSUCCESS", jstatic_LOGINSUCCESS ), ( "jstatic_LOGINFAILED", jstatic_LOGINFAILED ), ( "jstatic_NONE", jstatic_NONE ), ( "jstatic_TOP", jstatic_TOP ), ( "jstatic_LEFT", jstatic_LEFT ), ( "jstatic_RIGHT", jstatic_RIGHT ), ( "jstatic_BACK", jstatic_BACK ), ( "jstatic_BOTTOM", jstatic_BOTTOM ), ( "jstatic_FRONT", jstatic_FRONT ), ( "jstatic_AUTHORIZE", jstatic_AUTHORIZE ), ( "jstatic_AUTHORIZEANDEVALBODY", jstatic_AUTHORIZEANDEVALBODY ), ( "jstatic_AUTHORIZEANDEVALBODYONERROR", jstatic_AUTHORIZEANDEVALBODYONERROR ), ( "jstatic_AUTHORIZEORDEREVALBODYONERROR", jstatic_AUTHORIZEORDEREVALBODYONERROR ), ( "jstatic_AUTHORIZEFORMEVALBODYONERROR", jstatic_AUTHORIZEFORMEVALBODYONERROR ), ( "jstatic_AUTHORIZEORDERANDSKIPBODY", jstatic_AUTHORIZEORDERANDSKIPBODY ), ( "jstatic_AUTHORIZEORDERANDEVALBODY", jstatic_AUTHORIZEORDERANDEVALBODY ), ( "jstatic_EDITPRICING", jstatic_EDITPRICING ), ( "jstatic_UPDATEPRICING", jstatic_UPDATEPRICING ), ( "jstatic_SETPAYMENTMETHOD", jstatic_SETPAYMENTMETHOD ), ( "jstatic_BACKUP", jstatic_BACKUP ), ( "jstatic_RESTORE", jstatic_RESTORE ), ( "jstatic_SUMMARY", jstatic_SUMMARY ), ( "jstatic_DESCRIPTION", jstatic_DESCRIPTION ), ( "jstatic_IMG", jstatic_IMG ), ( "jstatic_HREF", jstatic_HREF ), ( "jstatic_KEYWORD", jstatic_KEYWORD ), ( "jstatic_TYPE", jstatic_TYPE ), ( "jstatic_DATA", jstatic_DATA ), ( "jstatic_NUM", jstatic_NUM ), ( "jstatic_PRICE", jstatic_PRICE ), ( "jstatic_REGISTER", jstatic_REGISTER ), ( "jstatic_CHECKOUT", jstatic_CHECKOUT ), ( "jstatic_ADMINCOMMAND", jstatic_ADMINCOMMAND ), ( "jstatic_PROCESSBODYIFNOTAUTHENTICATED", jstatic_PROCESSBODYIFNOTAUTHENTICATED ), ( "jstatic_PROCESSBODYIFAUTHENTICATED", jstatic_PROCESSBODYIFAUTHENTICATED ), ( "jstatic_PROCESSTRANSACTION", jstatic_PROCESSTRANSACTION ), ( "jstatic_NEWPASSWORD", jstatic_NEWPASSWORD ), ( "jstatic_CHANGEPASSWORD", jstatic_CHANGEPASSWORD ), ( "jstatic_JDBCDRIVER", jstatic_JDBCDRIVER ), ( "jstatic_WEBAPPPATH", jstatic_WEBAPPPATH ), ( "jstatic_AMOUNTVALUE", jstatic_AMOUNTVALUE ), ( "jstatic_GETORDERIDFROMSESSION", jstatic_GETORDERIDFROMSESSION ), ( "jstatic_SETUPPAYMENTMETHODS", jstatic_SETUPPAYMENTMETHODS ), ( "jstatic_CANCELSTOREFRONT", jstatic_CANCELSTOREFRONT ), ( "jstatic_ADJUST", jstatic_ADJUST ), ( "jstatic_ISASUBSET", jstatic_ISASUBSET ), ( "jstatic_NOTASUBSET", jstatic_NOTASUBSET ), ( "jstatic_GENERATE", jstatic_GENERATE ), ( "jstatic_VIEW", jstatic_VIEW ), ( "jstatic_EDIT", jstatic_EDIT ), ( "jstatic_NEW", jstatic_NEW ), ( "jstatic_SEARCH", jstatic_SEARCH ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_GETCURRENTLOCATION : JR.M
jstatic_GETCURRENTLOCATION s =
    JR.static "GLOBALS2" jclinit "GETCURRENTLOCATION"
        (JR.str "Get Current Location")
        s


jstatic_GETCURRENTHOMELOCATION : JR.M
jstatic_GETCURRENTHOMELOCATION s =
    JR.static "GLOBALS2" jclinit "GETCURRENTHOMELOCATION"
        (JR.str "Get Current Home Location")
        s


jstatic_GENERATEALLSTORES : JR.M
jstatic_GENERATEALLSTORES s =
    JR.static "GLOBALS2" jclinit "GENERATEALLSTORES"
        (JR.str "Generate All Stores")
        s


jstatic_LICENSEAGREEMENT : JR.M
jstatic_LICENSEAGREEMENT s =
    JR.static "GLOBALS2" jclinit "LICENSEAGREEMENT"
        (JR.str "License Agreement")
        s


jstatic_CREATEDATABASES : JR.M
jstatic_CREATEDATABASES s =
    JR.static "GLOBALS2" jclinit "CREATEDATABASES"
        (JR.str "Create Databases")
        s


jstatic_VIEWNAME : JR.M
jstatic_VIEWNAME s =
    JR.static "GLOBALS2" jclinit "VIEWNAME"
        (JR.str "VIEW_NAME")
        s


jstatic_SETSHIPPINGTYPE : JR.M
jstatic_SETSHIPPINGTYPE s =
    JR.static "GLOBALS2" jclinit "SETSHIPPINGTYPE"
        (JR.str "Set Shipping Type")
        s


jstatic_VIEWSUMMARY : JR.M
jstatic_VIEWSUMMARY s =
    JR.static "GLOBALS2" jclinit "VIEWSUMMARY"
        (JR.str "View Summary")
        s


jstatic_SET : JR.M
jstatic_SET s =
    JR.static "GLOBALS2" jclinit "SET"
        (JR.str "Set")
        s


jstatic_SELECT : JR.M
jstatic_SELECT s =
    JR.static "GLOBALS2" jclinit "SELECT"
        (JR.str "Select")
        s


jstatic_SELECTNEW : JR.M
jstatic_SELECTNEW s =
    JR.static "GLOBALS2" jclinit "SELECTNEW"
        (JR.str "Select New")
        s


jstatic_SELECTEXISTING : JR.M
jstatic_SELECTEXISTING s =
    JR.static "GLOBALS2" jclinit "SELECTEXISTING"
        (JR.str "Select Existing")
        s


jstatic_PROCESS : JR.M
jstatic_PROCESS s =
    JR.static "GLOBALS2" jclinit "PROCESS"
        (JR.str "Process")
        s


jstatic_LOGINSUCCESS : JR.M
jstatic_LOGINSUCCESS s =
    JR.static "GLOBALS2" jclinit "LOGINSUCCESS"
        (JR.str "Login Successful")
        s


jstatic_LOGINFAILED : JR.M
jstatic_LOGINFAILED s =
    JR.static "GLOBALS2" jclinit "LOGINFAILED"
        (JR.str "Login Failed")
        s


jstatic_NONE : JR.M
jstatic_NONE s =
    JR.static "GLOBALS2" jclinit "NONE"
        (JR.str "None")
        s


jstatic_TOP : JR.M
jstatic_TOP s =
    JR.static "GLOBALS2" jclinit "TOP"
        (JR.str "Top")
        s


jstatic_LEFT : JR.M
jstatic_LEFT s =
    JR.static "GLOBALS2" jclinit "LEFT"
        (JR.str "Left")
        s


jstatic_RIGHT : JR.M
jstatic_RIGHT s =
    JR.static "GLOBALS2" jclinit "RIGHT"
        (JR.str "Right")
        s


jstatic_BACK : JR.M
jstatic_BACK s =
    JR.static "GLOBALS2" jclinit "BACK"
        (JR.str "Back")
        s


jstatic_BOTTOM : JR.M
jstatic_BOTTOM s =
    JR.static "GLOBALS2" jclinit "BOTTOM"
        (JR.str "Bottom")
        s


jstatic_FRONT : JR.M
jstatic_FRONT s =
    JR.static "GLOBALS2" jclinit "FRONT"
        (JR.str "Front")
        s


jstatic_AUTHORIZE : JR.M
jstatic_AUTHORIZE s =
    JR.static "GLOBALS2" jclinit "AUTHORIZE"
        (JR.str "Authorize")
        s


jstatic_AUTHORIZEANDEVALBODY : JR.M
jstatic_AUTHORIZEANDEVALBODY s =
    JR.static "GLOBALS2" jclinit "AUTHORIZEANDEVALBODY"
        (JR.str "Authorize AND EVAL BODY")
        s


jstatic_AUTHORIZEANDEVALBODYONERROR : JR.M
jstatic_AUTHORIZEANDEVALBODYONERROR s =
    JR.static "GLOBALS2" jclinit "AUTHORIZEANDEVALBODYONERROR"
        (JR.str "Authorize AND EVAL BODY On Error")
        s


jstatic_AUTHORIZEORDEREVALBODYONERROR : JR.M
jstatic_AUTHORIZEORDEREVALBODYONERROR s =
    JR.static "GLOBALS2" jclinit "AUTHORIZEORDEREVALBODYONERROR"
        (JR.str "Authorize Order Eval On Error")
        s


jstatic_AUTHORIZEFORMEVALBODYONERROR : JR.M
jstatic_AUTHORIZEFORMEVALBODYONERROR s =
    JR.static "GLOBALS2" jclinit "AUTHORIZEFORMEVALBODYONERROR"
        (JR.str "Authorize Form Eval On Error")
        s


jstatic_AUTHORIZEORDERANDSKIPBODY : JR.M
jstatic_AUTHORIZEORDERANDSKIPBODY s =
    JR.static "GLOBALS2" jclinit "AUTHORIZEORDERANDSKIPBODY"
        (JR.str "Authorize Order Skip")
        s


jstatic_AUTHORIZEORDERANDEVALBODY : JR.M
jstatic_AUTHORIZEORDERANDEVALBODY s =
    JR.static "GLOBALS2" jclinit "AUTHORIZEORDERANDEVALBODY"
        (JR.str "Authorize Order Eval")
        s


jstatic_EDITPRICING : JR.M
jstatic_EDITPRICING s =
    JR.static "GLOBALS2" jclinit "EDITPRICING"
        (JR.str "Edit Pricing")
        s


jstatic_UPDATEPRICING : JR.M
jstatic_UPDATEPRICING s =
    JR.static "GLOBALS2" jclinit "UPDATEPRICING"
        (JR.str "Update Pricing")
        s


jstatic_SETPAYMENTMETHOD : JR.M
jstatic_SETPAYMENTMETHOD s =
    JR.static "GLOBALS2" jclinit "SETPAYMENTMETHOD"
        (JR.str "Set Payment Method")
        s


jstatic_BACKUP : JR.M
jstatic_BACKUP s =
    JR.static "GLOBALS2" jclinit "BACKUP"
        (JR.str "Backup")
        s


jstatic_RESTORE : JR.M
jstatic_RESTORE s =
    JR.static "GLOBALS2" jclinit "RESTORE"
        (JR.str "Restore")
        s


jstatic_SUMMARY : JR.M
jstatic_SUMMARY s =
    JR.static "GLOBALS2" jclinit "SUMMARY"
        (JR.str "Summary")
        s


jstatic_DESCRIPTION : JR.M
jstatic_DESCRIPTION s =
    JR.static "GLOBALS2" jclinit "DESCRIPTION"
        (JR.str "Description")
        s


jstatic_IMG : JR.M
jstatic_IMG s =
    JR.static "GLOBALS2" jclinit "IMG"
        (JR.str "img")
        s


jstatic_HREF : JR.M
jstatic_HREF s =
    JR.static "GLOBALS2" jclinit "HREF"
        (JR.str "href")
        s


jstatic_KEYWORD : JR.M
jstatic_KEYWORD s =
    JR.static "GLOBALS2" jclinit "KEYWORD"
        (JR.str "keyword")
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "GLOBALS2" jclinit "TYPE"
        (JR.str "TYPE")
        s


jstatic_DATA : JR.M
jstatic_DATA s =
    JR.static "GLOBALS2" jclinit "DATA"
        (JR.str "DATA")
        s


jstatic_NUM : JR.M
jstatic_NUM s =
    JR.static "GLOBALS2" jclinit "NUM"
        (JR.str "NUM")
        s


jstatic_PRICE : JR.M
jstatic_PRICE s =
    JR.static "GLOBALS2" jclinit "PRICE"
        (JR.str "PRICE")
        s


jstatic_REGISTER : JR.M
jstatic_REGISTER s =
    JR.static "GLOBALS2" jclinit "REGISTER"
        (JR.str "Register")
        s


jstatic_CHECKOUT : JR.M
jstatic_CHECKOUT s =
    JR.static "GLOBALS2" jclinit "CHECKOUT"
        (JR.str "Checkout")
        s


jstatic_ADMINCOMMAND : JR.M
jstatic_ADMINCOMMAND s =
    JR.static "GLOBALS2" jclinit "ADMINCOMMAND"
        (JR.str "AdminCommand")
        s


jstatic_PROCESSBODYIFNOTAUTHENTICATED : JR.M
jstatic_PROCESSBODYIFNOTAUTHENTICATED s =
    JR.static "GLOBALS2" jclinit "PROCESSBODYIFNOTAUTHENTICATED"
        (JR.str "Not Authenticated")
        s


jstatic_PROCESSBODYIFAUTHENTICATED : JR.M
jstatic_PROCESSBODYIFAUTHENTICATED s =
    JR.static "GLOBALS2" jclinit "PROCESSBODYIFAUTHENTICATED"
        (JR.str "Authenticated")
        s


jstatic_PROCESSTRANSACTION : JR.M
jstatic_PROCESSTRANSACTION s =
    JR.static "GLOBALS2" jclinit "PROCESSTRANSACTION"
        (JR.str "Process Transaction")
        s


jstatic_NEWPASSWORD : JR.M
jstatic_NEWPASSWORD s =
    JR.static "GLOBALS2" jclinit "NEWPASSWORD"
        (JR.str "New Password")
        s


jstatic_CHANGEPASSWORD : JR.M
jstatic_CHANGEPASSWORD s =
    JR.static "GLOBALS2" jclinit "CHANGEPASSWORD"
        (JR.str "Change Password")
        s


jstatic_JDBCDRIVER : JR.M
jstatic_JDBCDRIVER s =
    JR.static "GLOBALS2" jclinit "JDBCDRIVER"
        (JR.str "Jdbc Driver")
        s


jstatic_WEBAPPPATH : JR.M
jstatic_WEBAPPPATH s =
    JR.static "GLOBALS2" jclinit "WEBAPPPATH"
        (JR.str "Webapp Path")
        s


jstatic_AMOUNTVALUE : JR.M
jstatic_AMOUNTVALUE s =
    JR.static "GLOBALS2" jclinit "AMOUNTVALUE"
        (JR.str "Amount Value")
        s


jstatic_GETORDERIDFROMSESSION : JR.M
jstatic_GETORDERIDFROMSESSION s =
    JR.static "GLOBALS2" jclinit "GETORDERIDFROMSESSION"
        (JR.str "Get Order Id From Session")
        s


jstatic_SETUPPAYMENTMETHODS : JR.M
jstatic_SETUPPAYMENTMETHODS s =
    JR.static "GLOBALS2" jclinit "SETUPPAYMENTMETHODS"
        (JR.str "Setup Payment Methods")
        s


jstatic_CANCELSTOREFRONT : JR.M
jstatic_CANCELSTOREFRONT s =
    JR.static "GLOBALS2" jclinit "CANCELSTOREFRONT"
        (JR.str "Cancel Store Front")
        s


jstatic_ADJUST : JR.M
jstatic_ADJUST s =
    JR.static "GLOBALS2" jclinit "ADJUST"
        (JR.str "Adjust")
        s


jstatic_ISASUBSET : JR.M
jstatic_ISASUBSET s =
    JR.static "GLOBALS2" jclinit "ISASUBSET"
        (JR.str "Is a Subset")
        s


jstatic_NOTASUBSET : JR.M
jstatic_NOTASUBSET s =
    JR.static "GLOBALS2" jclinit "NOTASUBSET"
        (JR.str "Not a Subset")
        s


jstatic_GENERATE : JR.M
jstatic_GENERATE s =
    JR.static "GLOBALS2" jclinit "GENERATE"
        (JR.str "Generate")
        s


jstatic_VIEW : JR.M
jstatic_VIEW s =
    JR.static "GLOBALS2" jclinit "VIEW"
        (JR.str "View")
        s


jstatic_EDIT : JR.M
jstatic_EDIT s =
    JR.static "GLOBALS2" jclinit "EDIT"
        (JR.str "Edit")
        s


jstatic_NEW : JR.M
jstatic_NEW s =
    JR.static "GLOBALS2" jclinit "NEW"
        (JR.str "New")
        s


jstatic_SEARCH : JR.M
jstatic_SEARCH s =
    JR.static "GLOBALS2" jclinit "SEARCH"
        (JR.str "Search")
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

