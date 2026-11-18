module Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.KeySpecFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.crypt.jcehelper
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "KeySpecFactory"


jchain : List String
jchain =
    [ "KeySpecFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "DES", JR.defaultOf "" ), ( "DESEDE", JR.defaultOf "" ), ( "BLOWFISH", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_2", jm_getInstance_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeySpecFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_2", jm_getInstance_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "KeySpecFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "DES" "" JR.this (JR.str "DES")),
                JR.exec (JR.setField "DESEDE" "" JR.this (JR.str "DESede")),
                JR.exec (JR.setField "BLOWFISH" "" JR.this (JR.str "Blowfish")),
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


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "algorithm", "" ), ( "keyData", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "tsUtil" "" (JR.callStatic TsUtil.jm_getInstance_0 []), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.local "tsUtil") [ (JR.local "algorithm"), (JR.thisField "DES") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.new (JR.namedMethod "DESKeySpec.jnew_1") [ (JR.local "keyData") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.local "tsUtil") [ (JR.local "algorithm"), (JR.thisField "DESEDE") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.new (JR.namedMethod "DESedeKeySpec.jnew_1") [ (JR.local "keyData") ]) ]) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) ) ] identity ])
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

