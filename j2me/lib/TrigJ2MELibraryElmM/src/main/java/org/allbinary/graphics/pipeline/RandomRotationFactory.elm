module Org.Allbinary.Graphics.Pipeline.RandomRotationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.pipeline
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Graphics.Pipeline.BasicGraphicsPipeline as BasicGraphicsPipeline
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory


jclass : String
jclass =
    "RandomRotationFactory"


jchain : List String
jchain =
    [ "RandomRotationFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "myRandomFactory", JR.defaultOf "" ), ( "angleFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceList_2", jm_getInstanceList_2 )
        , ( "getNextRandomAngle_1", jm_getNextRandomAngle_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RandomRotationFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceList_2", jm_getInstanceList_2 ), ( "jm_getNextRandomAngle_1", jm_getNextRandomAngle_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "RandomRotationFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "myRandomFactory" "" JR.this (JR.callStatic MyRandomFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "angleFactory" "" JR.this (JR.callStatic AngleFactory.jm_getInstance_0 [])),
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


jm_getInstanceList_2 : JR.Method
jm_getInstanceList_2 jheap jthis jargs =
    JR.method [ ( "vector", "" ), ( "howMuch", "I" ) ] ""
        (JR.run [ 
                    JR.declare "graphicsPipe" "" (JR.new BasicGraphicsPipeline.jnew_1 [ (JR.local "vector") ]), 
                    JR.exec (JR.invoke "createMatrix_0" (JR.local "graphicsPipe") []), 
                    JR.exec (JR.invoke "rotateToAngle_1" (JR.local "graphicsPipe") [ (JR.invoke "getAt_1" (JR.thisField "angleFactory") [ (JR.invoke "getNextRandomAngle_1" JR.this [ (JR.local "howMuch") ]) ]) ]), 
                    JR.return (JR.invoke "getMatrix_0" (JR.local "graphicsPipe") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getNextRandomAngle_1 : JR.Method
jm_getNextRandomAngle_1 jheap jthis jargs =
    JR.method [ ( "howMuch", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getNextInt_1" (JR.thisField "myRandomFactory") [ (JR.map2 JR.mul (JR.local "howMuch") (JR.int 10)) ]) ])
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

