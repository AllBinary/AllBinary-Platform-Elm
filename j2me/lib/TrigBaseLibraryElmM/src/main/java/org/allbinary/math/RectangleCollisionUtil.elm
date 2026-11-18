module Org.Allbinary.Math.RectangleCollisionUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR



jclass : String
jclass =
    "RectangleCollisionUtil"


jchain : List String
jchain =
    [ "RectangleCollisionUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isCollision_8", jm_isCollision_8 )
        , ( "isInside_6", jm_isInside_6 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RectangleCollisionUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isCollision_8", jm_isCollision_8 ), ( "jm_isInside_6", jm_isInside_6 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "RectangleCollisionUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_isCollision_8 : JR.Method
jm_isCollision_8 jheap jthis jargs =
    JR.method [ ( "rectX1", "I" ), ( "rectY1", "I" ), ( "rectX2", "I" ), ( "rectY2", "I" ), ( "rect2X1", "I" ), ( "rect2Y1", "I" ), ( "rect2X2", "I" ), ( "rect2Y2", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.or (JR.or (JR.map2 JR.greaterEquals (JR.local "rect2X1") (JR.local "rectX2")) (JR.map2 JR.greaterEquals (JR.local "rect2Y1") (JR.local "rectY2"))) (JR.map2 JR.lessEquals (JR.local "rect2X2") (JR.local "rectX1"))) (JR.map2 JR.lessEquals (JR.local "rect2Y2") (JR.local "rectY1"))) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isInside_6 : JR.Method
jm_isInside_6 jheap jthis jargs =
    JR.method [ ( "rectX1", "I" ), ( "rectY1", "I" ), ( "rectX2", "I" ), ( "rectY2", "I" ), ( "x", "I" ), ( "y", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.or (JR.or (JR.map2 JR.greaterEquals (JR.local "x") (JR.local "rectX2")) (JR.map2 JR.greaterEquals (JR.local "y") (JR.local "rectY2"))) (JR.map2 JR.lessEquals (JR.local "x") (JR.local "rectX1"))) (JR.map2 JR.lessEquals (JR.local "y") (JR.local "rectY1"))) (JR.run [ 
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

