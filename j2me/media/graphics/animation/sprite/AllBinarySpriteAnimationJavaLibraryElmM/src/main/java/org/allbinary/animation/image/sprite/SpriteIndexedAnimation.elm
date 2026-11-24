module Org.Allbinary.Animation.Image.Sprite.SpriteIndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.ColorCompositeInterface as ColorCompositeInterface
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "SpriteIndexedAnimation"


jchain : List String
jchain =
    [ "SpriteIndexedAnimation" ]
        ++ IndexedAnimation.jchain
        ++ ColorCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "sprite", JR.defaultOf "" ), ( "image", JR.defaultOf "" ), ( "basicColorArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "paintFrame_4", jm_paintFrame_4 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paint_1", jm_paint_1 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "isLastFrame_0", jm_isLastFrame_0 )
        , ( "getLastFrame_0", jm_getLastFrame_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "close_0", jm_close_0 )
        , ( "finalize_0", jm_finalize_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpriteIndexedAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_paintFrame_4", jm_paintFrame_4 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_isLastFrame_0", jm_isLastFrame_0 ), ( "jm_getLastFrame_0", jm_getLastFrame_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_finalize_0", jm_finalize_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "sprite", "" ), ( "image", "" ), ( "basicColorArray", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "sprite" "" JR.this (JR.local "sprite")), 
                    JR.exec (JR.setField "image" "" JR.this (JR.local "image")), 
                    JR.exec (JR.setField "basicColorArray" "" JR.this (JR.local "basicColorArray")), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.alength (JR.thisField "basicColorArray")) (JR.int 0)) (JR.map2 JR.notEquals (JR.invoke "getSize_0" JR.this []) (JR.alength (JR.thisField "basicColorArray")))) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "TOTAL_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "getSize_0" JR.this []) ]) [ (JR.str "!=") ]) [ (JR.alength (JR.thisField "basicColorArray")) ]) []) ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "basicColorArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68165 -> (JR.setLocal "index" "I" (JR.lit jwN68165))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "basicColor") (JR.aget (JR.thisField "basicColorArray") (JR.local "index"))) (JR.run [ 
                            JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.local "index") ]), 
                            JR.break ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.alength (JR.thisField "basicColorArray")) (JR.invoke "getFrame_0" JR.this [])) (JR.run [ 
                        JR.return (JR.aget (JR.thisField "basicColorArray") (JR.invoke "getFrame_0" JR.this [])) ]) (JR.run [ 
                        JR.return (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintFrame_4 : JR.Method
jm_paintFrame_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "frame", "I" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.local "frame") ]), 
                    JR.exec (JR.invoke "setPosition_2" (JR.thisField "sprite") [ (JR.local "x"), (JR.local "y") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "sprite") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_2" (JR.thisField "sprite") [ (JR.local "x"), (JR.local "y") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "sprite") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "sprite") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "nextFrame_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "prevFrame_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getRawFrameCount_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "frame", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" (JR.thisField "sprite") [ (JR.local "frame") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getFrame_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_isLastFrame_0 : JR.Method
jm_isLastFrame_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getFrame_0" (JR.thisField "sprite") []) (JR.map2 JR.sub (JR.invoke "getSize_0" JR.this []) (JR.int 1))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLastFrame_0 : JR.Method
jm_getLastFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setSequence_1 : JR.Method
jm_setSequence_1 jheap jthis jargs =
    JR.method [ ( "sequence", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSequence_0 : JR.Method
jm_getSequence_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_finalize_0 : JR.Method
jm_finalize_0 jheap jthis jargs =
    JR.method [] ""
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

