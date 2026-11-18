module Org.Allbinary.Game.Health.NullHealthListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.health
-}

import JR
import Org.Allbinary.Game.Health.HealthListenerInterface as HealthListenerInterface


jclass : String
jclass =
    "NullHealthListener"


jchain : List String
jchain =
    [ "NullHealthListener" ]
        ++ HealthListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onHealthChange_0", jm_onHealthChange_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullHealthListener"
        [ ( "jm_onHealthChange_0", jm_onHealthChange_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_HEALTH_LISTENER", jstatic_NULL_HEALTH_LISTENER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_HEALTH_LISTENER : JR.M
jstatic_NULL_HEALTH_LISTENER s =
    JR.static "NullHealthListener" jclinit "NULL_HEALTH_LISTENER"
        (JR.new jnew_0 [])
        s


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


jm_onHealthChange_0 : JR.Method
jm_onHealthChange_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

