module NoHardware exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.hardware
-}

import JR
import HardwareInterface
import NoHardwareComponent
import StdUtil


jclass : String
jclass =
    "NoHardware"


jchain : List String
jchain =
    [ "NoHardware" ]
        ++ HardwareInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getComponent_1", jm_getComponent_1 )
        , ( "toString_0", jm_toString_0 )
        , ( "compareTo_1", jm_compareTo_1 )
        , ( "difference_1", jm_difference_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoHardware"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getComponent_1", jm_getComponent_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_compareTo_1", jm_compareTo_1 ), ( "jm_difference_1", jm_difference_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoHardware" jclinit "instance"
        (JR.new jnew_0 [])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getComponent_1 : JR.Method
jm_getComponent_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic NoHardwareComponent.jm_getInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.str "No Hardware") ])
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

