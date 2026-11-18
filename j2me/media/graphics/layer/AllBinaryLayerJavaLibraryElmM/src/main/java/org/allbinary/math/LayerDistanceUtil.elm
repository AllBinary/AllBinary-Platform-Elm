module Org.Allbinary.Math.LayerDistanceUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import Org.Allbinary.Logic.Math.MathUtil as MathUtil


jclass : String
jclass =
    "LayerDistanceUtil"


jchain : List String
jchain =
    [ "LayerDistanceUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "mathUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getDistance_2", jm_getDistance_2 )
        , ( "getDistance3D_2", jm_getDistance3D_2 )
        , ( "getDistanceAt_2", jm_getDistanceAt_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerDistanceUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getDistance_2", jm_getDistance_2 ), ( "jm_getDistance3D_2", jm_getDistance3D_2 ), ( "jm_getDistanceAt_2", jm_getDistanceAt_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LayerDistanceUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "mathUtil" "" JR.this (JR.callStatic MathUtil.jm_getInstance_0 [])),
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


jm_getDistance_2 : JR.Method
jm_getDistance_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "layerInterface2", "" ) ] "I"
        (JR.run [ 
                    JR.declare "dx" "I" (JR.map2 JR.sub ((JR.map2 JR.add (JR.invoke "getXP_0" (JR.local "layerInterface") []) (JR.invoke "getHalfWidth_0" (JR.local "layerInterface") []))) ((JR.map2 JR.add (JR.invoke "getXP_0" (JR.local "layerInterface2") []) (JR.invoke "getHalfWidth_0" (JR.local "layerInterface2") [])))), 
                    JR.declare "dy" "I" (JR.map2 JR.sub ((JR.map2 JR.add (JR.invoke "getYP_0" (JR.local "layerInterface") []) (JR.invoke "getHalfHeight_0" (JR.local "layerInterface") []))) ((JR.map2 JR.add (JR.invoke "getYP_0" (JR.local "layerInterface2") []) (JR.invoke "getHalfHeight_0" (JR.local "layerInterface2") [])))), 
                    JR.return (JR.invoke "sqrt_1" (JR.thisField "mathUtil") [ (JR.map2 JR.add ((JR.map2 JR.mul (JR.local "dx") (JR.local "dx"))) ((JR.map2 JR.mul (JR.local "dy") (JR.local "dy")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDistance3D_2 : JR.Method
jm_getDistance3D_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "layerInterface2", "" ) ] "I"
        (JR.run [ 
                    JR.declare "dx" "I" (JR.map2 JR.sub ((JR.map2 JR.add (JR.invoke "getXP_0" (JR.local "layerInterface") []) (JR.invoke "getHalfWidth_0" (JR.local "layerInterface") []))) ((JR.map2 JR.add (JR.invoke "getXP_0" (JR.local "layerInterface2") []) (JR.invoke "getHalfWidth_0" (JR.local "layerInterface2") [])))), 
                    JR.declare "dy" "I" (JR.map2 JR.sub ((JR.map2 JR.add (JR.invoke "getYP_0" (JR.local "layerInterface") []) (JR.invoke "getHalfHeight_0" (JR.local "layerInterface") []))) ((JR.map2 JR.add (JR.invoke "getYP_0" (JR.local "layerInterface2") []) (JR.invoke "getHalfHeight_0" (JR.local "layerInterface2") [])))), 
                    JR.declare "dz" "I" (JR.map2 JR.sub ((JR.map2 JR.add (JR.invoke "getZP_0" (JR.local "layerInterface") []) (JR.invoke "getHalfDepth_0" (JR.local "layerInterface") []))) ((JR.map2 JR.add (JR.invoke "getZP_0" (JR.local "layerInterface2") []) (JR.invoke "getHalfDepth_0" (JR.local "layerInterface2") [])))), 
                    JR.return (JR.invoke "sqrt_1" (JR.thisField "mathUtil") [ (JR.map2 JR.add (JR.map2 JR.add ((JR.map2 JR.mul (JR.local "dx") (JR.local "dx"))) ((JR.map2 JR.mul (JR.local "dy") (JR.local "dy")))) ((JR.map2 JR.mul (JR.local "dz") (JR.local "dz")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDistanceAt_2 : JR.Method
jm_getDistanceAt_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "point", "" ) ] "I"
        (JR.run [ 
                    JR.declare "dx" "I" (JR.map2 JR.sub (JR.invoke "getXP_0" (JR.local "layerInterface") []) (JR.invoke "getX_0" (JR.local "point") [])), 
                    JR.declare "dy" "I" (JR.map2 JR.sub (JR.invoke "getYP_0" (JR.local "layerInterface") []) (JR.invoke "getY_0" (JR.local "point") [])), 
                    JR.return (JR.invoke "sqrt_1" (JR.thisField "mathUtil") [ (JR.map2 JR.add ((JR.map2 JR.mul (JR.local "dx") (JR.local "dx"))) ((JR.map2 JR.mul (JR.local "dy") (JR.local "dy")))) ]) ])
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

