module Org.Allbinary.Graphics.Color.ColorTemperatureUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory


jclass : String
jclass =
    "ColorTemperatureUtil"


jchain : List String
jchain =
    [ "ColorTemperatureUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "basicColorFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getBasicColor_1", jm_getBasicColor_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ColorTemperatureUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getBasicColor_1", jm_getBasicColor_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ColorTemperatureUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "basicColorFactory" "" JR.this (JR.callStatic BasicColorFactory.jm_getInstance_0 [])),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColor_1 : JR.Method
jm_getBasicColor_1 jheap jthis jargs =
    JR.method [ ( "thirdTemp", "I" ) ] ""
        (JR.run [ 
                    JR.declare "basicColor" "" (JR.field "RED" (JR.thisField "basicColorFactory")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "thirdTemp") (JR.int 3700)) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.field "PURPLE" (JR.thisField "basicColorFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "thirdTemp") (JR.int 3200)) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.field "BLUE" (JR.thisField "basicColorFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "thirdTemp") (JR.int 2700)) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.field "PUCE" (JR.thisField "basicColorFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "thirdTemp") (JR.int 2200)) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.field "WHITE" (JR.thisField "basicColorFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "thirdTemp") (JR.int 1700)) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.field "GREEN" (JR.thisField "basicColorFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "thirdTemp") (JR.int 1200)) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.field "YELLOW" (JR.thisField "basicColorFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "thirdTemp") (JR.int 700)) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.field "ORANGE" (JR.thisField "basicColorFactory"))) ]) identity ]) ]) ]) ]) ]) ]), 
                    JR.return (JR.local "basicColor") ])
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

