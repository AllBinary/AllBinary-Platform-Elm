module Org.Allbinary.Animation.Text.CustomTextBoxIndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.text
-}

import JR
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Game.Input.Event.RawKeyEventListener as RawKeyEventListener
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Animation.Text.TextChangeListener as TextChangeListener
import Org.Allbinary.Animation.Text.TextInterface as TextInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface


jclass : String
jclass =
    "CustomTextBoxIndexedAnimation"


jchain : List String
jchain =
    [ "CustomTextBoxIndexedAnimation" ]
        ++ IndexedAnimation.jchain
        ++ RawKeyEventListener.jchain
        ++ UpdateMyFontInterface.jchain
        ++ TextInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "customTextBox", JR.defaultOf "" ), ( "lastText", JR.defaultOf "" ), ( "hasChanged", JR.defaultOf "Z" ), ( "textChangeListener", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "setBackgroundBasicColorP_1", jm_setBackgroundBasicColorP_1 )
        , ( "setTextWithOnMeasure_2", jm_setTextWithOnMeasure_2 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "setText_1", jm_setText_1 )
        , ( "getText_0", jm_getText_0 )
        , ( "onEventRaw_3", jm_onEventRaw_3 )
        , ( "getFontHeight_0", jm_getFontHeight_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintThreedXYZ_4", jm_paintThreedXYZ_4 )
        , ( "getWidth_0", jm_getWidth_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomTextBoxIndexedAnimation"
        [ ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_setBackgroundBasicColorP_1", jm_setBackgroundBasicColorP_1 ), ( "jm_setTextWithOnMeasure_2", jm_setTextWithOnMeasure_2 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_setText_1", jm_setText_1 ), ( "jm_getText_0", jm_getText_0 ), ( "jm_onEventRaw_3", jm_onEventRaw_3 ), ( "jm_getFontHeight_0", jm_getFontHeight_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintThreedXYZ_4", jm_paintThreedXYZ_4 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "customTextBox", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]),
                JR.exec (JR.setField "lastText" "" JR.this (JR.field "INIT_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "hasChanged" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "textChangeListener" "" JR.this (JR.callStatic TextChangeListener.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "customTextBox" "" JR.this (JR.local "customTextBox")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setForegroundBasicColorP_1" (JR.invoke "getTextFieldItem_0" (JR.thisField "customTextBox") []) [ (JR.local "basicColor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setBackgroundBasicColorP_1 : JR.Method
jm_setBackgroundBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setBackgroundBasicColorP_1" (JR.invoke "getTextFieldItem_0" (JR.thisField "customTextBox") []) [ (JR.local "basicColor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setTextWithOnMeasure_2 : JR.Method
jm_setTextWithOnMeasure_2 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "textChangeListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.local "text") ]), 
                    JR.exec (JR.setField "textChangeListener" "" JR.this (JR.local "textChangeListener")) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.invoke "onMeasure_0" (JR.thisField "textChangeListener") []), 
                    JR.exec (JR.setField "textChangeListener" "" JR.this (JR.callStatic TextChangeListener.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setText_1 : JR.Method
jm_setText_1 jheap jthis jargs =
    JR.method [ ( "text", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "lastText") (JR.local "text")) (JR.run [ 
                        JR.exec (JR.setField "hasChanged" "Z" JR.this (JR.bool True)), 
                        JR.exec (JR.setField "lastText" "" JR.this (JR.local "text")), 
                        JR.exec (JR.invoke "setString_1" (JR.invoke "getTextFieldItem_0" (JR.thisField "customTextBox") []) [ (JR.local "text") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getText_0 : JR.Method
jm_getText_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getString_0" (JR.invoke "getTextFieldItem_0" (JR.thisField "customTextBox") []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_onEventRaw_3 : JR.Method
jm_onEventRaw_3 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onEventRaw_3" (JR.thisField "customTextBox") [ (JR.local "keyCode"), (JR.local "deviceId"), (JR.local "repeated") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFontHeight_0 : JR.Method
jm_getFontHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getFontHeight_0" (JR.invoke "getTextFieldItem_0" (JR.thisField "customTextBox") []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "customTextBox") [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreedXYZ_4 : JR.Method
jm_paintThreedXYZ_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia IndexedAnimation.jvtable "getWidth_0" JR.this []) ])
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

