module Org.Allbinary.Logic.Communication.Xmlrpc.XmlRpcAbeClient exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.xmlrpc
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Apache.Xmlrpc.NullXmlRpcHandler as NullXmlRpcHandler
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "XmlRpcAbeClient"


jchain : List String
jchain =
    [ "XmlRpcAbeClient" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "remoteMethod", JR.defaultOf "" ), ( "clientInfo", JR.defaultOf "" ), ( "client", JR.defaultOf "" ), ( "server", JR.defaultOf "I" ), ( "start", JR.defaultOf "I" ), ( "maxServers", JR.defaultOf "I" ), ( "isDone", JR.defaultOf "Z" ), ( "START_SERVER", JR.defaultOf "" ), ( "TRYING", JR.defaultOf "" ), ( "SEP", JR.defaultOf "" ), ( "CLIENT_INFO", JR.defaultOf "" ), ( "RESULT", JR.defaultOf "" ), ( "INVALID", JR.defaultOf "" ), ( "EXCEPTION_IN_CLIENT", JR.defaultOf "" ), ( "SERVER_REPORTED_ERROR", JR.defaultOf "" ), ( "UNKNOWN_ERROR", JR.defaultOf "" ), ( "TRYING_OTHER_SERVERS", JR.defaultOf "" ), ( "HOST_NOT_RESOLVED_MSG", JR.defaultOf "" ), ( "HOST_NOT_RESOLVED", JR.defaultOf "" ), ( "myRandomFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "get_1", jm_get_1 )
        , ( "tryAnother_1", jm_tryAnother_1 )
        , ( "getClientInfo_0", jm_getClientInfo_0 )
        , ( "getClient_0", jm_getClient_0 )
        , ( "setClient_1", jm_setClient_1 )
        , ( "getServer_0", jm_getServer_0 )
        , ( "setServer_1", jm_setServer_1 )
        , ( "getStart_0", jm_getStart_0 )
        , ( "setStart_1", jm_setStart_1 )
        , ( "getMaxServers_0", jm_getMaxServers_0 )
        , ( "setMaxServers_1", jm_setMaxServers_1 )
        , ( "isIsDone_0", jm_isIsDone_0 )
        , ( "setIsDone_1", jm_setIsDone_1 )
        , ( "getRemoteMethod_0", jm_getRemoteMethod_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "XmlRpcAbeClient"
        [ ( "jm_get_1", jm_get_1 ), ( "jm_tryAnother_1", jm_tryAnother_1 ), ( "jm_getClientInfo_0", jm_getClientInfo_0 ), ( "jm_getClient_0", jm_getClient_0 ), ( "jm_setClient_1", jm_setClient_1 ), ( "jm_getServer_0", jm_getServer_0 ), ( "jm_setServer_1", jm_setServer_1 ), ( "jm_getStart_0", jm_getStart_0 ), ( "jm_setStart_1", jm_setStart_1 ), ( "jm_getMaxServers_0", jm_getMaxServers_0 ), ( "jm_setMaxServers_1", jm_setMaxServers_1 ), ( "jm_isIsDone_0", jm_isIsDone_0 ), ( "jm_setIsDone_1", jm_setIsDone_1 ), ( "jm_getRemoteMethod_0", jm_getRemoteMethod_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_isOnline", jstatic_isOnline ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_isOnline : JR.M
jstatic_isOnline s =
    JR.static "XmlRpcAbeClient" jclinit "isOnline"
        (JR.bool True)
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "clientInfo", "" ), ( "remoteMethod", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "client" "" JR.this NullXmlRpcHandler.jstatic_NULL_XML_RPC_HANDLER),
                JR.exec (JR.setField "START_SERVER" "" JR.this (JR.str "Start With Server #")),
                JR.exec (JR.setField "TRYING" "" JR.this (JR.str "Trying Server #")),
                JR.exec (JR.setField "SEP" "" JR.this (JR.field "COLON_SEP" (JR.callStatic CommonLabels.jm_getInstance_0 []))),
                JR.exec (JR.setField "CLIENT_INFO" "" JR.this (JR.str "Client Info: \n")),
                JR.exec (JR.setField "RESULT" "" JR.this (JR.concat (JR.field "RESULT_" (JR.callStatic CommonLabels.jm_getInstance_0 [])) (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])))),
                JR.exec (JR.setField "INVALID" "" JR.this (JR.str "License data is Invalid Trying Other Servers")),
                JR.exec (JR.setField "EXCEPTION_IN_CLIENT" "" JR.this (JR.str "Exception in client")),
                JR.exec (JR.setField "SERVER_REPORTED_ERROR" "" JR.this (JR.str "Server reported error")),
                JR.exec (JR.setField "UNKNOWN_ERROR" "" JR.this (JR.str "Unknown License Retrieval Failure")),
                JR.exec (JR.setField "TRYING_OTHER_SERVERS" "" JR.this (JR.str "IOException Trying Other Servers")),
                JR.exec (JR.setField "HOST_NOT_RESOLVED_MSG" "" JR.this (JR.str "Not Trying Again Since Host Unresolved")),
                JR.exec (JR.setField "HOST_NOT_RESOLVED" "" JR.this (JR.str "Host is unresolved")),
                JR.exec (JR.setField "myRandomFactory" "" JR.this (JR.callStatic MyRandomFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "remoteMethod" "" JR.this (JR.local "remoteMethod")), 
                    JR.exec (JR.setField "clientInfo" "" JR.this (JR.local "clientInfo")), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getNumberOfLicenseServers_0" (JR.local "clientInfo") []) (JR.int 1)) (JR.run [ 
                        JR.exec (JR.setField "maxServers" "I" JR.this (JR.map2 JR.sub (JR.invoke "getNumberOfLicenseServers_0" (JR.local "clientInfo") []) (JR.int 2))), 
                        JR.exec (JR.setField "start" "I" JR.this (JR.map2 JR.add (JR.invoke "getAbsoluteNextInt_1" (JR.thisField "myRandomFactory") [ (JR.thisField "maxServers") ]) (JR.int 1))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getNumberOfLicenseServers_0" (JR.local "clientInfo") []) (JR.int 1)) (JR.run [ 
                        JR.exec (JR.setField "maxServers" "I" JR.this (JR.int 0)), 
                        JR.exec (JR.setField "start" "I" JR.this (JR.int 0)) ]) identity ]), 
                    JR.exec (JR.setField "isDone" "Z" JR.this (JR.bool False)), 
                    JR.exec (JR.setField "server" "I" JR.this (JR.thisField "start")), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "START_SERVER") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getServer_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SEP") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getLicenseServer_1" (JR.local "clientInfo") [ (JR.invoke "getServer_0" JR.this []) ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]), 
                    JR.return (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_tryAnother_1 : JR.Method
jm_tryAnother_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getServer_0" JR.this []) (JR.invoke "getMaxServers_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.invoke "setServer_1" JR.this [ (JR.map2 JR.add (JR.invoke "getServer_0" JR.this []) (JR.int 1)) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setServer_1" JR.this [ (JR.int 0) ]) ]), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.invoke "getServer_0" JR.this []) (JR.invoke "getStart_0" JR.this [])) (JR.map JR.not_ (JR.invoke "isIsDone_0" JR.this []))) (JR.run [ 
                        JR.return (JR.invoke "get_1" JR.this [ (JR.local "anyType") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setIsDone_1" JR.this [ (JR.bool True) ]) ]), 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Tried All Servers But Still Failed") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getClientInfo_0 : JR.Method
jm_getClientInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "clientInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_getClient_0 : JR.Method
jm_getClient_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "client") ])
        (jregister jheap)
        jthis
        jargs


