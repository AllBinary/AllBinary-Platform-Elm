module Org.Allbinary.Logic.System.Hardware.Components.ComponentFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.hardware.components
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.System.Hardware.Components.Component as Component


jclass : String
jclass =
    "ComponentFactory"


jchain : List String
jchain =
    [ "ComponentFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "VGA", JR.defaultOf "" ), ( "IDE", JR.defaultOf "" ), ( "SCSI", JR.defaultOf "" ), ( "BRIDGE", JR.defaultOf "" ), ( "ETHERNET", JR.defaultOf "" ), ( "USB", JR.defaultOf "" ), ( "MULTIMEDIA", JR.defaultOf "" ), ( "PCI", JR.defaultOf "" ), ( "RAID", JR.defaultOf "" ), ( "SMBUS", JR.defaultOf "" ), ( "PIC", JR.defaultOf "" ), ( "Class", JR.defaultOf "" ), ( "UNKNOWN", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ComponentFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ComponentFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "VGA" "" JR.this (JR.new Component.jnew_1 [ (JR.str "VGA") ])),
                JR.exec (JR.setField "IDE" "" JR.this (JR.new Component.jnew_1 [ (JR.str "IDE") ])),
                JR.exec (JR.setField "SCSI" "" JR.this (JR.new Component.jnew_1 [ (JR.str "SCSI") ])),
                JR.exec (JR.setField "BRIDGE" "" JR.this (JR.new Component.jnew_1 [ (JR.str "bridge") ])),
                JR.exec (JR.setField "ETHERNET" "" JR.this (JR.new Component.jnew_1 [ (JR.str "Ethernet") ])),
                JR.exec (JR.setField "USB" "" JR.this (JR.new Component.jnew_1 [ (JR.str "USB") ])),
                JR.exec (JR.setField "MULTIMEDIA" "" JR.this (JR.new Component.jnew_1 [ (JR.str "Multimedia") ])),
                JR.exec (JR.setField "PCI" "" JR.this (JR.new Component.jnew_1 [ (JR.str "PCI") ])),
                JR.exec (JR.setField "RAID" "" JR.this (JR.new Component.jnew_1 [ (JR.str "RAID") ])),
                JR.exec (JR.setField "SMBUS" "" JR.this (JR.new Component.jnew_1 [ (JR.str "SMBus") ])),
                JR.exec (JR.setField "PIC" "" JR.this (JR.new Component.jnew_1 [ (JR.str "PIC") ])),
                JR.exec (JR.setField "Class" "" JR.this (JR.new Component.jnew_1 [ (JR.str "Class") ])),
                JR.exec (JR.setField "UNKNOWN" "" JR.this (JR.new Component.jnew_1 [ (JR.field "UNKNOWN" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ])),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

