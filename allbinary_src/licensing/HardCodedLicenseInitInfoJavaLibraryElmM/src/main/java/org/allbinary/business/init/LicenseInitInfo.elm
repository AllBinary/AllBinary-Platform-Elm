module Org.Allbinary.Business.Init.LicenseInitInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Debug.DebugFactory as DebugFactory
import Org.Allbinary.Debug.NoDebug as NoDebug
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "LicenseInitInfo"


jchain : List String
jchain =
    [ "LicenseInitInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "id", JR.defaultOf "" ), ( "serverList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getLicenseId_0", jm_getLicenseId_0 )
        , ( "getServer_1", jm_getServer_1 )
        , ( "getNumberOfServers_0", jm_getNumberOfServers_0 )
        , ( "setLicenseId_1", jm_setLicenseId_1 )
        , ( "clearServers_0", jm_clearServers_0 )
        , ( "setServer_2", jm_setServer_2 )
        , ( "addServer_1", jm_addServer_1 )
        , ( "getServerList_0", jm_getServerList_0 )
        , ( "setServerList_1", jm_setServerList_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseInitInfo"
        [ ( "jm_getLicenseId_0", jm_getLicenseId_0 ), ( "jm_getServer_1", jm_getServer_1 ), ( "jm_getNumberOfServers_0", jm_getNumberOfServers_0 ), ( "jm_setLicenseId_1", jm_setLicenseId_1 ), ( "jm_clearServers_0", jm_clearServers_0 ), ( "jm_setServer_2", jm_setServer_2 ), ( "jm_addServer_1", jm_addServer_1 ), ( "jm_getServerList_0", jm_getServerList_0 ), ( "jm_setServerList_1", jm_setServerList_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "id" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "serverList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getLicenseId_0 : JR.Method
jm_getLicenseId_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
        (jregister jheap)
        jthis
        jargs


jm_getServer_1 : JR.Method
jm_getServer_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "get_1" (JR.thisField "serverList") [ (JR.local "index") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getNumberOfServers_0 : JR.Method
jm_getNumberOfServers_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.thisField "serverList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setLicenseId_1 : JR.Method
jm_setLicenseId_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "id" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_clearServers_0 : JR.Method
jm_clearServers_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "serverList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setServer_2 : JR.Method
jm_setServer_2 jheap jthis jargs =
    JR.method [ ( "value", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addAt_2" (JR.thisField "serverList") [ (JR.local "index"), (JR.local "value") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addServer_1 : JR.Method
jm_addServer_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "serverList") [ (JR.local "value") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getServerList_0 : JR.Method
jm_getServerList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "serverList") ])
        (jregister jheap)
        jthis
        jargs


jm_setServerList_1 : JR.Method
jm_setServerList_1 jheap jthis jargs =
    JR.method [ ( "servers", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.callStatic DebugFactory.jm_getInstance_0 []) (JR.callStatic NoDebug.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.setField "serverList" "" JR.this (JR.local "servers")) ]) identity ])
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

