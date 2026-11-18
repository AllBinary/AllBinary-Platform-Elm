module Org.Allbinary.Game.Layer.LayerPlacementTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Direction.DirectionFactory as DirectionFactory
import JInteger
import Org.Allbinary.Game.Layer.LayerPlacementType as LayerPlacementType


jclass : String
jclass =
    "LayerPlacementTypeFactory"


jchain : List String
jchain =
    [ "LayerPlacementTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "MAP", JR.defaultOf "" ), ( "LEFT", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerPlacementTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LayerPlacementTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "MAP" "" JR.this (JR.new LayerPlacementType.jnew_1 [ JInteger.jstatic_MAX_VALUE ])),
                JR.exec (JR.setField "LEFT" "" JR.this (JR.new LayerPlacementType.jnew_1 [ (JR.invoke "getValue_0" (JR.field "LEFT" (JR.callStatic DirectionFactory.jm_getInstance_0 [])) []) ])),
                JR.exec (JR.setField "DOWN" "" JR.this (JR.new LayerPlacementType.jnew_1 [ (JR.invoke "getValue_0" (JR.field "DOWN" (JR.callStatic DirectionFactory.jm_getInstance_0 [])) []) ])),
                JR.exec (JR.setField "UP" "" JR.this (JR.new LayerPlacementType.jnew_1 [ (JR.invoke "getValue_0" (JR.field "UP" (JR.callStatic DirectionFactory.jm_getInstance_0 [])) []) ])),
                JR.exec (JR.setField "RIGHT" "" JR.this (JR.new LayerPlacementType.jnew_1 [ (JR.invoke "getValue_0" (JR.field "RIGHT" (JR.callStatic DirectionFactory.jm_getInstance_0 [])) []) ])),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

