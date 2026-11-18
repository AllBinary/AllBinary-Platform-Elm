module Org.Allbinary.Animation.Image.AdjustedImageBaseRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.ImageBaseRotationAnimation as ImageBaseRotationAnimation


jclass : String
jclass =
    "AdjustedImageBaseRotationAnimation"


jchain : List String
jchain =
    [ "AdjustedImageBaseRotationAnimation" ]
        ++ ImageBaseRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageBaseRotationAnimation.jfields ++ [ ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "init_2", jm_init_2 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        ImageBaseRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdjustedImageBaseRotationAnimation"
        [ ( "jm_init_2", jm_init_2 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "angleInfo", "" ), ( "totalAngle", "S" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ImageBaseRotationAnimation.jinit_4 JR.this [ (JR.local "image"), (JR.local "angleInfo"), (JR.local "totalAngle"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "dx"), (JR.local "dy") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "dy")) ]) ])
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

