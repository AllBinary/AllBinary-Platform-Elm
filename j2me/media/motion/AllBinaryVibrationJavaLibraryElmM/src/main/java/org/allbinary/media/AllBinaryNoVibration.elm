module Org.Allbinary.Media.AllBinaryNoVibration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media
-}

import JR
import Org.Allbinary.Media.AllBinaryVibrationME as AllBinaryVibrationME


jclass : String
jclass =
    "AllBinaryNoVibration"


jchain : List String
jchain =
    [ "AllBinaryNoVibration" ]
        ++ AllBinaryVibrationME.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryVibrationME.jfields ++ []


jvtable =
    JR.vtable
        [ ( "vibrate_3", jm_vibrate_3 ) ]
        AllBinaryVibrationME.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryNoVibration"
        [ ( "jm_vibrate_3", jm_vibrate_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NO_VIBRATION", jstatic_NO_VIBRATION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NO_VIBRATION : JR.M
jstatic_NO_VIBRATION s =
    JR.static "AllBinaryNoVibration" jclinit "NO_VIBRATION"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryVibrationME.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


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

