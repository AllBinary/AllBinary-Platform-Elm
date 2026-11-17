module OperatingSystemFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os
-}

import JR
import CommonStrings
import JSystem
import LogUtil
import NoOperatingSystem
import StringMaker


jclass : String
jclass =
    "OperatingSystemFactory"


jchain : List String
jchain =
    [ "OperatingSystemFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "genericOperatingSystem", JR.defaultOf "" ) ]


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
                JR.exec (JR.setField "genericOperatingSystem" "" JR.this NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM),
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
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.declare "osString" "" (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "OperatingSystem Info: ") ]) [ (JR.invoke "toString_0" (JR.thisField "genericOperatingSystem") []) ]) []), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.local "osString") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.local "osString"), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.return (JR.thisField "genericOperatingSystem") ])
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

