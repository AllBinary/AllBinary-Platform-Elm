module Org.Allbinary.Game.Layer.Pickup.PickedUpLayerTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerType as PickedUpLayerType
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "PickedUpLayerTypeFactory"


jchain : List String
jchain =
    [ "PickedUpLayerTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NONE", JR.defaultOf "" ), ( "BEAM", JR.defaultOf "" ), ( "MINE", JR.defaultOf "" ), ( "PROJECTILE", JR.defaultOf "" ), ( "ENHANCEMENT", JR.defaultOf "" ), ( "MORPH", JR.defaultOf "" ), ( "PART", JR.defaultOf "" ), ( "HEAL", JR.defaultOf "" ), ( "LIFE", JR.defaultOf "" ), ( "POINTS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PickedUpLayerTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PickedUpLayerTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NONE" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "BEAM" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "BEAM") ])),
                JR.exec (JR.setField "MINE" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "MINE") ])),
                JR.exec (JR.setField "PROJECTILE" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "PROJECTILE") ])),
                JR.exec (JR.setField "ENHANCEMENT" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "Enhancement") ])),
                JR.exec (JR.setField "MORPH" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "Morph") ])),
                JR.exec (JR.setField "PART" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "Part") ])),
                JR.exec (JR.setField "HEAL" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "Heal") ])),
                JR.exec (JR.setField "LIFE" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "Life") ])),
                JR.exec (JR.setField "POINTS" "" JR.this (JR.new PickedUpLayerType.jnew_1 [ (JR.str "Points") ])),
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

