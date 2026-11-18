module Org.Allbinary.Animation.Text.CustomTextBoxIndexedAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.text
-}

import JR
import Org.Allbinary.Game.Canvas.ABToGBUtil as ABToGBUtil
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.Text.CustomTextBox2 as CustomTextBox2
import Org.Allbinary.Animation.Text.CustomTextBoxIndexedAnimation as CustomTextBoxIndexedAnimation
import Javax.Microedition.Lcdui.Font as Font
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Media.ScaleProperties as ScaleProperties
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Javax.Microedition.Lcdui.TextField as TextField


jclass : String
jclass =
    "CustomTextBoxIndexedAnimationFactory"


jchain : List String
jchain =
    [ "CustomTextBoxIndexedAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "scaleProperties", JR.defaultOf "" ), ( "maxLength", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomTextBoxIndexedAnimationFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "fontSize", "I" ), ( "maxLength", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "scaleProperties" "" JR.this (JR.new ScaleProperties.jnew_0 [])), 
                    JR.exec (JR.andThen (JR.thisField "scaleProperties") (\jtN75702 -> (JR.setField "scaleHeight" "I" (JR.lit jtN75702) (JR.local "fontSize")))), 
                    JR.exec (JR.setField "maxLength" "I" JR.this (JR.local "maxLength")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "abToGBUtil" "" (JR.callStatic ABToGBUtil.jm_getInstance_0 []), 
                    JR.declare "abCanvas" "" (JR.field "abCanvas" (JR.local "abToGBUtil")), 
                    JR.declare "font" "" (JR.callStatic Font.jm_getFont_3 [ Font.jstatic_FACE_SYSTEM, Font.jstatic_STYLE_PLAIN, (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.declare "customTextBox" "" (JR.new CustomTextBox2.jnew_8 [ (JR.invoke "getCustomCommandListener_0" (JR.local "abCanvas") []), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.thisField "maxLength"), TextField.jstatic_ANY, (JR.local "font"), (JR.invoke "getBackgroundBasicColor_0" (JR.invoke "getLayerManager_0" (JR.local "abCanvas") []) []), (JR.invoke "getForegroundBasicColor_0" (JR.invoke "getLayerManager_0" (JR.local "abCanvas") []) []) ]), 
                    JR.return (JR.new CustomTextBoxIndexedAnimation.jnew_1 [ (JR.local "customTextBox") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialScale_1 : JR.Method
jm_setInitialScale_1 jheap jthis jargs =
    JR.method [ ( "scaleProperties", "" ) ] ""
        (JR.run [ 
                    JR.declare "fontSize" "I" (JR.field "scaleHeight" (JR.thisField "scaleProperties")), 
                    JR.exec (JR.setField "scaleProperties" "" JR.this (JR.local "scaleProperties")), 
                    JR.ifElse (JR.map2 JR.less (JR.field "scaleHeight" (JR.thisField "scaleProperties")) (JR.int 6)) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "scaleProperties") (\jtN76466 -> (JR.setField "scaleHeight" "I" (JR.lit jtN76466) (JR.local "fontSize")))) ]) identity ])
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

