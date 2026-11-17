module OperatingSystemFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os
-}

import JR
import CommonStrings
import JSystem
import LinuxOperatingSystemFactory
import LogConfigTypeFactory
import LogConfigTypes
import LogFactory
import LogUtil
import NoOperatingSystem
import OperatingSystems
import SolarisOperatingSystemFactory
import StringMaker
import StringUtil
import SystemProperties
import WindowsOperatingSystemFactory


jclass : String
jclass =
    "OperatingSystemFactory"


jchain : List String
jchain =
    [ "OperatingSystemFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "genericOperatingSystem", JR.defaultOf "" ), ( "hasDetected", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getOperatingSystemInstance_0", jm_getOperatingSystemInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OperatingSystemFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getOperatingSystemInstance_0", jm_getOperatingSystemInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OperatingSystemFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "genericOperatingSystem" "" JR.this NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM),
                JR.exec (JR.setField "hasDetected" "Z" JR.this (JR.bool False)),
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
                        JR.declare "systemProperties" "" (JR.callStatic SystemProperties.jm_getInstance_0 []), 
                        JR.declare "osName" "" (JR.invoke "getName_0" (JR.local "systemProperties") []), 
                        JR.declare "osArch" "" (JR.invoke "getArch_0" (JR.local "systemProperties") []), 
                        JR.declare "osVersion" "" (JR.invoke "getVersion_0" (JR.local "systemProperties") []), 
                        JR.ifElse (JR.map JR.not_ (JR.thisField "hasDetected")) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "osName: ") (JR.local "osName")), JR.this, (JR.field "GET_INSTANCE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.setField "hasDetected" "Z" JR.this (JR.bool True)), 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.local "osName") [ (JR.field "LINUX" (JR.local "operatingSystems")) ]) (JR.int 0)) (JR.run [ 
                                JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FACTORYERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Found a Linux OS"), JR.this, (JR.field "GET_INSTANCE" (JR.thisField "commonStrings")) ]) ]) identity, 
                                JR.exec (JR.setField "genericOperatingSystem" "" JR.this (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic LinuxOperatingSystemFactory.jm_getInstance_0 []) [])) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.local "osName") [ (JR.field "WINDOWS" (JR.local "operatingSystems")) ]) (JR.int 0)) (JR.run [ 
                                JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FACTORYERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Found a Windows OS"), JR.this, (JR.field "GET_INSTANCE" (JR.thisField "commonStrings")) ]) ]) identity, 
                                JR.exec (JR.setField "genericOperatingSystem" "" JR.this (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic WindowsOperatingSystemFactory.jm_getInstance_0 []) [])) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.local "osName") [ (JR.field "SOLARIS" (JR.local "operatingSystems")) ]) (JR.int 0)) (JR.run [ 
                                JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FACTORYERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Found a Solaris OS"), JR.this, (JR.field "GET_INSTANCE" (JR.thisField "commonStrings")) ]) ]) identity, 
                                JR.exec (JR.setField "genericOperatingSystem" "" JR.this (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic SolarisOperatingSystemFactory.jm_getInstance_0 []) [])) ]) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "OS Not Supported: ") ]) [ (JR.local "osName") ]) []) ]) ]) ]) ]), 
                            JR.declare "log" "" (JR.callStatic LogFactory.jm_getInstanceF_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "OperatingSystem Info: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.thisField "genericOperatingSystem") ]) ]) []), JR.this, (JR.field "GET_INSTANCE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "toString_0" (JR.local "log") []) ]), 
                            JR.exec (JR.invoke "putL_1" (JR.thisField "logUtil") [ (JR.local "log") ]) ]) identity, 
                        JR.return (JR.thisField "genericOperatingSystem") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FACTORYERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) identity, 
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

