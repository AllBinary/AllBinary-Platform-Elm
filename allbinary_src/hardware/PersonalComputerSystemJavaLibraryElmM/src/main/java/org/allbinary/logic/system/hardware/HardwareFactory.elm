module Org.Allbinary.Logic.System.Hardware.HardwareFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.hardware
-}

import JR
import Org.Allbinary.Logic.System.Hardware.Linux.LinuxHardware as LinuxHardware
import Org.Allbinary.Logic.System.Os.OperatingSystems as OperatingSystems
import Org.Allbinary.Logic.System.Hardware.Windows.WindowsHardware as WindowsHardware


jclass : String
jclass =
    "HardwareFactory"


jchain : List String
jchain =
    [ "HardwareFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HardwareFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HardwareFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


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
    JR.method [ ( "os", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "operatingSystems" "" (JR.callStatic OperatingSystems.jm_getInstance_0 []), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getName_0" (JR.local "os") []) [ (JR.field "LINUX" (JR.local "operatingSystems")) ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.new LinuxHardware.jnew_0 []) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.invoke "getName_0" (JR.local "os") []) [ (JR.field "WINDOWS" (JR.local "operatingSystems")) ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.new WindowsHardware.jnew_0 []) ]) identity ]), 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "No Hardware Imp for: ") (JR.invoke "getName_0" (JR.local "os") [])) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
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

