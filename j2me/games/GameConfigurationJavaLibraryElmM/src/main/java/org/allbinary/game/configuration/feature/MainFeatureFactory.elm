module Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.Feature as Feature


jclass : String
jclass =
    "MainFeatureFactory"


jchain : List String
jchain =
    [ "MainFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "FULL_SCREEN", JR.defaultOf "" ), ( "TITLE_BAR", JR.defaultOf "" ), ( "STATIC", JR.defaultOf "" ), ( "LOAD_ONDEMAND", JR.defaultOf "" ), ( "LOAD_ALL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MainFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MainFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "FULL_SCREEN" "" JR.this (JR.new Feature.jnew_1 [ (JR.str "Full Screen") ])),
                JR.exec (JR.setField "TITLE_BAR" "" JR.this (JR.new Feature.jnew_1 [ (JR.str "Title Bar") ])),
                JR.exec (JR.setField "STATIC" "" JR.this (JR.new Feature.jnew_1 [ (JR.str "Static Dependent Feature") ])),
                JR.exec (JR.setField "LOAD_ONDEMAND" "" JR.this (JR.new Feature.jnew_1 [ (JR.str "Load OnDemand") ])),
                JR.exec (JR.setField "LOAD_ALL" "" JR.this (JR.new Feature.jnew_1 [ (JR.str "Load All") ])),
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

