module Org.Allbinary.Math.RectangleCollisionPointUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import Org.Allbinary.Math.RectangleCollisionUtil as RectangleCollisionUtil


jclass : String
jclass =
    "RectangleCollisionPointUtil"


jchain : List String
jchain =
    [ "RectangleCollisionPointUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "allPointsInside_5", jm_allPointsInside_5 )
        , ( "allPointsInsideCell_7", jm_allPointsInsideCell_7 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RectangleCollisionPointUtil"
        [ ( "jm_allPointsInside_5", jm_allPointsInside_5 ), ( "jm_allPointsInsideCell_7", jm_allPointsInsideCell_7 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_allPointsInside_5 : JR.Method
jm_allPointsInside_5 jheap jthis jargs =
    JR.method [ ( "rectX1", "I" ), ( "rectY1", "I" ), ( "rectX2", "I" ), ( "rectY2", "I" ), ( "list", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "rectangleCollisionUtil" "" (JR.callStatic RectangleCollisionUtil.jm_getInstance_0 []), 
                    JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.local "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN66337 -> (JR.setLocal "index" "I" (JR.lit jwN66337))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "point" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isInside_6" (JR.local "rectangleCollisionUtil") [ (JR.local "rectX1"), (JR.local "rectY1"), (JR.local "rectX2"), (JR.local "rectY2"), (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []) ])) (JR.run [ 
                            JR.return (JR.bool False) ]) identity ]) ], 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_allPointsInsideCell_7 : JR.Method
jm_allPointsInsideCell_7 jheap jthis jargs =
    JR.method [ ( "rectX1", "I" ), ( "rectY1", "I" ), ( "rectX2", "I" ), ( "rectY2", "I" ), ( "list", "" ), ( "xCellSize", "I" ), ( "yCellSize", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "rectangleCollisionUtil" "" (JR.callStatic RectangleCollisionUtil.jm_getInstance_0 []), 
                    JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.local "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN66785 -> (JR.setLocal "index" "I" (JR.lit jwN66785))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "point" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isInside_6" (JR.local "rectangleCollisionUtil") [ (JR.local "rectX1"), (JR.local "rectY1"), (JR.local "rectX2"), (JR.local "rectY2"), (JR.map2 JR.mul (JR.invoke "getX_0" (JR.local "point") []) (JR.local "xCellSize")), (JR.map2 JR.mul (JR.invoke "getY_0" (JR.local "point") []) (JR.local "yCellSize")) ])) (JR.run [ 
                            JR.return (JR.bool False) ]) identity ]) ], 
                    JR.return (JR.bool True) ])
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

