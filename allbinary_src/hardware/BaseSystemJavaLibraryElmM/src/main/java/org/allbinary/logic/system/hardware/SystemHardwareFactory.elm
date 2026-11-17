module SystemHardwareFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.hardware
-}

import JR
import CommonStrings
import HardwareFactory
import LogUtil
import NoHardware
import StringMaker
import StringUtil


jclass : String
jclass =
    "SystemHardwareFactory"


jchain : List String
jchain =
    [ "SystemHardwareFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "hardwareInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "static_toString_0", jm_static_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SystemHardwareFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_static_toString_0", jm_static_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SystemHardwareFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "hardwareInterface" "" JR.this (JR.callStatic NoHardware.jm_getInstance_0 [])),
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


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "operatingSystemInterface", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "hardwareInterface") (JR.callStatic NoHardware.jm_getInstance_0 [])) (JR.run [ 
                            JR.exec (JR.setField "hardwareInterface" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic HardwareFactory.jm_getInstance_0 []) [ (JR.local "operatingSystemInterface") ])) ]) identity, 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Found Hardware"), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.return (JR.thisField "hardwareInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_static_toString_0 : JR.Method
jm_static_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "systemHardwareFactory" "" (JR.callStatic jm_getInstance_0 []), 
                    JR.declare "osBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.str "Hardware Info: \n") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.field "hardwareInterface" (JR.local "systemHardwareFactory")) JR.null) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.invoke "toString_0" (JR.field "hardwareInterface" (JR.local "systemHardwareFactory")) []) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "osBuffer") []) ])
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

