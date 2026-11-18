module Org.Allbinary.Game.Configuration.Feature.GraphicsFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.GraphicsFeature as GraphicsFeature
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GraphicsFeatureFactory"


jchain : List String
jchain =
    [ "GraphicsFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NONE", JR.defaultOf "" ), ( "TRANSPARENT_IMAGE_CREATION", JR.defaultOf "" ), ( "IMAGE_GRAPHICS", JR.defaultOf "" ), ( "IMAGE_ROTATION_ON_THE_FLY", JR.defaultOf "" ), ( "IMAGE_TO_ARRAY_GRAPHICS", JR.defaultOf "" ), ( "SPRITE_QUARTER_ROTATION_GRAPHICS", JR.defaultOf "" ), ( "SPRITE_FULL_GRAPHICS", JR.defaultOf "" ), ( "VECTOR_GRAPHICS", JR.defaultOf "" ), ( "VECTOR_TO_IMAGE_GRAPHICS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GraphicsFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GraphicsFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NONE" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "TRANSPARENT_IMAGE_CREATION" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "Transparent Image Creation") ])),
                JR.exec (JR.setField "IMAGE_GRAPHICS" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "Image Graphics") ])),
                JR.exec (JR.setField "IMAGE_ROTATION_ON_THE_FLY" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "Image Rotated On The Fly") ])),
                JR.exec (JR.setField "IMAGE_TO_ARRAY_GRAPHICS" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "Image To Array Graphics") ])),
                JR.exec (JR.setField "SPRITE_QUARTER_ROTATION_GRAPHICS" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "Sprite Quarter Rotation Graphics") ])),
                JR.exec (JR.setField "SPRITE_FULL_GRAPHICS" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "Sprite Full Rotation Graphics") ])),
                JR.exec (JR.setField "VECTOR_GRAPHICS" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "BasicArrayList Graphics") ])),
                JR.exec (JR.setField "VECTOR_TO_IMAGE_GRAPHICS" "" JR.this (JR.new GraphicsFeature.jnew_1 [ (JR.str "BasicArrayList To Image Graphics") ])),
                identity,
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

