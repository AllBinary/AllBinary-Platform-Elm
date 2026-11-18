module Org.Allbinary.Logic.System.Security.Licensing.ClientInformation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeClientInformationData as AbeClientInformationData
import Org.Allbinary.Logic.System.Security.Licensing.AbeClientInformationInterface as AbeClientInformationInterface
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.System.Os.NoOperatingSystem as NoOperatingSystem
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.System.Hardware.SystemHardwareFactory as SystemHardwareFactory
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "ClientInformation"


jchain : List String
jchain =
    [ "ClientInformation" ]
        ++ AbeClientInformationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "operatingSystemInterface", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "name", JR.defaultOf "" ), ( "shortName", JR.defaultOf "" ), ( "version", JR.defaultOf "" ), ( "specialName", JR.defaultOf "" ), ( "hardSale", JR.defaultOf "Z" ), ( "licenseId", JR.defaultOf "" ), ( "licenseServers", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getOperatingSystemInterface_0", jm_getOperatingSystemInterface_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getSpecialName_0", jm_getSpecialName_0 )
        , ( "getVersion_0", jm_getVersion_0 )
        , ( "getLicenseId_0", jm_getLicenseId_0 )
        , ( "getLicenseServers_0", jm_getLicenseServers_0 )
        , ( "getLicenseServer_1", jm_getLicenseServer_1 )
        , ( "getNumberOfLicenseServers_0", jm_getNumberOfLicenseServers_0 )
        , ( "toHashtable_0", jm_toHashtable_0 )
        , ( "isSameId_1", jm_isSameId_1 )
        , ( "isLargerOrDifferentServerList_1", jm_isLargerOrDifferentServerList_1 )
        , ( "setHardSale_1", jm_setHardSale_1 )
        , ( "isHardSale_0", jm_isHardSale_0 )
        , ( "setOperatingSystemInterface_1", jm_setOperatingSystemInterface_1 )
        , ( "setLicenseId_1", jm_setLicenseId_1 )
        , ( "setLicenseServers_1", jm_setLicenseServers_1 )
        , ( "toShortString_0", jm_toShortString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ClientInformation"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getOperatingSystemInterface_0", jm_getOperatingSystemInterface_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getSpecialName_0", jm_getSpecialName_0 ), ( "jm_getVersion_0", jm_getVersion_0 ), ( "jm_getLicenseId_0", jm_getLicenseId_0 ), ( "jm_getLicenseServers_0", jm_getLicenseServers_0 ), ( "jm_getLicenseServer_1", jm_getLicenseServer_1 ), ( "jm_getNumberOfLicenseServers_0", jm_getNumberOfLicenseServers_0 ), ( "jm_toHashtable_0", jm_toHashtable_0 ), ( "jm_isSameId_1", jm_isSameId_1 ), ( "jm_isLargerOrDifferentServerList_1", jm_isLargerOrDifferentServerList_1 ), ( "jm_setHardSale_1", jm_setHardSale_1 ), ( "jm_isHardSale_0", jm_isHardSale_0 ), ( "jm_setOperatingSystemInterface_1", jm_setOperatingSystemInterface_1 ), ( "jm_setLicenseId_1", jm_setLicenseId_1 ), ( "jm_setLicenseServers_1", jm_setLicenseServers_1 ), ( "jm_toShortString_0", jm_toShortString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "version", "" ), ( "specialName", "" ), ( "shortName", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "operatingSystemInterface" "" JR.this NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "hardSale" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "licenseId" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "licenseServers" "" JR.this (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "version" "" JR.this (JR.local "version")), 
                    JR.exec (JR.setField "specialName" "" JR.this (JR.local "specialName")), 
                    JR.exec (JR.setField "shortName" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "shortName") ]) [ (JR.field "UNDERSCORE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.local "version") ]) [])), 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getOperatingSystemInterface_0 : JR.Method
jm_getOperatingSystemInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "operatingSystemInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getSpecialName_0 : JR.Method
jm_getSpecialName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "specialName") ])
        (jregister jheap)
        jthis
        jargs


