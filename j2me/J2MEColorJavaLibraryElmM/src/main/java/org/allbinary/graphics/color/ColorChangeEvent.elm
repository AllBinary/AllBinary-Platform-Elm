module Org.Allbinary.Graphics.Color.ColorChangeEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory


jclass : String
jclass =
    "ColorChangeEvent"


jchain : List String
jchain =
    [ "ColorChangeEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "basicColor", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ColorChangeEvent"
        [ ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "anyType") ]),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
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

