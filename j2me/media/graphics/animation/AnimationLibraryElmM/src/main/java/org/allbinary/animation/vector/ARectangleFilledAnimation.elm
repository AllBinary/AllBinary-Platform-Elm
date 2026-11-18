module Org.Allbinary.Animation.Vector.ARectangleFilledAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.vector
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Animation.Vector.RectangleFilledAnimation as RectangleFilledAnimation


jclass : String
jclass =
    "ARectangleFilledAnimation"


jchain : List String
jchain =
    [ "ARectangleFilledAnimation" ]
        ++ RectangleFilledAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    RectangleFilledAnimation.jfields ++ [ ( "x", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        RectangleFilledAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ARectangleFilledAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect RectangleFilledAnimation.jinit_3 JR.this [ (JR.int 0), (JR.int 0), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "unusedX", "I" ), ( "unusedY", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia RectangleFilledAnimation.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.thisField "x"), (JR.thisField "y") ]) ])
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

