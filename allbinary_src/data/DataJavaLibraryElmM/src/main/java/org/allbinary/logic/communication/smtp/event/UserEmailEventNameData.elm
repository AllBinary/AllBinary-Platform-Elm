module Org.Allbinary.Logic.Communication.Smtp.Event.UserEmailEventNameData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.smtp.event
-}

import JR
import Org.Allbinary.Business.User.Commerce.Inventory.Order.OrderHistoryData as OrderHistoryData
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "UserEmailEventNameData"


jchain : List String
jchain =
    [ "UserEmailEventNameData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "eventNameId", JR.defaultOf "I" ), ( "eventHandlerName", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "initNextId_0", jm_initNextId_0 )
        , ( "isEvent_1", jm_isEvent_1 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UserEmailEventNameData"
        [ ( "jm_initNextId_0", jm_initNextId_0 ), ( "jm_isEvent_1", jm_isEvent_1 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_userNameEvenNameHashMap", jstatic_userNameEvenNameHashMap ), ( "jstatic_nextId", jstatic_nextId ), ( "jstatic_INSTALLER", jstatic_INSTALLER ), ( "jstatic_EXCEPTION", jstatic_EXCEPTION ), ( "jstatic_LOGGEDEXCEPTION", jstatic_LOGGEDEXCEPTION ), ( "jstatic_ERROR", jstatic_ERROR ), ( "jstatic_OUTOFMEMORY", jstatic_OUTOFMEMORY ), ( "jstatic_ADMINGENERATINGSTATICPAGES", jstatic_ADMINGENERATINGSTATICPAGES ), ( "jstatic_STOREERROROCCURRED", jstatic_STOREERROROCCURRED ), ( "jstatic_STOREOUTOFMEMORY", jstatic_STOREOUTOFMEMORY ), ( "jstatic_STORECREATED", jstatic_STORECREATED ), ( "jstatic_STOREOPENED", jstatic_STOREOPENED ), ( "jstatic_STORECLOSED", jstatic_STORECLOSED ), ( "jstatic_STOREGENERATINGSTATICPAGES", jstatic_STOREGENERATINGSTATICPAGES ), ( "jstatic_PRODUCTISOUT", jstatic_PRODUCTISOUT ), ( "jstatic_PRODUCTISAVAILABLE", jstatic_PRODUCTISAVAILABLE ), ( "jstatic_PRODUCTISOLD", jstatic_PRODUCTISOLD ), ( "jstatic_PRODUCTISONSALE", jstatic_PRODUCTISONSALE ), ( "jstatic_PRODUCTSALEISOVER", jstatic_PRODUCTSALEISOVER ), ( "jstatic_ORDERPREPROCESSING", jstatic_ORDERPREPROCESSING ), ( "jstatic_ORDERPROCESSING", jstatic_ORDERPROCESSING ), ( "jstatic_ORDERCANCELLED", jstatic_ORDERCANCELLED ), ( "jstatic_ORDERPARTIALLYSHIPPED", jstatic_ORDERPARTIALLYSHIPPED ), ( "jstatic_ORDERSHIPPED", jstatic_ORDERSHIPPED ), ( "jstatic_QUOTEREQUEST", jstatic_QUOTEREQUEST ), ( "jstatic_NEWPASSWORD", jstatic_NEWPASSWORD ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_userNameEvenNameHashMap : JR.M
jstatic_userNameEvenNameHashMap s =
    JR.static "UserEmailEventNameData" jclinit "userNameEvenNameHashMap"
        (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])
        s


jstatic_nextId : JR.M
jstatic_nextId s =
    JR.static "UserEmailEventNameData" jclinit "nextId"
        (JR.int 0)
        s


jstatic_INSTALLER : JR.M
jstatic_INSTALLER s =
    JR.static "UserEmailEventNameData" jclinit "INSTALLER"
        (JR.new jnew_1 [ (JR.str "Installer") ])
        s


jstatic_EXCEPTION : JR.M
jstatic_EXCEPTION s =
    JR.static "UserEmailEventNameData" jclinit "EXCEPTION"
        (JR.new jnew_1 [ (JR.str "Exception") ])
        s


jstatic_LOGGEDEXCEPTION : JR.M
jstatic_LOGGEDEXCEPTION s =
    JR.static "UserEmailEventNameData" jclinit "LOGGEDEXCEPTION"
        (JR.new jnew_1 [ (JR.str "Logged Exception") ])
        s


jstatic_ERROR : JR.M
jstatic_ERROR s =
    JR.static "UserEmailEventNameData" jclinit "ERROR"
        (JR.new jnew_1 [ (JR.str "Error") ])
        s


jstatic_OUTOFMEMORY : JR.M
jstatic_OUTOFMEMORY s =
    JR.static "UserEmailEventNameData" jclinit "OUTOFMEMORY"
        (JR.new jnew_1 [ (JR.str "Out Of Memory Error") ])
        s


jstatic_ADMINGENERATINGSTATICPAGES : JR.M
jstatic_ADMINGENERATINGSTATICPAGES s =
    JR.static "UserEmailEventNameData" jclinit "ADMINGENERATINGSTATICPAGES"
        (JR.new jnew_1 [ (JR.str "Admin Generating Static Pages") ])
        s


jstatic_STOREERROROCCURRED : JR.M
jstatic_STOREERROROCCURRED s =
    JR.static "UserEmailEventNameData" jclinit "STOREERROROCCURRED"
        (JR.new jnew_1 [ (JR.str "Store Error Occurred") ])
        s


jstatic_STOREOUTOFMEMORY : JR.M
jstatic_STOREOUTOFMEMORY s =
    JR.static "UserEmailEventNameData" jclinit "STOREOUTOFMEMORY"
        (JR.new jnew_1 [ (JR.str "Store Out Of Memory Error") ])
        s


jstatic_STORECREATED : JR.M
jstatic_STORECREATED s =
    JR.static "UserEmailEventNameData" jclinit "STORECREATED"
        (JR.new jnew_1 [ (JR.str "Store Created") ])
        s


jstatic_STOREOPENED : JR.M
jstatic_STOREOPENED s =
    JR.static "UserEmailEventNameData" jclinit "STOREOPENED"
        (JR.new jnew_1 [ (JR.str "Store Opened") ])
        s


jstatic_STORECLOSED : JR.M
jstatic_STORECLOSED s =
    JR.static "UserEmailEventNameData" jclinit "STORECLOSED"
        (JR.new jnew_1 [ (JR.str "Store Closed") ])
        s


jstatic_STOREGENERATINGSTATICPAGES : JR.M
jstatic_STOREGENERATINGSTATICPAGES s =
    JR.static "UserEmailEventNameData" jclinit "STOREGENERATINGSTATICPAGES"
        (JR.new jnew_1 [ (JR.str "Store Generating Static Pages") ])
        s


jstatic_PRODUCTISOUT : JR.M
jstatic_PRODUCTISOUT s =
    JR.static "UserEmailEventNameData" jclinit "PRODUCTISOUT"
        (JR.new jnew_1 [ (JR.str "Product Is Out") ])
        s


jstatic_PRODUCTISAVAILABLE : JR.M
jstatic_PRODUCTISAVAILABLE s =
    JR.static "UserEmailEventNameData" jclinit "PRODUCTISAVAILABLE"
        (JR.new jnew_1 [ (JR.str "Product Is Available") ])
        s


jstatic_PRODUCTISOLD : JR.M
jstatic_PRODUCTISOLD s =
    JR.static "UserEmailEventNameData" jclinit "PRODUCTISOLD"
        (JR.new jnew_1 [ (JR.str "Product Is Old") ])
        s


jstatic_PRODUCTISONSALE : JR.M
jstatic_PRODUCTISONSALE s =
    JR.static "UserEmailEventNameData" jclinit "PRODUCTISONSALE"
        (JR.new jnew_1 [ (JR.str "Product Is On Sale") ])
        s


jstatic_PRODUCTSALEISOVER : JR.M
jstatic_PRODUCTSALEISOVER s =
    JR.static "UserEmailEventNameData" jclinit "PRODUCTSALEISOVER"
        (JR.new jnew_1 [ (JR.str "Product Sale Is Over") ])
        s


jstatic_ORDERPREPROCESSING : JR.M
jstatic_ORDERPREPROCESSING s =
    JR.static "UserEmailEventNameData" jclinit "ORDERPREPROCESSING"
        (JR.new jnew_1 [ OrderHistoryData.jstatic_PREPROCESSING ])
        s


jstatic_ORDERPROCESSING : JR.M
jstatic_ORDERPROCESSING s =
    JR.static "UserEmailEventNameData" jclinit "ORDERPROCESSING"
        (JR.new jnew_1 [ OrderHistoryData.jstatic_PROCESSING ])
        s


jstatic_ORDERCANCELLED : JR.M
jstatic_ORDERCANCELLED s =
    JR.static "UserEmailEventNameData" jclinit "ORDERCANCELLED"
        (JR.new jnew_1 [ OrderHistoryData.jstatic_CANCELLED ])
        s


jstatic_ORDERPARTIALLYSHIPPED : JR.M
jstatic_ORDERPARTIALLYSHIPPED s =
    JR.static "UserEmailEventNameData" jclinit "ORDERPARTIALLYSHIPPED"
        (JR.new jnew_1 [ OrderHistoryData.jstatic_PARTIALLYSHIPPED ])
        s


jstatic_ORDERSHIPPED : JR.M
jstatic_ORDERSHIPPED s =
    JR.static "UserEmailEventNameData" jclinit "ORDERSHIPPED"
        (JR.new jnew_1 [ OrderHistoryData.jstatic_SHIPPED ])
        s


jstatic_QUOTEREQUEST : JR.M
jstatic_QUOTEREQUEST s =
    JR.static "UserEmailEventNameData" jclinit "QUOTEREQUEST"
        (JR.new jnew_1 [ (JR.str "Quote Request") ])
        s


jstatic_NEWPASSWORD : JR.M
jstatic_NEWPASSWORD s =
    JR.static "UserEmailEventNameData" jclinit "NEWPASSWORD"
        (JR.new jnew_1 [ (JR.str "New Password") ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "eventHandlerName", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "eventHandlerName" "" JR.this (JR.local "eventHandlerName")), 
                    JR.exec (JR.invoke "initNextId_0" JR.this []), 
                    JR.exec (JR.invoke "put_2" jstatic_userNameEvenNameHashMap [ (JR.thisField "eventHandlerName"), JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_initNextId_0 : JR.Method
jm_initNextId_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "eventNameId" "I" JR.this jstatic_nextId), 
                    JR.exec (JR.postUpdate jstatic_nextId (\jwN66490 -> (JR.setStatic "UserEmailEventNameData.nextId" "I" (JR.lit jwN66490))) JR.increment) ])
        (jregister jheap)
        jthis
        jargs


jm_isEvent_1 : JR.Method
jm_isEvent_1 jheap jthis jargs =
    JR.method [ ( "userEmailEventNameString", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "containsKey_1" jstatic_userNameEvenNameHashMap [ (JR.local "userEmailEventNameString") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "userEmailEventNameString", "" ) ] ""
        (JR.run [ 
                    JR.declare "userEmailEventNameData" "" (JR.invoke "get_1" jstatic_userNameEvenNameHashMap [ (JR.local "userEmailEventNameString") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "userEmailEventNameData") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) []) ]) (JR.run [ 
                        JR.return (JR.local "userEmailEventNameData") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "eventHandlerName") ])
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

