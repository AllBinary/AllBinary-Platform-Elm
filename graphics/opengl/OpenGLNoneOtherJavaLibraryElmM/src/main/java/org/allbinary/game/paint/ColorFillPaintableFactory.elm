module Org.Allbinary.Game.Paint.ColorFillPaintableFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Game.Paint.ColorFillPaintable as ColorFillPaintable
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.Game.Paint.OverScanColorFillPaintable as OverScanColorFillPaintable


jclass : String
jclass =
    "ColorFillPaintableFactory"


jchain : List String
jchain =
    [ "ColorFillPaintableFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_2", jm_getInstance_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ColorFillPaintableFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_2", jm_getInstance_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ColorFillPaintableFactory" jclinit "instance"
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ), ( "forThreedCanvas", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "operatingSystem" "" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.invoke "isOverScan_0" (JR.local "operatingSystem") []) (JR.run [ 
                        JR.return (JR.new OverScanColorFillPaintable.jnew_1 [ (JR.local "basicColor") ]) ]) (JR.run [ 
                        JR.return (JR.new ColorFillPaintable.jnew_1 [ (JR.local "basicColor") ]) ]) ])
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

