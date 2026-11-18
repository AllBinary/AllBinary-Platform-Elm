module Org.Allbinary.Logic.System.Security.Licensing.AbeNoLicense exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeLicenseInterface as AbeLicenseInterface
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.System.Security.Licensing.LicenseTypeFactory as LicenseTypeFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "AbeNoLicense"


jchain : List String
jchain =
    [ "AbeNoLicense" ]
        ++ AbeLicenseInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "serverVector", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "hasKey_0", jm_hasKey_0 )
        , ( "getKey_1", jm_getKey_1 )
        , ( "getLicenseId_0", jm_getLicenseId_0 )
        , ( "getSpecial_0", jm_getSpecial_0 )
        , ( "getServers_0", jm_getServers_0 )
        , ( "isValid_0", jm_isValid_0 )
        , ( "getLicenseType_0", jm_getLicenseType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeNoLicense"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_hasKey_0", jm_hasKey_0 ), ( "jm_getKey_1", jm_getKey_1 ), ( "jm_getLicenseId_0", jm_getLicenseId_0 ), ( "jm_getSpecial_0", jm_getSpecial_0 ), ( "jm_getServers_0", jm_getServers_0 ), ( "jm_isValid_0", jm_isValid_0 ), ( "jm_getLicenseType_0", jm_getLicenseType_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_abeNoLicense", jstatic_abeNoLicense ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_abeNoLicense : JR.M
jstatic_abeNoLicense s =
    JR.static "AbeNoLicense" jclinit "abeNoLicense"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "serverVector" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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
                    JR.return jstatic_abeNoLicense ])
        (jregister jheap)
        jthis
        jargs


jm_hasKey_0 : JR.Method
jm_hasKey_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getKey_1 : JR.Method
jm_getKey_1 jheap jthis jargs =
    JR.method [ ( "keyName", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseId_0 : JR.Method
jm_getLicenseId_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getSpecial_0 : JR.Method
jm_getSpecial_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getServers_0 : JR.Method
jm_getServers_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "serverVector") ])
        (jregister jheap)
        jthis
        jargs


jm_isValid_0 : JR.Method
jm_isValid_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseType_0 : JR.Method
jm_getLicenseType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "UNKNOWN" (JR.callStatic LicenseTypeFactory.jm_getInstance_0 [])) ])
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

