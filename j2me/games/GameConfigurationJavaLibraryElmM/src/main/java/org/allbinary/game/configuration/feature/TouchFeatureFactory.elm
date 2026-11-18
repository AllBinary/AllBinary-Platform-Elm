module Org.Allbinary.Game.Configuration.Feature.TouchFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.TouchFeature as TouchFeature


jclass : String
jclass =
    "TouchFeatureFactory"


jchain : List String
jchain =
    [ "TouchFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TOUCH_ENABLED", JR.defaultOf "" ), ( "SHOW_SCREEN_BUTTONS", JR.defaultOf "" ), ( "AUTO_HIDE_SHOW_SCREEN_BUTTONS", JR.defaultOf "" ), ( "HIDE_SCREEN_BUTTONS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TouchFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TOUCH_ENABLED" "" JR.this (JR.new TouchFeature.jnew_1 [ (JR.str "Touch Enabled") ])),
                JR.exec (JR.setField "SHOW_SCREEN_BUTTONS" "" JR.this (JR.new TouchFeature.jnew_1 [ (JR.str "Show") ])),
                JR.exec (JR.setField "AUTO_HIDE_SHOW_SCREEN_BUTTONS" "" JR.this (JR.new TouchFeature.jnew_1 [ (JR.str "Auto Hide (One Level)") ])),
                JR.exec (JR.setField "HIDE_SCREEN_BUTTONS" "" JR.this (JR.new TouchFeature.jnew_1 [ (JR.str "Hide") ])),
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

