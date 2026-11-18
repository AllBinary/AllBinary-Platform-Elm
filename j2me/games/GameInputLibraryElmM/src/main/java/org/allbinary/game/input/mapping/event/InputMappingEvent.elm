module Org.Allbinary.Game.Input.Mapping.Event.InputMappingEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.mapping.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Game.Input.Mapping.InputToGameKeyMapping as InputToGameKeyMapping


jclass : String
jclass =
    "InputMappingEvent"


jchain : List String
jchain =
    [ "InputMappingEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "inputToGameKeyMapping", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setInputToGameKeyMapping_1", jm_setInputToGameKeyMapping_1 )
        , ( "getInputToGameKeyMapping_0", jm_getInputToGameKeyMapping_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputMappingEvent"
        [ ( "jm_setInputToGameKeyMapping_1", jm_setInputToGameKeyMapping_1 ), ( "jm_getInputToGameKeyMapping_0", jm_getInputToGameKeyMapping_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "anyType") ]),
                JR.exec (JR.setField "inputToGameKeyMapping" "" JR.this (JR.callStatic InputToGameKeyMapping.jm_getNullInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setInputToGameKeyMapping_1 : JR.Method
jm_setInputToGameKeyMapping_1 jheap jthis jargs =
    JR.method [ ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "inputToGameKeyMapping" "" JR.this (JR.local "inputToGameKeyMapping")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInputToGameKeyMapping_0 : JR.Method
jm_getInputToGameKeyMapping_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
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

