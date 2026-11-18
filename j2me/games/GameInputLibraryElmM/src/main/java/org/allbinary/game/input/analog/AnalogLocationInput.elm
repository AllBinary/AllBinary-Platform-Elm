module Org.Allbinary.Game.Input.Analog.AnalogLocationInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.analog
-}

import JR
import Org.Allbinary.Graphics.CustomGPoint as CustomGPoint


jclass : String
jclass =
    "AnalogLocationInput"


jchain : List String
jchain =
    [ "AnalogLocationInput" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "playerId", JR.defaultOf "I" ), ( "customGPoint", JR.defaultOf "" ), ( "rz", JR.defaultOf "I" ), ( "rightTrigger", JR.defaultOf "I" ), ( "leftTrigger", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getPlayerId_0", jm_getPlayerId_0 )
        , ( "getCustomGPoint_0", jm_getCustomGPoint_0 )
        , ( "getRz_0", jm_getRz_0 )
        , ( "setRz_1", jm_setRz_1 )
        , ( "getRightTrigger_0", jm_getRightTrigger_0 )
        , ( "setRightTrigger_1", jm_setRightTrigger_1 )
        , ( "getLeftTrigger_0", jm_getLeftTrigger_0 )
        , ( "setLeftTrigger_1", jm_setLeftTrigger_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnalogLocationInput"
        [ ( "jm_getPlayerId_0", jm_getPlayerId_0 ), ( "jm_getCustomGPoint_0", jm_getCustomGPoint_0 ), ( "jm_getRz_0", jm_getRz_0 ), ( "jm_setRz_1", jm_setRz_1 ), ( "jm_getRightTrigger_0", jm_getRightTrigger_0 ), ( "jm_setRightTrigger_1", jm_setRightTrigger_1 ), ( "jm_getLeftTrigger_0", jm_getLeftTrigger_0 ), ( "jm_setLeftTrigger_1", jm_setLeftTrigger_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_ANALOG_LOCATION_INPUT", jstatic_NULL_ANALOG_LOCATION_INPUT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ANALOG_LOCATION_INPUT : JR.M
jstatic_NULL_ANALOG_LOCATION_INPUT s =
    JR.static "AnalogLocationInput" jclinit "NULL_ANALOG_LOCATION_INPUT"
        (JR.new jnew_1 [ (JR.map JR.neg (JR.int 1)) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "playerId", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "playerId" "I" JR.this (JR.local "playerId")), 
                    JR.exec (JR.setField "customGPoint" "" JR.this (JR.new CustomGPoint.jnew_3 [ (JR.int 0), (JR.int 0), (JR.int 0) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getPlayerId_0 : JR.Method
jm_getPlayerId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "playerId") ])
        (jregister jheap)
        jthis
        jargs


jm_getCustomGPoint_0 : JR.Method
jm_getCustomGPoint_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "customGPoint") ])
        (jregister jheap)
        jthis
        jargs


jm_getRz_0 : JR.Method
jm_getRz_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "rz") ])
        (jregister jheap)
        jthis
        jargs


jm_setRz_1 : JR.Method
jm_setRz_1 jheap jthis jargs =
    JR.method [ ( "rz", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "rz" "I" JR.this (JR.local "rz")) ])
        (jregister jheap)
        jthis
        jargs


jm_getRightTrigger_0 : JR.Method
jm_getRightTrigger_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "rightTrigger") ])
        (jregister jheap)
        jthis
        jargs


jm_setRightTrigger_1 : JR.Method
jm_setRightTrigger_1 jheap jthis jargs =
    JR.method [ ( "rightTrigger", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "rightTrigger" "I" JR.this (JR.local "rightTrigger")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLeftTrigger_0 : JR.Method
jm_getLeftTrigger_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "leftTrigger") ])
        (jregister jheap)
        jthis
        jargs


jm_setLeftTrigger_1 : JR.Method
jm_setLeftTrigger_1 jheap jthis jargs =
    JR.method [ ( "leftTrigger", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "leftTrigger" "I" JR.this (JR.local "leftTrigger")) ])
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

