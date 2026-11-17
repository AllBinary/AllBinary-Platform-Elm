module SolarisOperatingSystemFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os.solaris
-}

import JR
import CommonStrings
import LogConfigTypeFactory
import LogConfigTypes
import LogUtil
import NoOperatingSystem
import OperatingSystems
import SolarisOS
import SystemProperties


jclass : String
jclass =
    "SolarisOperatingSystemFactory"


jchain : List String
jchain =
    [ "SolarisOperatingSystemFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getOperatingSystemInstance_0", jm_getOperatingSystemInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SolarisOperatingSystemFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getOperatingSystemInstance_0", jm_getOperatingSystemInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SolarisOperatingSystemFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
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


jm_getOperatingSystemInstance_0 : JR.Method
jm_getOperatingSystemInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "operatingSystems" "" (JR.callStatic OperatingSystems.jm_getInstance_0 []), 
                        JR.declare "osName" "" (JR.invoke "getName_0" (JR.callStatic SystemProperties.jm_getInstance_0 []) []), 
                        JR.declare "operatingSystemInterface" "" (JR.lit (JR.defaultOf "")), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "osName") [ (JR.field "SOLARIS" (JR.local "operatingSystems")) ]) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "operatingSystemInterface" "" (JR.new SolarisOS.jnew_0 [])) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "isUnknownSpecificOSAllowed_0" (JR.local "operatingSystems") []) (JR.run [ 
                                JR.exec (JR.setLocal "operatingSystemInterface" "" (JR.new SolarisOS.jnew_0 [])) ]) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "Specific Solaris OS Not Supported: ") (JR.local "osName")) ]) ]) ]), 
                        JR.return (JR.local "operatingSystemInterface") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FACTORYERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]) ]) identity, 
                        JR.return NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM ]) ) ] identity ])
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

