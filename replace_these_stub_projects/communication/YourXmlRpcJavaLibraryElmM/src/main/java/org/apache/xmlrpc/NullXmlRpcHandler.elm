module Org.Apache.Xmlrpc.NullXmlRpcHandler exposing (..)

{-| Generated Code Do Not Modify package org.apache.xmlrpc
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Apache.Xmlrpc.XmlRpcHandler as XmlRpcHandler


jclass : String
jclass =
    "NullXmlRpcHandler"


jchain : List String
jchain =
    [ "NullXmlRpcHandler" ]
        ++ XmlRpcHandler.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "execute_2", jm_execute_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullXmlRpcHandler"
        [ ( "jm_execute_2", jm_execute_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_XML_RPC_HANDLER", jstatic_NULL_XML_RPC_HANDLER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_XML_RPC_HANDLER : JR.M
jstatic_NULL_XML_RPC_HANDLER s =
    JR.static "NullXmlRpcHandler" jclinit "NULL_XML_RPC_HANDLER"
        (JR.new jnew_0 [])
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


jm_execute_2 : JR.Method
jm_execute_2 jheap jthis jargs =
    JR.method [ ( "method", "" ), ( "params", "" ) ] ""
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

