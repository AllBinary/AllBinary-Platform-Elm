module Org.Allbinary.Animation.Text.CustomTextAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.text
-}

import JR
import Org.Allbinary.Animation.Text.AdjustCustomTextAnimation as AdjustCustomTextAnimation
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Animation.Text.CustomTextAnimation as CustomTextAnimation
import Javax.Microedition.Lcdui.Font as Font
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Media.ScaleProperties as ScaleProperties


jclass : String
jclass =
    "CustomTextAnimationFactory"


jchain : List String
jchain =
    [ "CustomTextAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "text", JR.defaultOf "" ), ( "initScaleHeight", JR.defaultOf "I" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ), ( "font", JR.defaultOf "" ), ( "scaleProperties", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createDXY_5", jm_createDXY_5 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomTextAnimationFactory"
        [ ( "jm_createDXY_5", jm_createDXY_5 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "fontSize", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "dx" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "dy" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "scaleProperties" "" JR.this (JR.new ScaleProperties.jnew_0 [])), 
                    JR.exec (JR.setField "text" "" JR.this (JR.local "text")), 
                    JR.exec (JR.andThen (JR.thisField "scaleProperties") (\jtN68207 -> (JR.setField "scaleHeight" "I" (JR.lit jtN68207) (JR.map2 JR.sub (JR.local "fontSize") ((JR.map2 JR.div (JR.local "fontSize") (JR.int 4))))))), 
                    JR.exec (JR.setField "initScaleHeight" "I" JR.this (JR.field "scaleHeight" (JR.thisField "scaleProperties"))), 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")), 
                    JR.exec (JR.setField "font" "" JR.this (JR.callStatic Font.jm_getFont_3 [ Font.jstatic_FACE_SYSTEM, Font.jstatic_STYLE_PLAIN, (JR.thisField "initScaleHeight") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_createDXY_5 : JR.Method
jm_createDXY_5 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "fontSize", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "customTextAnimationFactory" "" (JR.new jnew_3 [ (JR.local "text"), (JR.local "fontSize"), (JR.local "animationBehaviorFactory") ]), 
                    JR.exec (JR.andThen (JR.local "customTextAnimationFactory") (\jtN67610 -> (JR.setField "dx" "" (JR.lit jtN67610) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.local "customTextAnimationFactory") (\jtN67643 -> (JR.setField "dy" "" (JR.lit jtN67643) (JR.local "dy")))), 
                    JR.return (JR.local "customTextAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "customTextAnimation" "" (JR.lit (JR.defaultOf "")), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.thisField "dx") (JR.int 0)) (JR.map2 JR.notEquals (JR.thisField "dy") (JR.int 0))) (JR.run [ 
                        JR.exec (JR.setLocal "customTextAnimation" "" (JR.new AdjustCustomTextAnimation.jnew_5 [ (JR.thisField "text"), (JR.field "scaleHeight" (JR.thisField "scaleProperties")), (JR.thisField "dx"), (JR.thisField "dy"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ])) ]) (JR.run [ 
                        JR.exec (JR.setLocal "customTextAnimation" "" (JR.new CustomTextAnimation.jnew_3 [ (JR.thisField "text"), (JR.field "scaleHeight" (JR.thisField "scaleProperties")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ])) ]), 
                    JR.exec (JR.invoke "setBasicColorP_1" (JR.local "customTextAnimation") [ (JR.thisField "basicColor") ]), 
                    JR.return (JR.local "customTextAnimation") ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialScale_1 : JR.Method
jm_setInitialScale_1 jheap jthis jargs =
    JR.method [ ( "scaleProperties", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "stringWidth_1" (JR.thisField "font") [ (JR.thisField "text") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getHeight_0" (JR.thisField "font") []) ])
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

