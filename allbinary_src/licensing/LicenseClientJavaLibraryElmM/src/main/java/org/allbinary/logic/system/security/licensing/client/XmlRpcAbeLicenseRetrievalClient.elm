module Org.Allbinary.Logic.System.Security.Licensing.Client.XmlRpcAbeLicenseRetrievalClient exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing.client
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeClientLicense as AbeClientLicense
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Logic.Java.Exception.ExceptionUtil as ExceptionUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.Communication.Xmlrpc.XmlRpcAbeClient as XmlRpcAbeClient
import Org.Apache.Xmlrpc.XmlRpcClient as XmlRpcClient


jclass : String
jclass =
    "XmlRpcAbeLicenseRetrievalClient"


jchain : List String
jchain =
    [ "XmlRpcAbeLicenseRetrievalClient" ]
        ++ XmlRpcAbeClient.jchain


jfields : List ( String, JR.JValue )
jfields =
    XmlRpcAbeClient.jfields ++ [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "get_2", jm_get_2 ) ]
        XmlRpcAbeClient.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "XmlRpcAbeLicenseRetrievalClient"
        [ ( "jm_get_2", jm_get_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "clientInfo", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect XmlRpcAbeClient.jinit_2 JR.this [ (JR.local "clientInfo"), (JR.str "LicServ.getLicense") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_get_2 : JR.Method
jm_get_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "cryptInterface", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "server" "" (JR.invoke "getLicenseServer_1" (JR.invoke "getClientInfo_0" JR.this []) [ (JR.invoke "getServer_0" JR.this []) ]), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "TRYING") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getServer_0" JR.this []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SEP") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "server") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) (JR.invoke "toString_0" (JR.local "stringBuffer") [])), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.declare "param" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.declare "xmlRpcClient" "" (JR.new XmlRpcClient.jnew_1 [ (JR.local "server") ]), 
                        JR.exec (JR.invoke "setClient_1" JR.this [ (JR.local "xmlRpcClient") ]), 
                        JR.exec (JR.invoke "setBasicAuthentication_2" (JR.local "xmlRpcClient") [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]), 
                        JR.declare "hashtable" "" (JR.invoke "toHashtable_0" (JR.invoke "getClientInfo_0" JR.this []) []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.thisField "CLIENT_INFO") (JR.invoke "toString_0" (JR.local "hashtable") [])), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "param") [ (JR.local "hashtable") ]), 
                        JR.declare "result" "" (JR.invoke "executeWithCrypt_3" (JR.local "xmlRpcClient") [ (JR.invoke "getRemoteMethod_0" JR.this []), (JR.local "param"), (JR.local "cryptInterface") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.thisField "RESULT") (JR.invoke "toString_0" (JR.local "result") [])), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.declare "resultHashtable" "" (JR.local "result"), 
                        JR.ifElse (JR.map JR.not_ (JR.callStatic AbeClientLicense.jm_hasRequiredKeys_1 [ (JR.local "resultHashtable") ])) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.thisField "INVALID"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                            JR.return (JR.invoke "tryAnother_1" JR.this [ (JR.local "anyType") ]) ]) identity, 
                        JR.declare "abeLicenseInterface" "" (JR.new AbeClientLicense.jnew_1 [ (JR.local "resultHashtable") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.field "END" (JR.thisField "commonStrings")) (JR.invoke "toString_0" (JR.local "stringBuffer") [])), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.setField "isOnline" "" JR.this (JR.bool True)), 
                        JR.return (JR.local "abeLicenseInterface") ]) [ ( [ "IOException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.thisField "EXCEPTION_IN_CLIENT"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.thisField "TRYING_OTHER_SERVERS") (JR.invoke "getStackTrace_1" (JR.callStatic ExceptionUtil.jm_getInstance_0 []) [ (JR.local "e") ])), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "startsWith_1" (JR.invoke "getMessage_0" (JR.local "e") []) [ (JR.thisField "HOST_NOT_RESOLVED") ])) (JR.run [ 
                            JR.return (JR.invoke "tryAnother_1" JR.this [ (JR.local "anyType") ]) ]) (JR.run [ 
                            JR.exec (JR.setField "isOnline" "" JR.this (JR.bool False)), 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.thisField "HOST_NOT_RESOLVED_MSG") ]) ]) ]) ), ( [ "XmlRpcException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.thisField "SERVER_REPORTED_ERROR"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.invoke "tryAnother_1" JR.this [ (JR.local "anyType") ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.thisField "UNKNOWN_ERROR"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.invoke "tryAnother_1" JR.this [ (JR.local "anyType") ]) ]) ) ] identity ])
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

