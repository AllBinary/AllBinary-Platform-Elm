module Org.Allbinary.Logic.System.Os.SystemProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os
-}

import JR
import JSystem


jclass : String
jclass =
    "SystemProperties"


jchain : List String
jchain =
    [ "SystemProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "OS_NAME", JR.defaultOf "" ), ( "OS_ARCH", JR.defaultOf "" ), ( "OS_VERSION", JR.defaultOf "" ), ( "USER_HOME", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getArch_0", jm_getArch_0 )
        , ( "getVersion_0", jm_getVersion_0 )
        , ( "getUserHomePath_0", jm_getUserHomePath_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SystemProperties"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getArch_0", jm_getArch_0 ), ( "jm_getVersion_0", jm_getVersion_0 ), ( "jm_getUserHomePath_0", jm_getUserHomePath_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SystemProperties" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "OS_NAME" "" JR.this (JR.str "os.name")),
                JR.exec (JR.setField "OS_ARCH" "" JR.this (JR.str "os.arch")),
                JR.exec (JR.setField "OS_VERSION" "" JR.this (JR.str "os.version")),
                JR.exec (JR.setField "USER_HOME" "" JR.this (JR.str "user.home")),
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


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic JSystem.jm_getProperty_1 [ (JR.thisField "OS_NAME") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getArch_0 : JR.Method
jm_getArch_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic JSystem.jm_getProperty_1 [ (JR.thisField "OS_ARCH") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getVersion_0 : JR.Method
jm_getVersion_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic JSystem.jm_getProperty_1 [ (JR.thisField "OS_VERSION") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getUserHomePath_0 : JR.Method
jm_getUserHomePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic JSystem.jm_getProperty_1 [ (JR.thisField "USER_HOME") ]) ])
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