jm_setClient_1 : JR.Method
jm_setClient_1 jheap jthis jargs =
    JR.method [ ( "client", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "client" "" JR.this (JR.local "client")) ])
        (jregister jheap)
        jthis
        jargs


jm_getServer_0 : JR.Method
jm_getServer_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "server") ])
        (jregister jheap)
        jthis
        jargs


jm_setServer_1 : JR.Method
jm_setServer_1 jheap jthis jargs =
    JR.method [ ( "server", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "server" "I" JR.this (JR.local "server")) ])
        (jregister jheap)
        jthis
        jargs


jm_getStart_0 : JR.Method
jm_getStart_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "start") ])
        (jregister jheap)
        jthis
        jargs


jm_setStart_1 : JR.Method
jm_setStart_1 jheap jthis jargs =
    JR.method [ ( "start", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "start" "I" JR.this (JR.local "start")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxServers_0 : JR.Method
jm_getMaxServers_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "maxServers") ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxServers_1 : JR.Method
jm_setMaxServers_1 jheap jthis jargs =
    JR.method [ ( "maxServers", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxServers" "I" JR.this (JR.local "maxServers")) ])
        (jregister jheap)
        jthis
        jargs


jm_isIsDone_0 : JR.Method
jm_isIsDone_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "isDone") ])
        (jregister jheap)
        jthis
        jargs


jm_setIsDone_1 : JR.Method
jm_setIsDone_1 jheap jthis jargs =
    JR.method [ ( "isDone", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "isDone" "Z" JR.this (JR.local "isDone")) ])
        (jregister jheap)
        jthis
        jargs


jm_getRemoteMethod_0 : JR.Method
jm_getRemoteMethod_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "remoteMethod") ])
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

