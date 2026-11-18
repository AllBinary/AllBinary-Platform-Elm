module Org.Allbinary.Game.Input.PlatformInputMappingFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Input.MotionLaptopGameInputMapping as MotionLaptopGameInputMapping
import Org.Allbinary.Game.Input.Mapping.PersistentInputMapping as PersistentInputMapping


jclass : String
jclass =
    "PlatformInputMappingFactory"


jchain : List String
jchain =
    [ "PlatformInputMappingFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "inputToGameKeyMapping", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getPersistentInputMappingInstance_0", jm_getPersistentInputMappingInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformInputMappingFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getPersistentInputMappingInstance_0", jm_getPersistentInputMappingInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PlatformInputMappingFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "inputToGameKeyMapping" "" JR.this (JR.callStatic PersistentInputMapping.jm_getNullInstance_0 [])),
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


jm_getPersistentInputMappingInstance_0 : JR.Method
jm_getPersistentInputMappingInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "inputToGameKeyMapping") (JR.callStatic PersistentInputMapping.jm_getNullInstance_0 [])) (JR.run [ 
                            JR.exec (JR.setField "inputToGameKeyMapping" "" JR.this (JR.new MotionLaptopGameInputMapping.jnew_0 [])) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.return (JR.thisField "inputToGameKeyMapping") ])
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

