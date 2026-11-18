module Org.Allbinary.Animation.Vector.RectangleAdjustedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.vector
-}

import JR
import Org.Allbinary.Animation.Animation as Animation
import Org.Allbinary.Graphics.Color.ColorCompositeInterface as ColorCompositeInterface


jclass : String
jclass =
    "RectangleAdjustedAnimation"


jchain : List String
jchain =
    [ "RectangleAdjustedAnimation" ]
        ++ Animation.jchain
        ++ ColorCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Animation.jfields ++ [ ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ), ( "offsetX", JR.defaultOf "I" ), ( "offsetY", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "setWidth_1", jm_setWidth_1 )
        , ( "setHeight_1", jm_setHeight_1 )
        , ( "setOffsetX_1", jm_setOffsetX_1 )
        , ( "setOffsetY_1", jm_setOffsetY_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 ) ]
        Animation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RectangleAdjustedAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_setWidth_1", jm_setWidth_1 ), ( "jm_setHeight_1", jm_setHeight_1 ), ( "jm_setOffsetX_1", jm_setOffsetX_1 ), ( "jm_setOffsetY_1", jm_setOffsetY_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "offsetX", "I" ), ( "offsetY", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Animation.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")), 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")), 
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
                    JR.exec (JR.invoke "drawRect_4" (JR.local "graphics") [ (JR.map2 JR.add (JR.local "x") (JR.thisField "offsetX")), (JR.map2 JR.add (JR.local "y") (JR.thisField "offsetY")), (JR.thisField "width"), (JR.thisField "height") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setWidth_1 : JR.Method
jm_setWidth_1 jheap jthis jargs =
    JR.method [ ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")) ])
        (jregister jheap)
        jthis
        jargs


jm_setHeight_1 : JR.Method
jm_setHeight_1 jheap jthis jargs =
    JR.method [ ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")) ])
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
                    JR.return (JR.callVia Animation.jvtable "getBasicColorP_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Animation.jvtable "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ])
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

