module Org.Allbinary.Media.Audio.BaseSoundsFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.SoundsFactoryInterface as SoundsFactoryInterface


jclass : String
jclass =
    "BaseSoundsFactory"


jchain : List String
jchain =
    [ "BaseSoundsFactory" ]
        ++ SoundsFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "initialized", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getSoundInterfaceArray_0", jm_getSoundInterfaceArray_0 )
        , ( "setInitialized_1", jm_setInitialized_1 )
        , ( "isInitialized_0", jm_isInitialized_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseSoundsFactory"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getSoundInterfaceArray_0", jm_getSoundInterfaceArray_0 ), ( "jm_setInitialized_1", jm_setInitialized_1 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSoundInterfaceArray_0 : JR.Method
jm_getSoundInterfaceArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.newArray "" [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialized_1 : JR.Method
jm_setInitialized_1 jheap jthis jargs =
    JR.method [ ( "initialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initialized" "Z" JR.this (JR.local "initialized")) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "initialized") ])
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

