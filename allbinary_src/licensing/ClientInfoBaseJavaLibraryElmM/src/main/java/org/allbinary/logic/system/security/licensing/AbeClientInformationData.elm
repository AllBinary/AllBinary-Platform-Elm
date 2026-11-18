module Org.Allbinary.Logic.System.Security.Licensing.AbeClientInformationData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR



jclass : String
jclass =
    "AbeClientInformationData"


jchain : List String
jchain =
    [ "AbeClientInformationData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "KEY", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ), ( "VERSION", JR.defaultOf "" ), ( "SPECIALNAME", JR.defaultOf "" ), ( "LICENSEID", JR.defaultOf "" ), ( "LICENSE_TYPE", JR.defaultOf "" ), ( "PREVIOUSLICENSEID", JR.defaultOf "" ), ( "OSNAME", JR.defaultOf "" ), ( "OSARCH", JR.defaultOf "" ), ( "OSVERSION", JR.defaultOf "" ), ( "OS", JR.defaultOf "" ), ( "HARDWARE", JR.defaultOf "" ), ( "LICENSESERVERS", JR.defaultOf "" ), ( "NEWLICENSE", JR.defaultOf "" ), ( "ISNEW", JR.defaultOf "" ), ( "SPECIAL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeClientInformationData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbeClientInformationData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "KEY" "" JR.this (JR.str "KEY")),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "NAME")),
                JR.exec (JR.setField "VERSION" "" JR.this (JR.str "VERSION")),
                JR.exec (JR.setField "SPECIALNAME" "" JR.this (JR.str "SPECIALNAME")),
                JR.exec (JR.setField "LICENSEID" "" JR.this (JR.str "LICENSEID")),
                JR.exec (JR.setField "LICENSE_TYPE" "" JR.this (JR.str "LICENSETYPE")),
                JR.exec (JR.setField "PREVIOUSLICENSEID" "" JR.this (JR.str "PREVIOUSLICENSEID")),
                JR.exec (JR.setField "OSNAME" "" JR.this (JR.str "OSNAME")),
                JR.exec (JR.setField "OSARCH" "" JR.this (JR.str "OSARCH")),
                JR.exec (JR.setField "OSVERSION" "" JR.this (JR.str "OSVERSION")),
                JR.exec (JR.setField "OS" "" JR.this (JR.str "OS")),
                JR.exec (JR.setField "HARDWARE" "" JR.this (JR.str "HARDWARE")),
                JR.exec (JR.setField "LICENSESERVERS" "" JR.this (JR.str "LICENSESERVERS")),
                JR.exec (JR.setField "NEWLICENSE" "" JR.this (JR.str "NEWLICENSE")),
                JR.exec (JR.setField "ISNEW" "" JR.this (JR.str "ISNEW")),
                JR.exec (JR.setField "SPECIAL" "" JR.this (JR.str "SPECIAL")),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

