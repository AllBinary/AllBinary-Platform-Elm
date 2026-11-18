module Org.Allbinary.Animation.ColorLessVectorAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Animation.VectorAnimation as VectorAnimation


jclass : String
jclass =
    "ColorLessVectorAnimation"


jchain : List String
jchain =
    [ "ColorLessVectorAnimation" ]
        ++ VectorAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    VectorAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "paintXY_3", jm_paintXY_3 ) ]
        VectorAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ColorLessVectorAnimation"
        [ ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "currentPoints", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect VectorAnimation.jinit_3 JR.this [ (JR.local "currentPoints"), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.local "animationBehavior") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintVectors_3" JR.this [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
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

