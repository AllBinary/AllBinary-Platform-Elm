module Org.Apache.Xmlrpc.XmlRpcClient exposing (..)

{-| Generated Code Do Not Modify package org.apache.xmlrpc
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Apache.Xmlrpc.XmlRpcHandler as XmlRpcHandler


jclass : String
jclass =
    "XmlRpcClient"


jchain : List String
jchain =
    [ "XmlRpcClient" ]
        ++ XmlRpcHandler.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "url", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getURL_0", jm_getURL_0 )
        , ( "setBasicAuthentication_2", jm_setBasicAuthentication_2 )
        , ( "execute_2", jm_execute_2 )
        , ( "executeWithCrypt_3", jm_executeWithCrypt_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "XmlRpcClient"
        [ ( "jm_getURL_0", jm_getURL_0 ), ( "jm_setBasicAuthentication_2", jm_setBasicAuthentication_2 ), ( "jm_execute_2", jm_execute_2 ), ( "jm_executeWithCrypt_3", jm_executeWithCrypt_3 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "url", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "url" "" JR.this (JR.new (JR.namedMethod "URL.jnew_1") [ (JR.local "url") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getURL_0 : JR.Method
jm_getURL_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "url") ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicAuthentication_2 : JR.Method
jm_setBasicAuthentication_2 jheap jthis jargs =
    JR.method [ ( "user", "" ), ( "password", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_execute_2 : JR.Method
jm_execute_2 jheap jthis jargs =
    JR.method [ ( "method", "" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_executeWithCrypt_3 : JR.Method
jm_executeWithCrypt_3 jheap jthis jargs =
    JR.method [ ( "method", "" ), ( "params", "" ), ( "cryptInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
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

