module Org.Allbinary.Business.Init.LicenseInitInfoUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Business.Init.LicenseInitInfo as LicenseInitInfo


jclass : String
jclass =
    "LicenseInitInfoUtil"


jchain : List String
jchain =
    [ "LicenseInitInfoUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INITFILENAME", JR.defaultOf "" ), ( "ABOUT", JR.defaultOf "" ), ( "PRIVACY_POLICY", JR.defaultOf "" ), ( "OFFICIAL_ALLBINARY_SERVICES_SERVER", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setFilePath_1", jm_setFilePath_1 )
        , ( "write_1", jm_write_1 )
        , ( "read_0", jm_read_0 )
        , ( "readAgain_1", jm_readAgain_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseInitInfoUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setFilePath_1", jm_setFilePath_1 ), ( "jm_write_1", jm_write_1 ), ( "jm_read_0", jm_read_0 ), ( "jm_readAgain_1", jm_readAgain_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LicenseInitInfoUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "INITFILENAME" "" JR.this (JR.str "licenseinitdata.dat")),
                JR.exec (JR.setField "ABOUT" "" JR.this (JR.str "about")),
                JR.exec (JR.setField "PRIVACY_POLICY" "" JR.this (JR.str "privacy_policy")),
                JR.exec (JR.setField "OFFICIAL_ALLBINARY_SERVICES_SERVER" "" JR.this (JR.str "https://services.allbinary.com/LicServ/serverssl.php")),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_setFilePath_1 : JR.Method
jm_setFilePath_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_write_1 : JR.Method
jm_write_1 jheap jthis jargs =
    JR.method [ ( "initData", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_read_0 : JR.Method
jm_read_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "readAgain_1" JR.this [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_readAgain_1 : JR.Method
jm_readAgain_1 jheap jthis jargs =
    JR.method [ ( "initializeCounter", "I" ) ] ""
        (JR.run [ 
                    JR.declare "licenseInitInfo" "" (JR.new LicenseInitInfo.jnew_0 []), 
                    JR.exec (JR.invoke "clearServers_0" (JR.local "licenseInitInfo") []), 
                    JR.exec (JR.invoke "addServer_1" (JR.local "licenseInitInfo") [ (JR.thisField "OFFICIAL_ALLBINARY_SERVICES_SERVER") ]), 
                    JR.return (JR.local "licenseInitInfo") ])
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

