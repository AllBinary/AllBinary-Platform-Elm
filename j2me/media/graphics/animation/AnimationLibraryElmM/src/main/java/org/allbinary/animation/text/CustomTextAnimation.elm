module Org.Allbinary.Animation.Text.CustomTextAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.text
-}

import JR
import Javax.Microedition.Lcdui.Font as Font
import Org.Allbinary.Graphics.Font.FontDebugFactory as FontDebugFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Animation.Text.TextAnimation as TextAnimation
import Org.Allbinary.Animation.Text.TextInterface as TextInterface


jclass : String
jclass =
    "CustomTextAnimation"


jchain : List String
jchain =
    [ "CustomTextAnimation" ]
        ++ TextAnimation.jchain
        ++ TextInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    TextAnimation.jfields ++ [ ( "fontDebugFactory", JR.defaultOf "" ), ( "fontSize", JR.defaultOf "I" ), ( "font", JR.defaultOf "" ), ( "lastText", JR.defaultOf "" ), ( "hasChanged", JR.defaultOf "Z" ), ( "textWidth", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "paintXY_3", jm_paintXY_3 )
        , ( "setScale_2", jm_setScale_2 )
        , ( "setTextWithOnMeasure_2", jm_setTextWithOnMeasure_2 )
        , ( "setText_1", jm_setText_1 )
        , ( "getText_0", jm_getText_0 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "getFontHeight_0", jm_getFontHeight_0 ) ]
        TextAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomTextAnimation"
        [ ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_setScale_2", jm_setScale_2 ), ( "jm_setTextWithOnMeasure_2", jm_setTextWithOnMeasure_2 ), ( "jm_setText_1", jm_setText_1 ), ( "jm_getText_0", jm_getText_0 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getFontHeight_0", jm_getFontHeight_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "fontSize", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect TextAnimation.jinit_2 JR.this [ (JR.local "text"), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "fontDebugFactory" "" JR.this (JR.callStatic FontDebugFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "lastText" "" JR.this (JR.field "INIT_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "hasChanged" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "fontSize" "I" JR.this (JR.local "fontSize")), 
                    JR.exec (JR.setField "font" "" JR.this (JR.callStatic Font.jm_getFont_3 [ Font.jstatic_FACE_SYSTEM, Font.jstatic_STYLE_PLAIN, (JR.local "fontSize") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "existingFont" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.invoke "setFont_2" (JR.thisField "fontDebugFactory") [ (JR.thisField "font"), (JR.local "graphics") ]), 
                    JR.exec (JR.callVia TextAnimation.jvtable "paintXYNoUpdate_3" JR.this [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]), 
                    JR.exec (JR.invoke "setFont_2" (JR.thisField "fontDebugFactory") [ (JR.local "existingFont"), (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setScale_2 : JR.Method
jm_setScale_2 jheap jthis jargs =
    JR.method [ ( "scaleX", "F" ), ( "scaleY", "F" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "scaleX") (JR.local "scaleY")) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) identity, 
                    JR.exec (JR.setField "hasChanged" "Z" JR.this (JR.bool True)), 
                    JR.exec (JR.setField "font" "" JR.this (JR.callStatic Font.jm_getFont_3 [ Font.jstatic_FACE_SYSTEM, Font.jstatic_STYLE_PLAIN, (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.thisField "fontSize")) (JR.local "scaleX")))) ])) ])
        (jregister jheap)
        jthis
        jargs


jm_setTextWithOnMeasure_2 : JR.Method
jm_setTextWithOnMeasure_2 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "textChangeListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia TextAnimation.jvtable "setTextWithOnMeasure_2" JR.this [ (JR.local "text"), (JR.local "textChangeListener") ]) ])
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
                        JR.exec (JR.callVia TextAnimation.jvtable "setText_1" JR.this [ (JR.local "text") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getText_0 : JR.Method
jm_getText_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "lastText") ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.ifElse (JR.thisField "hasChanged") (JR.run [ 
                        JR.exec (JR.setField "textWidth" "I" JR.this (JR.invoke "stringWidth_1" (JR.thisField "font") [ (JR.aget (JR.thisField "textArrayP") (JR.int 0)) ])), 
                        JR.exec (JR.setField "hasChanged" "Z" JR.this (JR.bool False)) ]) identity, 
                    JR.return (JR.thisField "textWidth") ])
        (jregister jheap)
        jthis
        jargs


jm_getFontHeight_0 : JR.Method
jm_getFontHeight_0 jheap jthis jargs =
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

