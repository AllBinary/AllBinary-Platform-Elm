module Org.Allbinary.Input.AllBinarySensor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input
-}

import JR
import Org.Allbinary.Input.AllBinarySensorListener as AllBinarySensorListener
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "AllBinarySensor"


jchain : List String
jchain =
    [ "AllBinarySensor" ]
        ++ AllBinarySensorListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "update_0", jm_update_0 )
        , ( "setMax_1", jm_setMax_1 )
        , ( "getMax_0", jm_getMax_0 )
        , ( "getId_0", jm_getId_0 )
        , ( "shutdown_0", jm_shutdown_0 )
        , ( "onSensorChange_0", jm_onSensorChange_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinarySensor"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_setMax_1", jm_setMax_1 ), ( "jm_getMax_0", jm_getMax_0 ), ( "jm_getId_0", jm_getId_0 ), ( "jm_shutdown_0", jm_shutdown_0 ), ( "jm_onSensorChange_0", jm_onSensorChange_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_ALLBINARY_SENSOR", jstatic_NULL_ALLBINARY_SENSOR ), ( "jstatic_max", jstatic_max ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ALLBINARY_SENSOR : JR.M
jstatic_NULL_ALLBINARY_SENSOR s =
    JR.static "AllBinarySensor" jclinit "NULL_ALLBINARY_SENSOR"
        (JR.new jnew_0 [])
        s


jstatic_max : JR.M
jstatic_max s =
    JR.static "AllBinarySensor" jclinit "max"
        (JR.int 100)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setMax_1 : JR.Method
jm_setMax_1 jheap jthis jargs =
    JR.method [ ( "max", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "AllBinarySensor.max" "I" (JR.local "max")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMax_0 : JR.Method
jm_getMax_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_max ])
        (jregister jheap)
        jthis
        jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callStatic jm_getMax_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_shutdown_0 : JR.Method
jm_shutdown_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "shutdown") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onSensorChange_0 : JR.Method
jm_onSensorChange_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]) ])
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

