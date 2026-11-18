module Org.Allbinary.Game.Collision.CollisionThreedProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollisionProcessor as CollisionProcessor


jclass : String
jclass =
    "CollisionThreedProcessor"


jchain : List String
jchain =
    [ "CollisionThreedProcessor" ]
        ++ CollisionProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollisionProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isCollision_2", jm_isCollision_2 ) ]
        CollisionProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollisionThreedProcessor"
        [ ( "jm_isCollision_2", jm_isCollision_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CollisionProcessor.jinit_0 JR.this []),
            identity ])
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
                    JR.ifElse (JR.or (JR.or (JR.or (JR.or (JR.or (JR.map2 JR.greaterEquals (JR.invoke "getXP_0" (JR.local "myLayer2") []) (JR.invoke "getX2_0" (JR.local "myLayer") [])) (JR.map2 JR.greaterEquals (JR.invoke "getYP_0" (JR.local "myLayer2") []) (JR.invoke "getY2_0" (JR.local "myLayer") []))) (JR.map2 JR.lessEquals (JR.invoke "getX2_0" (JR.local "myLayer2") []) (JR.invoke "getXP_0" (JR.local "myLayer") []))) (JR.map2 JR.lessEquals (JR.invoke "getY2_0" (JR.local "myLayer2") []) (JR.invoke "getYP_0" (JR.local "myLayer") []))) (JR.map2 JR.less (JR.invoke "getZP_0" (JR.local "myLayer2") []) (JR.invoke "getZ2_0" (JR.local "myLayer") []))) (JR.map2 JR.greater (JR.invoke "getZ2_0" (JR.local "myLayer2") []) (JR.invoke "getZP_0" (JR.local "myLayer") []))) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
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

