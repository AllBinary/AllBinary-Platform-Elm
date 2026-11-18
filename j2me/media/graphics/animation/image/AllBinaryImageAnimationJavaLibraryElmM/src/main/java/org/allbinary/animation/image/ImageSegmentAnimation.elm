module Org.Allbinary.Animation.Image.ImageSegmentAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Animation.Image.ImageAnimation as ImageAnimation


jclass : String
jclass =
    "ImageSegmentAnimation"


jchain : List String
jchain =
    [ "ImageSegmentAnimation" ]
        ++ ImageAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageAnimation.jfields ++ [ ( "startX", JR.defaultOf "I" ), ( "startY", JR.defaultOf "I" ), ( "drawWidth", JR.defaultOf "I" ), ( "drawHeight", JR.defaultOf "I" ), ( "circularIndexUtil", JR.defaultOf "" ), ( "sequenceArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "getStartX_0", jm_getStartX_0 )
        , ( "setStartX_1", jm_setStartX_1 )
        , ( "getStartY_0", jm_getStartY_0 )
        , ( "setStartY_1", jm_setStartY_1 )
        , ( "getDrawWidth_0", jm_getDrawWidth_0 )
        , ( "setDrawWidth_1", jm_setDrawWidth_1 )
        , ( "getDrawHeight_0", jm_getDrawHeight_0 )
        , ( "setDrawHeight_1", jm_setDrawHeight_1 ) ]
        ImageAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageSegmentAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_getStartX_0", jm_getStartX_0 ), ( "jm_setStartX_1", jm_setStartX_1 ), ( "jm_getStartY_0", jm_getStartY_0 ), ( "jm_setStartY_1", jm_setStartY_1 ), ( "jm_getDrawWidth_0", jm_getDrawWidth_0 ), ( "jm_setDrawWidth_1", jm_setDrawWidth_1 ), ( "jm_getDrawHeight_0", jm_getDrawHeight_0 ), ( "jm_setDrawHeight_1", jm_setDrawHeight_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "sequenceArray", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ImageAnimation.jinit_2 JR.this [ (JR.local "image"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "startX" "I" JR.this (JR.int 0)), 
                    JR.exec (JR.setField "startY" "I" JR.this (JR.int 0)), 
                    JR.exec (JR.setField "drawWidth" "I" JR.this (JR.invoke "getWidth_0" (JR.invoke "getImage_0" JR.this []) [])), 
                    JR.exec (JR.setField "drawHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.invoke "getImage_0" JR.this []) [])), 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.thisField "drawHeight") ])), 
                    JR.exec (JR.setField "sequenceArray" "" JR.this (JR.local "sequenceArray")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "previous_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setIndex_1" (JR.thisField "circularIndexUtil") [ (JR.local "index") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setSequence_1 : JR.Method
jm_setSequence_1 jheap jthis jargs =
    JR.method [ ( "sequenceArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "sequenceArray" "" JR.this (JR.local "sequenceArray")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSequence_0 : JR.Method
jm_getSequence_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "sequenceArray") ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getStartX_0 : JR.Method
jm_getStartX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "startX") ])
        (jregister jheap)
        jthis
        jargs


jm_setStartX_1 : JR.Method
jm_setStartX_1 jheap jthis jargs =
    JR.method [ ( "startX", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "startX" "I" JR.this (JR.local "startX")) ])
        (jregister jheap)
        jthis
        jargs


jm_getStartY_0 : JR.Method
jm_getStartY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "startY") ])
        (jregister jheap)
        jthis
        jargs


jm_setStartY_1 : JR.Method
jm_setStartY_1 jheap jthis jargs =
    JR.method [ ( "startY", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "startY" "I" JR.this (JR.local "startY")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDrawWidth_0 : JR.Method
jm_getDrawWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "drawWidth") ])
        (jregister jheap)
        jthis
        jargs


jm_setDrawWidth_1 : JR.Method
jm_setDrawWidth_1 jheap jthis jargs =
    JR.method [ ( "drawWidth", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "drawWidth" "I" JR.this (JR.local "drawWidth")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDrawHeight_0 : JR.Method
jm_getDrawHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "drawHeight") ])
        (jregister jheap)
        jthis
        jargs


jm_setDrawHeight_1 : JR.Method
jm_setDrawHeight_1 jheap jthis jargs =
    JR.method [ ( "drawHeight", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "drawHeight" "I" JR.this (JR.local "drawHeight")) ])
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

