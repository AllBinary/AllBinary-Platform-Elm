module Org.Allbinary.Game.Collision.CollisionTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollisionType as CollisionType


jclass : String
jclass =
    "CollisionTypeFactory"


jchain : List String
jchain =
    [ "CollisionTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NONE", JR.defaultOf "" ), ( "DAMAGE", JR.defaultOf "" ), ( "PICKUP", JR.defaultOf "" ), ( "COLLISION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollisionTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "CollisionTypeFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NONE" "" JR.this (JR.new CollisionType.jnew_1 [ (JR.str "None") ])),
                JR.exec (JR.setField "DAMAGE" "" JR.this (JR.new CollisionType.jnew_1 [ (JR.str "Damage") ])),
                JR.exec (JR.setField "PICKUP" "" JR.this (JR.new CollisionType.jnew_1 [ (JR.str "Pickup") ])),
                JR.exec (JR.setField "COLLISION" "" JR.this (JR.new CollisionType.jnew_1 [ (JR.str "Collision") ])),
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
                    JR.return jstatic_SINGLETON ])
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

