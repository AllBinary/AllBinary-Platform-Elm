module Org.Allbinary.Media.Audio.EarlySoundsFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.BaseSoundsFactory as BaseSoundsFactory
import Org.Allbinary.Media.Audio.ErrorSound as ErrorSound
import Org.Allbinary.Media.Audio.SelectSound as SelectSound


jclass : String
jclass =
    "EarlySoundsFactory"


jchain : List String
jchain =
    [ "EarlySoundsFactory" ]
        ++ BaseSoundsFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseSoundsFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getSoundInterfaceArray_0", jm_getSoundInterfaceArray_0 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        BaseSoundsFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EarlySoundsFactory"
        [ ( "jm_getSoundInterfaceArray_0", jm_getSoundInterfaceArray_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "EarlySoundsFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseSoundsFactory.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getSoundInterfaceArray_0 : JR.Method
jm_getSoundInterfaceArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "soundInterfaceArray" "" (JR.newArray "" [ (JR.int 2) ]), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.exec (JR.andThen (JR.local "soundInterfaceArray") (\jaN65977 -> JR.andThen (JR.postUpdate (JR.local "index") (\jwN65984 -> (JR.setLocal "index" "I" (JR.lit jwN65984))) JR.increment) (\jiN65977 -> (JR.aset (JR.lit jaN65977) (JR.lit jiN65977) (JR.callStatic SelectSound.jm_getInstance_0 []))))), 
                    JR.exec (JR.andThen (JR.local "soundInterfaceArray") (\jaN66027 -> JR.andThen (JR.postUpdate (JR.local "index") (\jwN66034 -> (JR.setLocal "index" "I" (JR.lit jwN66034))) JR.increment) (\jiN66027 -> (JR.aset (JR.lit jaN66027) (JR.lit jiN66027) (JR.callStatic ErrorSound.jm_getInstance_0 []))))), 
                    JR.return (JR.local "soundInterfaceArray") ])
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

