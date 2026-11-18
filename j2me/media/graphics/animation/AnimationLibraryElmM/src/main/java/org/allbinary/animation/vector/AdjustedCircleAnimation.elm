module Org.Allbinary.Animation.Vector.AdjustedCircleAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.vector
-}

import JR
import Org.Allbinary.AndroidUtil as AndroidUtil
import Org.Allbinary.Animation.Vector.CircleAnimation as CircleAnimation


jclass : String
jclass =
    "AdjustedCircleAnimation"


jchain : List String
jchain =
    [ "AdjustedCircleAnimation" ]
        ++ CircleAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    CircleAnimation.jfields ++ [ ( "xAdjustment", JR.defaultOf "I" ), ( "yAdjustment", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createAnimation_5", jm_createAnimation_5 )
        , ( "createW_4", jm_createW_4 )
        , ( "initXY_2", jm_initXY_2 )
        , ( "init_1", jm_init_1 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        CircleAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdjustedCircleAnimation"
        [ ( "jm_createAnimation_5", jm_createAnimation_5 ), ( "jm_createW_4", jm_createW_4 ), ( "jm_initXY_2", jm_initXY_2 ), ( "jm_init_1", jm_init_1 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CircleAnimation.jinit_3 JR.this [ (JR.local "width"), (JR.local "height"), (JR.local "basicColor") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_createAnimation_5 : JR.Method
jm_createAnimation_5 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "xAdjustment", "I" ), ( "yAdjustment", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "adjustedCircleAnimation" "" (JR.new jnew_3 [ (JR.local "width"), (JR.local "height"), (JR.local "basicColor") ]), 
                    JR.exec (JR.invoke "initXY_2" (JR.local "adjustedCircleAnimation") [ (JR.local "xAdjustment"), (JR.local "yAdjustment") ]), 
                    JR.return (JR.local "adjustedCircleAnimation") ])
        (jregister jheap)
        jthis
        jargs


jm_createW_4 : JR.Method
jm_createW_4 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "innerWidth", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "adjustedCircleAnimation" "" (JR.new jnew_3 [ (JR.local "width"), (JR.local "height"), (JR.local "basicColor") ]), 
                    JR.exec (JR.invoke "init_1" (JR.local "adjustedCircleAnimation") [ (JR.local "innerWidth") ]), 
                    JR.return (JR.local "adjustedCircleAnimation") ])
        (jregister jheap)
        jthis
        jargs


jm_initXY_2 : JR.Method
jm_initXY_2 jheap jthis jargs =
    JR.method [ ( "xAdjustment", "I" ), ( "yAdjustment", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "xAdjustment" "I" JR.this (JR.local "xAdjustment")), 
                    JR.exec (JR.setField "yAdjustment" "I" JR.this (JR.local "yAdjustment")) ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "innerWidth", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) (JR.run [ 
                        JR.declare "widthPortion" "I" ((JR.map2 JR.div ((JR.map2 JR.mul ((JR.map2 JR.div (JR.local "innerWidth") (JR.int 3))) (JR.int 10))) (JR.int 7))), 
                        JR.exec (JR.setField "xAdjustment" "I" JR.this (JR.map JR.neg ((JR.map2 JR.sub ((JR.map2 JR.shr (JR.thisField "width") (JR.int 1))) (JR.local "widthPortion"))))), 
                        JR.exec (JR.setField "yAdjustment" "I" JR.this (JR.thisField "xAdjustment")) ]) (JR.run [ 
                        JR.exec (JR.setField "xAdjustment" "I" JR.this (JR.map JR.neg ((JR.map2 JR.sub ((JR.map2 JR.shr (JR.thisField "width") (JR.int 1))) (JR.local "innerWidth"))))), 
                        JR.exec (JR.setField "yAdjustment" "I" JR.this (JR.thisField "xAdjustment")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []), (JR.invoke "getColor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "drawArc_6" (JR.local "graphics") [ (JR.map2 JR.add (JR.local "x") (JR.thisField "xAdjustment")), (JR.map2 JR.add (JR.local "y") (JR.thisField "yAdjustment")), (JR.thisField "width"), (JR.thisField "height"), (JR.int 0), (JR.thisField "TOTAL_ANGLE") ]) ])
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

