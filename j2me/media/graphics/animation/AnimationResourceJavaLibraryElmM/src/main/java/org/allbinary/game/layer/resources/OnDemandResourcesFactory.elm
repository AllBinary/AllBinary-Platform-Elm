module Org.Allbinary.Game.Layer.Resources.OnDemandResourcesFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.resources
-}

import JR
import Org.Allbinary.Game.Layer.Resources.OnDemandResources as OnDemandResources


jclass : String
jclass =
    "OnDemandResourcesFactory"


jchain : List String
jchain =
    [ "OnDemandResourcesFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "size_0", jm_size_0 )
        , ( "remove_1", jm_remove_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OnDemandResourcesFactory"
        [ ( "jm_size_0", jm_size_0 ), ( "jm_remove_1", jm_remove_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_size_0 : JR.Method
jm_size_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "layerId", "I" ) ] ""
        (JR.run [ 
                    JR.return OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES ])
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

