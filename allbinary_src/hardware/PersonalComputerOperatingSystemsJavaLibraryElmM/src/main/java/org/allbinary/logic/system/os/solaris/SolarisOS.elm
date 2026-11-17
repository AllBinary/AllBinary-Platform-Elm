module SolarisOS exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os.solaris
-}

import JR
import GenericOperatingSystem


jclass : String
jclass =
    "SolarisOS"


jchain : List String
jchain =
    [ "SolarisOS" ]
        ++ GenericOperatingSystem.jchain


jfields : List ( String, JR.JValue )
jfields =
    GenericOperatingSystem.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isAutoHide_0", jm_isAutoHide_0 ) ]
        GenericOperatingSystem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SolarisOS"
        [ ( "jm_isAutoHide_0", jm_isAutoHide_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect GenericOperatingSystem.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "scalable" "" JR.this (JR.bool True)) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isAutoHide_0 : JR.Method
jm_isAutoHide_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
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

