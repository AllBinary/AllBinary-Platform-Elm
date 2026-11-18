module Org.Allbinary.Logic.System.Security.Licensing.AbeLicenseInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeClientInformationData as AbeClientInformationData
import Org.Allbinary.Logic.System.Security.Licensing.Client.AbeLicenseClient as AbeLicenseClient
import Org.Allbinary.Logic.System.Security.Licensing.AbeNoLicense as AbeNoLicense
import Org.Allbinary.String.CommonStrings as CommonStrings
import JCalendar
import Org.Allbinary.Logic.System.Security.Licensing.LicensingException as LicensingException
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "AbeLicenseInterfaceFactory"


jchain : List String
jchain =
    [ "AbeLicenseInterfaceFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "time", JR.defaultOf "J" ), ( "check", JR.defaultOf "Z" ), ( "checkPeriod", JR.defaultOf "I" ), ( "abeLicenseInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getLicenseInstance_1", jm_getLicenseInstance_1 )
        , ( "get_1", jm_get_1 )
        , ( "isTimeToGetKey_0", jm_isTimeToGetKey_0 )
        , ( "setCheck_1", jm_setCheck_1 )
        , ( "isCheck_0", jm_isCheck_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeLicenseInterfaceFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getLicenseInstance_1", jm_getLicenseInstance_1 ), ( "jm_get_1", jm_get_1 ), ( "jm_isTimeToGetKey_0", jm_isTimeToGetKey_0 ), ( "jm_setCheck_1", jm_setCheck_1 ), ( "jm_isCheck_0", jm_isCheck_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "AbeLicenseInterfaceFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "time" "J" JR.this (JR.long 0)),
                JR.exec (JR.setField "check" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "checkPeriod" "I" JR.this (JR.int 36000000)),
                JR.exec (JR.setField "abeLicenseInterface" "" JR.this JR.null),
                identity,
                identity ])
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseInstance_1 : JR.Method
jm_getLicenseInstance_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTimeToGetKey_0" JR.this []) (JR.run [ 
                        JR.return (JR.invoke "get_1" JR.this [ (JR.local "abeClientInformation") ]) ]) (JR.run [ 
                        JR.return (JR.thisField "abeLicenseInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Getting Keys"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.setField "abeLicenseInterface" "" JR.this (JR.callStatic AbeNoLicense.jm_getInstance_0 [])), 
                        JR.declare "licenseClient" "" (JR.new AbeLicenseClient.jnew_0 []), 
                        JR.exec (JR.setField "abeLicenseInterface" "" JR.this (JR.invoke "get_1" (JR.local "licenseClient") [ (JR.local "abeClientInformation") ])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.thisField "abeLicenseInterface") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Default Key: ") (JR.invoke "getKey_1" (JR.thisField "abeLicenseInterface") [ (JR.field "KEY" (JR.callStatic AbeClientInformationData.jm_getInstance_0 [])) ])), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]) ]) identity, 
                        JR.return (JR.thisField "abeLicenseInterface") ]) [ ( [ "IOException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Licensing IO Error"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.throw (JR.new LicensingException.jnew_1 [ (JR.str "License Server Connection Error") ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Licensing Failure"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.throw (JR.new LicensingException.jnew_1 [ (JR.concat (JR.str "Unknown License Failure: ") (JR.invoke "getName_0" (JR.getClass JR.this) [])) ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_isTimeToGetKey_0 : JR.Method
jm_isTimeToGetKey_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "calendar" "" (JR.callStatic JCalendar.jm_getInstance_0 []), 
                    JR.declare "currentTime" "J" (JR.invoke "getTimeInMillis_0" (JR.local "calendar") []), 
                    JR.ifElse (JR.or (JR.or (JR.or (JR.or (JR.map2 JR.equals (JR.thisField "abeLicenseInterface") JR.null) (JR.map2 JR.equals (JR.thisField "abeLicenseInterface") (JR.callStatic AbeNoLicense.jm_getInstance_0 []))) (JR.map JR.not_ (JR.invoke "hasKey_0" (JR.thisField "abeLicenseInterface") []))) (JR.invoke "isCheck_0" JR.this [])) (JR.map2 JR.greater (JR.map2 JR.sub (JR.local "currentTime") (JR.cast "J" (JR.thisField "checkPeriod"))) (JR.thisField "time"))) (JR.run [ 
                        JR.exec (JR.setField "abeLicenseInterface" "" JR.this JR.null), 
                        JR.exec (JR.setField "time" "J" JR.this (JR.local "currentTime")), 
                        JR.return (JR.bool True) ]) (JR.run [ 
                    JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setCheck_1 : JR.Method
jm_setCheck_1 jheap jthis jargs =
    JR.method [ ( "check", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "check" "Z" JR.this (JR.local "check")) ])
        (jregister jheap)
        jthis
        jargs


jm_isCheck_0 : JR.Method
jm_isCheck_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "check") ])
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

