module Org.Allbinary.Game.Collision.CollidableBaseBehaviorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollidableBaseBehaviorFactoryInterface as CollidableBaseBehaviorFactoryInterface


jclass : String
jclass =
    "CollidableBaseBehaviorFactory"


jchain : List String
jchain =
    [ "CollidableBaseBehaviorFactory" ]
        ++ CollidableBaseBehaviorFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "createBehavior_0", jm_createBehavior_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableBaseBehaviorFactory"
        [ ( "jm_createBehavior_0", jm_createBehavior_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_createBehavior_0 : JR.Method
jm_createBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
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

