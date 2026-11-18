module Org.Allbinary.Logic.System.Security.Licensing.Client.AbeLicenseClient exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing.client
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Business.Init.LicenseInitInfoUtil as LicenseInitInfoUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil
import Org.Allbinary.Logic.System.Security.Licensing.Client.XmlRpcAbeLicenseRetrievalClient as XmlRpcAbeLicenseRetrievalClient


jclass : String
jclass =
    "AbeLicenseClient"


jchain : List String
jchain =
    [ "AbeLicenseClient" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "MINSERVERS", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "get_1", jm_get_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeLicenseClient"
        [ ( "jm_get_1", jm_get_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "MINSERVERS" "I" JR.this (JR.int 3)),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.declare "xmlRpcAbeLicenseClient" "" (JR.new XmlRpcAbeLicenseRetrievalClient.jnew_1 [ (JR.local "abeClientInformation") ]), 
                        JR.declare "abeLicenseInterface" "" (JR.invoke "get_1" (JR.local "xmlRpcAbeLicenseClient") [ JR.null ]), 
                        JR.declare "licenseId" "" (JR.invoke "getLicenseId_0" (JR.local "abeLicenseInterface") []), 
                        JR.declare "servers" "" (JR.invoke "getServers_0" (JR.local "abeLicenseInterface") []), 
                        JR.declare "isNewLicenseId" "Z" (JR.bool False), 
                        JR.declare "isBetterServerList" "Z" (JR.bool False), 
                        JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                        JR.ifElse (JR.and (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.invoke "getLicenseId_0" (JR.local "abeClientInformation") []) ]) (JR.map JR.not_ (JR.invoke "isSameId_1" (JR.local "abeClientInformation") [ (JR.local "licenseId") ]))) (JR.run [ 
                            JR.exec (JR.setLocal "isNewLicenseId" "Z" (JR.bool True)) ]) identity, 
                        JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.invoke "size_0" (JR.local "servers") []) (JR.thisField "MINSERVERS")) (JR.invoke "isLargerOrDifferentServerList_1" (JR.local "abeClientInformation") [ (JR.local "servers") ])) (JR.run [ 
                            JR.exec (JR.setLocal "isBetterServerList" "Z" (JR.bool True)) ]) identity, 
                        JR.ifElse (JR.or (JR.local "isBetterServerList") (JR.local "isNewLicenseId")) (JR.run [ 
                            JR.declare "initInfo" "" (JR.invoke "read_0" (JR.callStatic LicenseInitInfoUtil.jm_getInstance_0 []) []), 
                            JR.exec (JR.invoke "setLicenseId_1" (JR.local "initInfo") [ (JR.local "licenseId") ]), 
                            JR.exec (JR.invoke "setServerList_1" (JR.local "initInfo") [ (JR.local "servers") ]), 
                            JR.exec (JR.invoke "write_1" (JR.callStatic LicenseInitInfoUtil.jm_getInstance_0 []) [ (JR.local "initInfo") ]), 
                            JR.exec (JR.invoke "init_0" (JR.local "abeClientInformation") []) ]) identity, 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END" (JR.thisField "commonStrings")), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.return (JR.local "abeLicenseInterface") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
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

