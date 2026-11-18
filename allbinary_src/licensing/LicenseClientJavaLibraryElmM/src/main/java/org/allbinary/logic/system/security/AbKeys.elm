module Org.Allbinary.Logic.System.Security.AbKeys exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeLicenseInterfaceFactory as AbeLicenseInterfaceFactory
import Org.Allbinary.Logic.System.Security.Licensing.LicensingException as LicensingException
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "AbKeys"


jchain : List String
jchain =
    [ "AbKeys" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getKey_2", jm_getKey_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbKeys"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getKey_2", jm_getKey_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbKeys" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
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


jm_getKey_2 : JR.Method
jm_getKey_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "keyName", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Getting Key: ") (JR.local "keyName")), JR.this, (JR.str "getKey") ]), 
                        JR.ifElse (JR.or (JR.or (JR.or (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "keyName") [ (JR.str "DirectX 8") ]) (JR.int 0)) (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "keyName") [ (JR.str "DirectX") ]) (JR.int 0))) (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "keyName") [ (JR.str "Low Level") ]) (JR.int 0))) (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "keyName") [ (JR.str "System Drivers") ]) (JR.int 0))) (JR.run [ 
                            JR.return (JR.str "Temp For Input Library") ]) identity, 
                        JR.return (JR.invoke "getKey_1" (JR.invoke "getLicenseInstance_1" (JR.callStatic AbeLicenseInterfaceFactory.jm_getInstance_0 []) [ (JR.local "abeClientInformation") ]) [ (JR.local "keyName") ]) ]) [ ( [ "LicensingException" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Licensing Failure"), JR.this, (JR.str "getKey()"), (JR.local "e") ]), 
                        JR.throw (JR.new LicensingException.jnew_1 [ (JR.str "Unknown License Failure") ]) ]) ) ] identity ])
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

