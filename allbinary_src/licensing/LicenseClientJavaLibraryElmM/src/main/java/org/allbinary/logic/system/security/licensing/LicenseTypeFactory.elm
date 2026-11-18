module Org.Allbinary.Logic.System.Security.Licensing.LicenseTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.System.Security.Licensing.LicenseType as LicenseType


jclass : String
jclass =
    "LicenseTypeFactory"


jchain : List String
jchain =
    [ "LicenseTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "UNKNOWN", JR.defaultOf "" ), ( "DEMO", JR.defaultOf "" ), ( "NORMAL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LicenseTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "UNKNOWN" "" JR.this (JR.new LicenseType.jnew_1 [ (JR.field "UNKNOWN" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "DEMO" "" JR.this (JR.new LicenseType.jnew_1 [ (JR.str "Demo") ])),
                JR.exec (JR.setField "NORMAL" "" JR.this (JR.new LicenseType.jnew_1 [ (JR.str "Normal") ])),
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
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getName_0" (JR.thisField "DEMO") []) [ (JR.local "name") ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.thisField "DEMO") ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getName_0" (JR.thisField "NORMAL") []) [ (JR.local "name") ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.thisField "NORMAL") ]) identity ]), 
                    JR.return (JR.thisField "UNKNOWN") ])
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

