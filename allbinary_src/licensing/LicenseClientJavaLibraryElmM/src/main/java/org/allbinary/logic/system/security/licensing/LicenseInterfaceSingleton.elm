module Org.Allbinary.Logic.System.Security.Licensing.LicenseInterfaceSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeNoLicense as AbeNoLicense


jclass : String
jclass =
    "LicenseInterfaceSingleton"


jchain : List String
jchain =
    [ "LicenseInterfaceSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_1", jm_init_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseInterfaceSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_1", jm_init_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_licenseInterface", jstatic_licenseInterface ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_licenseInterface : JR.M
jstatic_licenseInterface s =
    JR.static "LicenseInterfaceSingleton" jclinit "licenseInterface"
        (JR.callStatic AbeNoLicense.jm_getInstance_0 [])
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_licenseInterface ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "licenseInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "licenseInterface") JR.null) (JR.run [ 
                        JR.exec (JR.setStatic "LicenseInterfaceSingleton.licenseInterface" "" (JR.local "licenseInterface")) ]) identity ])
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

