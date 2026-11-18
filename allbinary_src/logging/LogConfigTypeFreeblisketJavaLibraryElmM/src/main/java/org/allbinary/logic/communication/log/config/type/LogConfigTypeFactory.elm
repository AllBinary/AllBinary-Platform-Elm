module Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log.config.type
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigType as LogConfigType
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "LogConfigTypeFactory"


jchain : List String
jchain =
    [ "LogConfigTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NO_DESCRIPTION", JR.defaultOf "" ), ( "AUTHENTICATION", JR.defaultOf "" ), ( "AUTHENTICATIONERROR", JR.defaultOf "" ), ( "CATEGORY", JR.defaultOf "" ), ( "CATEGORYERROR", JR.defaultOf "" ), ( "CRYPT", JR.defaultOf "" ), ( "CRYPTERROR", JR.defaultOf "" ), ( "EMAILLOGGING", JR.defaultOf "" ), ( "EMAILLOGGINGERROR", JR.defaultOf "" ), ( "ENTITYFACTORYERROR", JR.defaultOf "" ), ( "NETBEANS_MODULE", JR.defaultOf "" ), ( "NETBEANS_MODULE_ERROR", JR.defaultOf "" ), ( "FACTORYERROR", JR.defaultOf "" ), ( "FILE", JR.defaultOf "" ), ( "FILEERROR", JR.defaultOf "" ), ( "HTTP", JR.defaultOf "" ), ( "HTTPERROR", JR.defaultOf "" ), ( "HTTPREQUEST", JR.defaultOf "" ), ( "HTTPREQUESTERROR", JR.defaultOf "" ), ( "IDLOGGING", JR.defaultOf "" ), ( "JSPEXTRAOUTPUT", JR.defaultOf "" ), ( "JSPTAGEXTRAOUTPUT", JR.defaultOf "" ), ( "JSPTAG", JR.defaultOf "" ), ( "JSPTAGERROR", JR.defaultOf "" ), ( "LICENSING", JR.defaultOf "" ), ( "LICENSINGERROR", JR.defaultOf "" ), ( "LOADER", JR.defaultOf "" ), ( "LOADERERROR", JR.defaultOf "" ), ( "OS", JR.defaultOf "" ), ( "OSERROR", JR.defaultOf "" ), ( "PAYMENT", JR.defaultOf "" ), ( "PAYMENTERROR", JR.defaultOf "" ), ( "PRELOADER", JR.defaultOf "" ), ( "PRELOADERERROR", JR.defaultOf "" ), ( "PRODUCTSEARCHLOGGING", JR.defaultOf "" ), ( "PRODUCTSEARCHLOGGINGERROR", JR.defaultOf "" ), ( "SERVLET", JR.defaultOf "" ), ( "SERVLETERROR", JR.defaultOf "" ), ( "SHIPPINGERROR", JR.defaultOf "" ), ( "SQLLOGGINGERROR", JR.defaultOf "" ), ( "SQLLOGGING", JR.defaultOf "" ), ( "SQLTAGS", JR.defaultOf "" ), ( "SQLTAGSERROR", JR.defaultOf "" ), ( "STYLE", JR.defaultOf "" ), ( "STYLEERROR", JR.defaultOf "" ), ( "TAGHELPER", JR.defaultOf "" ), ( "TAGHELPERERROR", JR.defaultOf "" ), ( "TAGHELPERFACTORY", JR.defaultOf "" ), ( "TAGHELPERFACTORYERROR", JR.defaultOf "" ), ( "TAX", JR.defaultOf "" ), ( "TAXERROR", JR.defaultOf "" ), ( "VALIDATION", JR.defaultOf "" ), ( "VALIDATIONERROR", JR.defaultOf "" ), ( "VIEW", JR.defaultOf "" ), ( "VIEWERROR", JR.defaultOf "" ), ( "VIEWFACTORYERROR", JR.defaultOf "" ), ( "WORKFLOW", JR.defaultOf "" ), ( "WORKFLOWERROR", JR.defaultOf "" ), ( "XMLLOGGING", JR.defaultOf "" ), ( "XMLLOGGINGERROR", JR.defaultOf "" ), ( "XSLLOGGING", JR.defaultOf "" ), ( "XSLLOGGINGERROR", JR.defaultOf "" ), ( "REPLACE", JR.defaultOf "" ), ( "REPLACE_INFO", JR.defaultOf "" ), ( "REPLACEERROR", JR.defaultOf "" ), ( "SQLLOGGINGPOOL", JR.defaultOf "" ), ( "SQLLOGGINGPOOLERROR", JR.defaultOf "" ), ( "STATICPAGEGENERATIONLOGGING", JR.defaultOf "" ), ( "STATICPAGEGENERATIONLOGGINGERROR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogConfigTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LogConfigTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NO_DESCRIPTION" "" JR.this (JR.str "No Description")),
                JR.exec (JR.setField "AUTHENTICATION" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Authentication"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "AUTHENTICATIONERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Authentication Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "CATEGORY" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Category"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "CATEGORYERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Category Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "CRYPT" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Crypt"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "CRYPTERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Crypt Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "EMAILLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Email"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "EMAILLOGGINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Email Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "ENTITYFACTORYERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Entity Factory Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "NETBEANS_MODULE" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "NetBeans Module"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "NETBEANS_MODULE_ERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "NetBeans Module Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "FACTORYERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "General Factory Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "FILE" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "File"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "FILEERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "File Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "HTTP" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "HTTP"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "HTTPERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "HTTP Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "HTTPREQUEST" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Http Request"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "HTTPREQUESTERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Http Request Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "IDLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "ID Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "JSPEXTRAOUTPUT" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "JSP Extra Output"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "JSPTAGEXTRAOUTPUT" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "JSP Tag Extra Output"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "JSPTAG" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "JSP Tag"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "JSPTAGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "JSP Tag Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "LICENSING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Licensing"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "LICENSINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Licensing Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "LOADER" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Loader"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "LOADERERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Loader Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "OS" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "OS"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "OSERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "OS Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "PAYMENT" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Payment"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "PAYMENTERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Payment Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "PRELOADER" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "PreLoader"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "PRELOADERERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "PreLoader Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "PRODUCTSEARCHLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Product Search Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "PRODUCTSEARCHLOGGINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Product Search Logging Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SERVLET" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Servlet"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SERVLETERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Servlet Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SHIPPINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Shipping Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SQLLOGGINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "SQL Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SQLLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "SQL Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SQLTAGS" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "SQL Tag Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SQLTAGSERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "SQL Tag Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "STYLE" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Style"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "STYLEERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Style Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "TAGHELPER" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Tag Helper"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "TAGHELPERERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Tag Helper Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "TAGHELPERFACTORY" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Tag Helper Factory"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "TAGHELPERFACTORYERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Tag Helper Factory Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "TAX" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Tax"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "TAXERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Tax Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "VALIDATION" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Validation"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "VALIDATIONERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Validation Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "VIEW" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "View"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "VIEWERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "View Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "VIEWFACTORYERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "View Factory Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "WORKFLOW" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Workflow"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "WORKFLOWERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Workflow Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "XMLLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "XML Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "XMLLOGGINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "XML Logging Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "XSLLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "XSL Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "XSLLOGGINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "XSL Logging Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "REPLACE" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Replace"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "REPLACE_INFO" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Replace Info"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "REPLACEERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Replace Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SQLLOGGINGPOOL" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "SQL Pool"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "SQLLOGGINGPOOLERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "SQL Pool Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "STATICPAGEGENERATIONLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Static Page Generation Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "STATICPAGEGENERATIONLOGGINGERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Static Page Generation Logging Error"), (JR.thisField "NO_DESCRIPTION") ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "FreeBlisket"), JR.this, (JR.field "CONSTRUCTOR" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ]) ]) ])
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