jm_getVersion_0 : JR.Method
jm_getVersion_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "version") ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseId_0 : JR.Method
jm_getLicenseId_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "licenseId") ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseServers_0 : JR.Method
jm_getLicenseServers_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "licenseServers") ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseServer_1 : JR.Method
jm_getLicenseServer_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.field "objectArray" (JR.thisField "licenseServers")) (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_getNumberOfLicenseServers_0 : JR.Method
jm_getNumberOfLicenseServers_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.thisField "licenseServers") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toHashtable_0 : JR.Method
jm_toHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "abeClientInformationData" "" (JR.callStatic AbeClientInformationData.jm_getInstance_0 []), 
                    JR.declare "genericOperatingSystem" "" (JR.invoke "getOperatingSystemInterface_0" JR.this []), 
                    JR.declare "clientInfoHashtable" "" (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "NAME" (JR.local "abeClientInformationData")), (JR.thisField "name") ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "VERSION" (JR.local "abeClientInformationData")), (JR.thisField "version") ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "SPECIALNAME" (JR.local "abeClientInformationData")), (JR.thisField "specialName") ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "LICENSEID" (JR.local "abeClientInformationData")), (JR.invoke "getLicenseId_0" JR.this []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "OSNAME" (JR.local "abeClientInformationData")), (JR.invoke "getName_0" (JR.local "genericOperatingSystem") []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "OSARCH" (JR.local "abeClientInformationData")), (JR.invoke "getArch_0" (JR.local "genericOperatingSystem") []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "OSVERSION" (JR.local "abeClientInformationData")), (JR.invoke "getVersion_0" (JR.local "genericOperatingSystem") []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "OS" (JR.local "abeClientInformationData")), (JR.invoke "toString_0" (JR.local "genericOperatingSystem") []) ]), 
                    JR.declare "hardwareInterface" "" (JR.invoke "getInstance_1" (JR.callStatic SystemHardwareFactory.jm_getInstance_0 []) [ (JR.local "genericOperatingSystem") ]), 
                    JR.declare "hardwareString" "" (JR.invoke "toString_0" (JR.local "hardwareInterface") []), 
                    JR.exec (JR.invoke "put_2" (JR.local "clientInfoHashtable") [ (JR.field "HARDWARE" (JR.local "abeClientInformationData")), (JR.local "hardwareString") ]), 
                    JR.return (JR.local "clientInfoHashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_isSameId_1 : JR.Method
jm_isSameId_1 jheap jthis jargs =
    JR.method [ ( "alicenseId", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.invoke "getLicenseId_0" JR.this []), (JR.local "alicenseId") ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isLargerOrDifferentServerList_1 : JR.Method
jm_isLargerOrDifferentServerList_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "size" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "list") []) (JR.int 1)), 
                    JR.declare "currentSize" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "licenseServers") []) (JR.int 1)), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "size") (JR.local "currentSize")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.run [ JR.declare "index" "I" (JR.local "size"), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70650 -> (JR.setLocal "index" "I" (JR.lit jwN70650))) JR.decrement) ]) (JR.run [ 
                        JR.declare "newServerName" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.run [ JR.declare "index2" "I" (JR.local "currentSize"), JR.for (JR.map2 JR.greaterEquals (JR.local "index2") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN70584 -> (JR.setLocal "index2" "I" (JR.lit jwN70584))) JR.decrement) ]) (JR.run [ 
                            JR.declare "nextOldServerName" "" (JR.aget (JR.field "objectArray" (JR.thisField "licenseServers")) (JR.local "index")), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.local "newServerName"), (JR.local "nextOldServerName") ]) (JR.int 0)) (JR.run [ 
                                JR.return (JR.bool True) ]) identity ]) ] ]) ], 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setHardSale_1 : JR.Method
jm_setHardSale_1 jheap jthis jargs =
    JR.method [ ( "hardSale", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "hardSale" "Z" JR.this (JR.local "hardSale")) ])
        (jregister jheap)
        jthis
        jargs


jm_isHardSale_0 : JR.Method
jm_isHardSale_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "hardSale") ])
        (jregister jheap)
        jthis
        jargs


jm_setOperatingSystemInterface_1 : JR.Method
jm_setOperatingSystemInterface_1 jheap jthis jargs =
    JR.method [ ( "operatingSystemInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "operatingSystemInterface" "" JR.this (JR.local "operatingSystemInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_setLicenseId_1 : JR.Method
jm_setLicenseId_1 jheap jthis jargs =
    JR.method [ ( "licenseId", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "licenseId" "" JR.this (JR.local "licenseId")) ])
        (jregister jheap)
        jthis
        jargs


jm_setLicenseServers_1 : JR.Method
jm_setLicenseServers_1 jheap jthis jargs =
    JR.method [ ( "licenseServers", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "licenseServers" "" JR.this (JR.local "licenseServers")) ])
        (jregister jheap)
        jthis
        jargs


jm_toShortString_0 : JR.Method
jm_toShortString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "shortName") ])
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

