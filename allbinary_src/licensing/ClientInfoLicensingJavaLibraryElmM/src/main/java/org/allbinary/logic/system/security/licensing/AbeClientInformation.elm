module Org.Allbinary.Logic.System.Security.Licensing.AbeClientInformation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.ClientInformation as ClientInformation
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Business.Init.LicenseInitInfoUtil as LicenseInitInfoUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil


jclass : String
jclass =
    "AbeClientInformation"


jchain : List String
jchain =
    [ "AbeClientInformation" ]
        ++ ClientInformation.jchain


jfields : List ( String, JR.JValue )
jfields =
    ClientInformation.jfields ++ [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 ) ]
        ClientInformation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeClientInformation"
        [ ( "jm_init_0", jm_init_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "version", "" ), ( "specialName", "" ), ( "shortName", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ClientInformation.jinit_4 JR.this [ (JR.local "name"), (JR.local "version"), (JR.local "specialName"), (JR.local "shortName") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "setOperatingSystemInterface_1" JR.this [ (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []) ]), 
                        JR.declare "licenseInitInfo" "" (JR.invoke "read_0" (JR.callStatic LicenseInitInfoUtil.jm_getInstance_0 []) []), 
                        JR.exec (JR.invoke "setLicenseId_1" JR.this [ (JR.invoke "getLicenseId_0" (JR.local "licenseInitInfo") []) ]), 
                        JR.exec (JR.invoke "setLicenseServers_1" JR.this [ (JR.invoke "getServerList_0" (JR.local "licenseInitInfo") []) ]), 
                        JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                        JR.ifElse (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.invoke "getLicenseId_0" JR.this []) ]) (JR.run [ 
                            JR.declare "NONE" "" (JR.str "No License Id"), 
                            JR.exec (JR.invoke "setLicenseId_1" JR.this [ (JR.local "NONE") ]) ]) identity, 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Special Name: ") ]) [ (JR.invoke "getSpecialName_0" JR.this []) ]) []), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

