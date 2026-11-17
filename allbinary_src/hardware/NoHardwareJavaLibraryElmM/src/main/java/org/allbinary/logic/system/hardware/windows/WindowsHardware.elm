module WindowsHardware exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.hardware.windows
-}

import JR
import HardwareInterface
import StdUtil
import StringUtil


jclass : String
jclass =
    "WindowsHardware"


jchain : List String
jchain =
    [ "WindowsHardware" ]
        ++ HardwareInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getMultimedia_1", jm_getMultimedia_1 )
        , ( "getBridge_1", jm_getBridge_1 )
        , ( "getCpu_1", jm_getCpu_1 )
        , ( "getEthernet_1", jm_getEthernet_1 )
        , ( "getFireWire_1", jm_getFireWire_1 )
        , ( "getHardDriveController_1", jm_getHardDriveController_1 )
        , ( "getHardDrive_1", jm_getHardDrive_1 )
        , ( "getMachineAccessControlAddress_1", jm_getMachineAccessControlAddress_1 )
        , ( "getMonitor_1", jm_getMonitor_1 )
        , ( "getUsb_1", jm_getUsb_1 )
        , ( "getVideo_1", jm_getVideo_1 )
        , ( "getComponent_1", jm_getComponent_1 )
        , ( "toString_0", jm_toString_0 )
        , ( "compareTo_1", jm_compareTo_1 )
        , ( "difference_1", jm_difference_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WindowsHardware"
        [ ( "jm_getMultimedia_1", jm_getMultimedia_1 ), ( "jm_getBridge_1", jm_getBridge_1 ), ( "jm_getCpu_1", jm_getCpu_1 ), ( "jm_getEthernet_1", jm_getEthernet_1 ), ( "jm_getFireWire_1", jm_getFireWire_1 ), ( "jm_getHardDriveController_1", jm_getHardDriveController_1 ), ( "jm_getHardDrive_1", jm_getHardDrive_1 ), ( "jm_getMachineAccessControlAddress_1", jm_getMachineAccessControlAddress_1 ), ( "jm_getMonitor_1", jm_getMonitor_1 ), ( "jm_getUsb_1", jm_getUsb_1 ), ( "jm_getVideo_1", jm_getVideo_1 ), ( "jm_getComponent_1", jm_getComponent_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_compareTo_1", jm_compareTo_1 ), ( "jm_difference_1", jm_difference_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getMultimedia_1 : JR.Method
jm_getMultimedia_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getBridge_1 : JR.Method
jm_getBridge_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getCpu_1 : JR.Method
jm_getCpu_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getEthernet_1 : JR.Method
jm_getEthernet_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getFireWire_1 : JR.Method
jm_getFireWire_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHardDriveController_1 : JR.Method
jm_getHardDriveController_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHardDrive_1 : JR.Method
jm_getHardDrive_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getMachineAccessControlAddress_1 : JR.Method
jm_getMachineAccessControlAddress_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getMonitor_1 : JR.Method
jm_getMonitor_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getUsb_1 : JR.Method
jm_getUsb_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getVideo_1 : JR.Method
jm_getVideo_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getComponent_1 : JR.Method
jm_getComponent_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_compareTo_1 : JR.Method
jm_compareTo_1 jheap jthis jargs =
    JR.method [ ( "hardwareInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_difference_1 : JR.Method
jm_difference_1 jheap jthis jargs =
    JR.method [ ( "hardwareInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_TABLE" (JR.callStatic StdUtil.jm_getInstance_0 [])) ])
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

