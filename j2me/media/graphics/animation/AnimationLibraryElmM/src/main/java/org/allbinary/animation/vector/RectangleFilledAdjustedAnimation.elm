module Org.Allbinary.Animation.Vector.RectangleFilledAdjustedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.vector
-}

import JR
import Org.Allbinary.Graphics.Color.ColorCompositeInterface as ColorCompositeInterface
import Org.Allbinary.Animation.Vector.RectangleFilledAnimation as RectangleFilledAnimation


jclass : String
jclass =
    "RectangleFilledAdjustedAnimation"


jchain : List String
jchain =
    [ "RectangleFilledAdjustedAnimation" ]
        ++ RectangleFilledAnimation.jchain
        ++ ColorCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    RectangleFilledAnimation.jfields ++ [ ( "offsetX", JR.defaultOf "I" ), ( "offsetY", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "setOffsetX_1", jm_setOffsetX_1 )
        , ( "setOffsetY_1", jm_setOffsetY_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 ) ]
        RectangleFilledAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RectangleFilledAdjustedAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_setOffsetX_1", jm_setOffsetX_1 ), ( "jm_setOffsetY_1", jm_setOffsetY_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "offsetX", "I" ), ( "offsetY", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RectangleFilledAnimation.jinit_3 JR.this [ (JR.local "width"), (JR.local "height"), (JR.local "basicColor") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "offsetX" "I" JR.this (JR.local "offsetX")), 
                    JR.exec (JR.setField "offsetY" "I" JR.this (JR.local "offsetY")), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


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
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []), (JR.invoke "getColor_0" JR.this []) ]), 
                    JR.exec (JR.callVia RectangleFilledAnimation.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "offsetX")), (JR.map2 JR.add (JR.local "y") (JR.thisField "offsetY")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setOffsetX_1 : JR.Method
jm_setOffsetX_1 jheap jthis jargs =
    JR.method [ ( "offsetX", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "offsetX" "I" JR.this (JR.local "offsetX")) ])
        (jregister jheap)
        jthis
        jargs


jm_setOffsetY_1 : JR.Method
jm_setOffsetY_1 jheap jthis jargs =
    JR.method [ ( "offsetY", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "offsetY" "I" JR.this (JR.local "offsetY")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callVia RectangleFilledAnimation.jvtable "getBasicColorP_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia RectangleFilledAnimation.jvtable "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ])
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

