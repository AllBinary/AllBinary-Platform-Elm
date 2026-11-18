module Org.Allbinary.Game.Collision.CollisionProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR



jclass : String
jclass =
    "CollisionProcessor"


jchain : List String
jchain =
    [ "CollisionProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "isCollision_2", jm_isCollision_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollisionProcessor"
        [ ( "jm_isCollision_2", jm_isCollision_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_isCollision_2 : JR.Method
jm_isCollision_2 jheap jthis jargs =
    JR.method [ ( "myLayer", "" ), ( "myLayer2", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

