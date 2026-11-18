module Org.Allbinary.Game.Configuration.GameSpeed exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral


jclass : String
jclass =
    "GameSpeed"


jchain : List String
jchain =
    [ "GameSpeed" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getSpeed_0", jm_getSpeed_0 )
        , ( "getDelay_0", jm_getDelay_0 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameSpeed"
        [ ( "jm_getSpeed_0", jm_getSpeed_0 ), ( "jm_getDelay_0", jm_getDelay_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameSpeed" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getSpeed_0 : JR.Method
jm_getSpeed_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "speedGameConfiguration" "" (JR.field "SPEED" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 [])), 
                    JR.return ((JR.plus (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getMaxValue_0" (JR.local "speedGameConfiguration") []) []) (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.local "speedGameConfiguration") []) [])) (JR.int 1))) ])
        (jregister jheap)
        jthis
        jargs


jm_getDelay_0 : JR.Method
jm_getDelay_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "speedGameConfiguration" "" (JR.field "SPEED" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 [])), 
                    JR.return (JR.map2 JR.mul (JR.int 19) ((JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getMaxValue_0" (JR.local "speedGameConfiguration") []) []) (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.local "speedGameConfiguration") []) [])))) ])
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

