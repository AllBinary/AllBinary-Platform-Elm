module Org.Allbinary.Game.Combat.Damage.ExplosionResources exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.damage
-}

import JR



jclass : String
jclass =
    "ExplosionResources"


jchain : List String
jchain =
    [ "ExplosionResources" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EXPLOSION_90_RESOURCE", JR.defaultOf "" ), ( "EXPLOSION_60_RESOURCE", JR.defaultOf "" ), ( "HALF_EXPLOSION_RESOURCE", JR.defaultOf "" ), ( "THIRD_EXPLOSION_RESOURCE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ExplosionResources"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ExplosionResources" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EXPLOSION_90_RESOURCE" "" JR.this (JR.str "/explosion_sprite_90_by_90.png")),
                JR.exec (JR.setField "EXPLOSION_60_RESOURCE" "" JR.this (JR.str "/explosion_sprite_60_by_60.png")),
                JR.exec (JR.setField "HALF_EXPLOSION_RESOURCE" "" JR.this (JR.str "/explosion_sprite_30_by_30.png")),
                JR.exec (JR.setField "THIRD_EXPLOSION_RESOURCE" "" JR.this (JR.str "/explosion_sprite_15_by_15.png")),
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

