module Org.Allbinary.Logic.System.Security.Licensing.Registration.RegistrationConfiguration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing.registration
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "RegistrationConfiguration"


jchain : List String
jchain =
    [ "RegistrationConfiguration" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "registrationCode", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "read_0", jm_read_0 )
        , ( "write_0", jm_write_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "setRegistrationCode_1", jm_setRegistrationCode_1 )
        , ( "getRegistrationCode_0", jm_getRegistrationCode_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RegistrationConfiguration"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_read_0", jm_read_0 ), ( "jm_write_0", jm_write_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_setRegistrationCode_1", jm_setRegistrationCode_1 ), ( "jm_getRegistrationCode_0", jm_getRegistrationCode_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "RegistrationConfiguration" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "registrationCode" "" JR.this (JR.str "No Registration Code")),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "registrationid")),
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_read_0 : JR.Method
jm_read_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_write_0 : JR.Method
jm_write_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Registration Code: ") ]) [ (JR.invoke "getRegistrationCode_0" JR.this []) ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setRegistrationCode_1 : JR.Method
jm_setRegistrationCode_1 jheap jthis jargs =
    JR.method [ ( "registrationCode", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "registrationCode" "" JR.this (JR.local "registrationCode")) ])
        (jregister jheap)
        jthis
        jargs


jm_getRegistrationCode_0 : JR.Method
jm_getRegistrationCode_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "registrationCode") ])
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

