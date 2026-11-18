module Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.InputFeature as InputFeature


jclass : String
jclass =
    "InputFeatureFactory"


jchain : List String
jchain =
    [ "InputFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "REMOVE_DUPLICATE_KEY_PRESSES", JR.defaultOf "" ), ( "INPUT_MAPPING", JR.defaultOf "" ), ( "MULTI_KEY_PRESS", JR.defaultOf "" ), ( "SINGLE_KEY_REPEAT_PRESS", JR.defaultOf "" ), ( "SINGLE_KEY_PRESS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isSingleKeyProcessing_0", jm_isSingleKeyProcessing_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isSingleKeyProcessing_0", jm_isSingleKeyProcessing_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InputFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "REMOVE_DUPLICATE_KEY_PRESSES" "" JR.this (JR.new InputFeature.jnew_1 [ (JR.str "Remove Duplicate Key Presses") ])),
                JR.exec (JR.setField "INPUT_MAPPING" "" JR.this (JR.new InputFeature.jnew_1 [ (JR.str "Input Mapping") ])),
                JR.exec (JR.setField "MULTI_KEY_PRESS" "" JR.this (JR.new InputFeature.jnew_1 [ (JR.str "Multi Key Press") ])),
                JR.exec (JR.setField "SINGLE_KEY_REPEAT_PRESS" "" JR.this (JR.new InputFeature.jnew_1 [ (JR.str "Single Key Repeat Press") ])),
                JR.exec (JR.setField "SINGLE_KEY_PRESS" "" JR.this (JR.new InputFeature.jnew_1 [ (JR.str "Single Key Press") ])),
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


jm_isSingleKeyProcessing_0 : JR.Method
jm_isSingleKeyProcessing_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.or (JR.invoke "isFeature_1" (JR.local "features") [ (JR.thisField "SINGLE_KEY_REPEAT_PRESS") ]) (JR.invoke "isFeature_1" (JR.local "features") [ (JR.thisField "SINGLE_KEY_PRESS") ])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
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

