module Org.Allbinary.Animation.Image.AllBinaryAdjustedJ2SEImageRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AllBinaryJ2SEImageRotationAnimation as AllBinaryJ2SEImageRotationAnimation


jclass : String
jclass =
    "AllBinaryAdjustedJ2SEImageRotationAnimation"


jchain : List String
jchain =
    [ "AllBinaryAdjustedJ2SEImageRotationAnimation" ]
        ++ AllBinaryJ2SEImageRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryJ2SEImageRotationAnimation.jfields ++ [ ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "init_2", jm_init_2 )
        , ( "setDx_1", jm_setDx_1 )
        , ( "getDx_0", jm_getDx_0 )
        , ( "setDy_1", jm_setDy_1 )
        , ( "getDy_0", jm_getDy_0 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        AllBinaryJ2SEImageRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryAdjustedJ2SEImageRotationAnimation"
        [ ( "jm_init_2", jm_init_2 ), ( "jm_setDx_1", jm_setDx_1 ), ( "jm_getDx_0", jm_getDx_0 ), ( "jm_setDy_1", jm_setDy_1 ), ( "jm_getDy_0", jm_getDy_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "image", "" ), ( "angleInfo", "" ), ( "totalAngle", "S" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryJ2SEImageRotationAnimation.jinit_5 JR.this [ (JR.local "originalImage"), (JR.local "image"), (JR.local "angleInfo"), (JR.local "totalAngle"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "dx"), (JR.local "dy") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ])
        (jregister jheap)
        jthis
        jargs


jm_setDx_1 : JR.Method
jm_setDx_1 jheap jthis jargs =
    JR.method [ ( "dx", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDx_0 : JR.Method
jm_getDx_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dx") ])
        (jregister jheap)
        jthis
        jargs


jm_setDy_1 : JR.Method
jm_setDy_1 jheap jthis jargs =
    JR.method [ ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDy_0 : JR.Method
jm_getDy_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dy") ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia AllBinaryJ2SEImageRotationAnimation.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "dy")) ]) ])
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

