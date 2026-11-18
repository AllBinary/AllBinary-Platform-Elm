module Org.Allbinary.Animation.NullRotationAnimation2 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Animation.IndexedAnimationBehavior as IndexedAnimationBehavior
import Org.Allbinary.Animation.NullRotationAnimation as NullRotationAnimation


jclass : String
jclass =
    "NullRotationAnimation2"


jchain : List String
jchain =
    [ "NullRotationAnimation2" ]
        ++ NullRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    NullRotationAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "paintXY_3", jm_paintXY_3 ) ]
        NullRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullRotationAnimation2"
        [ ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect NullRotationAnimation.jinit_3 JR.this [ (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.field "QUARTER_TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])) ]), (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.int 4) ]), (JR.new IndexedAnimationBehavior.jnew_2 [ (JR.int 1), (JR.int 250) ]) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        identity
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

