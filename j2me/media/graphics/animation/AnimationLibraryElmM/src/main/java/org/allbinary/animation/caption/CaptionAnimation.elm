module Org.Allbinary.Animation.Caption.CaptionAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.caption
-}

import JR
import Org.Allbinary.Animation.Animation as Animation


jclass : String
jclass =
    "CaptionAnimation"


jchain : List String
jchain =
    [ "CaptionAnimation" ]
        ++ Animation.jchain


jfields : List ( String, JR.JValue )
jfields =
    Animation.jfields ++ [ ( "animationInterface", JR.defaultOf "" ), ( "overlayAnimationInterface", JR.defaultOf "" ), ( "captionDx", JR.defaultOf "I" ), ( "captionDy", JR.defaultOf "I" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintThreedXYZ_4", jm_paintThreedXYZ_4 ) ]
        Animation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CaptionAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintThreedXYZ_4", jm_paintThreedXYZ_4 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "overlayAnimationInterface", "" ), ( "captionDx", "I" ), ( "captionDy", "I" ), ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Animation.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "overlayAnimationInterface" "" JR.this (JR.local "overlayAnimationInterface")), 
                    JR.exec (JR.setField "captionDx" "I" JR.this (JR.local "captionDx")), 
                    JR.exec (JR.setField "captionDy" "I" JR.this (JR.local "captionDy")), 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")) ]), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "overlayAnimationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")) (JR.thisField "dx")), (JR.map2 JR.add (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")) (JR.thisField "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreedXYZ_4 : JR.Method
jm_paintThreedXYZ_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")), (JR.local "z") ]), 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "overlayAnimationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")) (JR.thisField "dx")), (JR.map2 JR.add (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")) (JR.thisField "dy")), (JR.local "z") ]) ])
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

