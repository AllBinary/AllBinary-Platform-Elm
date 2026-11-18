module Org.Allbinary.Media.AllBinaryVibration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media
-}

import JR
import Org.Allbinary.Media.AllBinaryNoVibration as AllBinaryNoVibration
import Org.Allbinary.Media.AllBinaryVibrationME as AllBinaryVibrationME
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral


jclass : String
jclass =
    "AllBinaryVibration"


jchain : List String
jchain =
    [ "AllBinaryVibration" ]
        ++ AllBinaryVibrationME.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryVibrationME.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 )
        , ( "vibrate_3", jm_vibrate_3 ) ]
        AllBinaryVibrationME.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryVibration"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_vibrate_3", jm_vibrate_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_VIBRATION", jstatic_VIBRATION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_VIBRATION : JR.M
jstatic_VIBRATION s =
    JR.static "AllBinaryVibration" jclinit "VIBRATION"
        AllBinaryNoVibration.jstatic_NO_VIBRATION
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryVibrationME.jinit_0 JR.this []),
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
                    JR.return jstatic_VIBRATION ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "VIBRATION" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 [])) []) []) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setStatic "AllBinaryVibration.VIBRATION" "" AllBinaryNoVibration.jstatic_NO_VIBRATION) ]) (JR.run [ 
                        JR.exec (JR.setStatic "AllBinaryVibration.VIBRATION" "" (JR.new jnew_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_vibrate_3 : JR.Method
jm_vibrate_3 jheap jthis jargs =
    JR.method [ ( "duration", "I" ), ( "type", "I" ), ( "volume", "I" ) ] ""
        identity
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

