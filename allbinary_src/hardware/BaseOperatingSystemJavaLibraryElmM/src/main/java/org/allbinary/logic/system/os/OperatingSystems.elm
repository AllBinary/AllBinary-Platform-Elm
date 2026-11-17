module OperatingSystems exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os
-}

import JR



jclass : String
jclass =
    "OperatingSystems"


jchain : List String
jchain =
    [ "OperatingSystems" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "LINUX", JR.defaultOf "" ), ( "WINDOWS", JR.defaultOf "" ), ( "SOLARIS", JR.defaultOf "" ), ( "WINDOWS2000", JR.defaultOf "" ), ( "WINDOWS_NT", JR.defaultOf "" ), ( "WINDOWS_10", JR.defaultOf "" ), ( "WINDOWS_11", JR.defaultOf "" ), ( "WINDOWS_VISTA", JR.defaultOf "" ), ( "WINDOWS_XP", JR.defaultOf "" ), ( "ANDROID", JR.defaultOf "" ), ( "HARMONY", JR.defaultOf "" ), ( "unknownSpecificOSAllowed", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "isUnknownSpecificOSAllowed_0", jm_isUnknownSpecificOSAllowed_0 )
        , ( "setUnknownSpecificOSAllowed_1", jm_setUnknownSpecificOSAllowed_1 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OperatingSystems"
        [ ( "jm_isUnknownSpecificOSAllowed_0", jm_isUnknownSpecificOSAllowed_0 ), ( "jm_setUnknownSpecificOSAllowed_1", jm_setUnknownSpecificOSAllowed_1 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OperatingSystems" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "LINUX" "" JR.this (JR.str "Linux")),
                JR.exec (JR.setField "WINDOWS" "" JR.this (JR.str "Windows")),
                JR.exec (JR.setField "SOLARIS" "" JR.this (JR.str "Solaris")),
                JR.exec (JR.setField "WINDOWS2000" "" JR.this (JR.str "Windows 2000")),
                JR.exec (JR.setField "WINDOWS_NT" "" JR.this (JR.str "Windows NT")),
                JR.exec (JR.setField "WINDOWS_10" "" JR.this (JR.str "Windows 10")),
                JR.exec (JR.setField "WINDOWS_11" "" JR.this (JR.str "Windows 11")),
                JR.exec (JR.setField "WINDOWS_VISTA" "" JR.this (JR.str "Windows Vista")),
                JR.exec (JR.setField "WINDOWS_XP" "" JR.this (JR.str "Windows XP")),
                JR.exec (JR.setField "ANDROID" "" JR.this (JR.thisField "LINUX")),
                JR.exec (JR.setField "HARMONY" "" JR.this (JR.str "HarmonyOS")),
                JR.exec (JR.setField "unknownSpecificOSAllowed" "Z" JR.this (JR.bool True)),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isUnknownSpecificOSAllowed_0 : JR.Method
jm_isUnknownSpecificOSAllowed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "unknownSpecificOSAllowed") ])
        (jregister jheap)
        jthis
        jargs


jm_setUnknownSpecificOSAllowed_1 : JR.Method
jm_setUnknownSpecificOSAllowed_1 jheap jthis jargs =
    JR.method [ ( "aUnknownSpecificOSAllowed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "unknownSpecificOSAllowed" "Z" JR.this (JR.local "aUnknownSpecificOSAllowed")) ])
        (jregister jheap)
        jthis
        jargs


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

