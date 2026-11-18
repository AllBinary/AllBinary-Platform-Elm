module Org.Allbinary.Animation.Text.AdjustCustomTextAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.text
-}

import JR
import Org.Allbinary.Animation.Text.CustomTextAnimation as CustomTextAnimation


jclass : String
jclass =
    "AdjustCustomTextAnimation"


jchain : List String
jchain =
    [ "AdjustCustomTextAnimation" ]
        ++ CustomTextAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    CustomTextAnimation.jfields ++ [ ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getDx_0", jm_getDx_0 )
        , ( "setDx_1", jm_setDx_1 )
        , ( "getDy_0", jm_getDy_0 )
        , ( "setDy_1", jm_setDy_1 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        CustomTextAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdjustCustomTextAnimation"
        [ ( "jm_getDx_0", jm_getDx_0 ), ( "jm_setDx_1", jm_setDx_1 ), ( "jm_getDy_0", jm_getDy_0 ), ( "jm_setDy_1", jm_setDy_1 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "fontSize", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CustomTextAnimation.jinit_3 JR.this [ (JR.local "text"), (JR.local "fontSize"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getDx_0 : JR.Method
jm_getDx_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dx") ])
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


jm_getDy_0 : JR.Method
jm_getDy_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dy") ])
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


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CustomTextAnimation.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "dy")) ]) ])
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

