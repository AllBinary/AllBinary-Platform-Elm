module Org.Allbinary.Animation.Vector.CircleFilledAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.vector
-}

import JR
import Org.Allbinary.Animation.Animation as Animation
import Org.Allbinary.Graphics.Color.ColorCompositeInterface as ColorCompositeInterface


jclass : String
jclass =
    "CircleFilledAnimation"


jchain : List String
jchain =
    [ "CircleFilledAnimation" ]
        ++ Animation.jchain
        ++ ColorCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Animation.jfields ++ [ ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 ) ]
        Animation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CircleFilledAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Animation.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")), 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


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
                    JR.exec (JR.invoke "fillRect_4" (JR.local "graphics") [ (JR.local "x"), (JR.local "y"), (JR.thisField "width"), (JR.thisField "height") ]) ])
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

