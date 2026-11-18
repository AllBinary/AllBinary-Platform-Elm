module Org.Allbinary.Animation.Text.TextAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.text
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Threed.SWTJOGLProcessor as SWTJOGLProcessor
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Animation.Text.TextChangeListener as TextChangeListener
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "TextAnimation"


jchain : List String
jchain =
    [ "TextAnimation" ]
        ++ IndexedAnimation.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "textArrayP", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ), ( "fontHeight", JR.defaultOf "I" ), ( "offsetY", JR.defaultOf "I" ), ( "textChangeListener", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintXYNoUpdate_3", jm_paintXYNoUpdate_3 )
        , ( "setTextWithOnMeasure_2", jm_setTextWithOnMeasure_2 )
        , ( "setText_1", jm_setText_1 )
        , ( "getTextArray_0", jm_getTextArray_0 )
        , ( "getFontHeight_0", jm_getFontHeight_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TextAnimation"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintXYNoUpdate_3", jm_paintXYNoUpdate_3 ), ( "jm_setTextWithOnMeasure_2", jm_setTextWithOnMeasure_2 ), ( "jm_setText_1", jm_setText_1 ), ( "jm_getTextArray_0", jm_getTextArray_0 ), ( "jm_getFontHeight_0", jm_getFontHeight_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "textArrayP" "" JR.this (JR.field "ONE_EMPTY_STRING_ARRAY" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                JR.exec (JR.setField "fontHeight" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "offsetY" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "textChangeListener" "" JR.this (JR.callStatic TextChangeListener.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.local "text") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "fontHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.declare "adjustedFontHeight" "I" (JR.cast "I" (JR.map JR.neg ((JR.map2 JR.mul (JR.cast "D" (JR.thisField "fontHeight")) (JR.float 2.00))))), 
                    JR.exec (JR.setField "offsetY" "I" JR.this (JR.cond (JR.invoke "isJOGL_0" (JR.callStatic SWTJOGLProcessor.jm_getInstance_0 []) []) (JR.local "adjustedFontHeight") (JR.int 0))), 
                    JR.exec (JR.invoke "onMeasure_0" (JR.thisField "textChangeListener") []), 
                    JR.exec (JR.setField "textChangeListener" "" JR.this (JR.callStatic TextChangeListener.jm_getInstance_0 [])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


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
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paintXYNoUpdate_3" JR.this [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXYNoUpdate_3 : JR.Method
jm_paintXYNoUpdate_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []), (JR.invoke "getColor_0" JR.this []) ]), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "textArrayP")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68976 -> (JR.setLocal "index" "I" (JR.lit jwN68976))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.aget (JR.thisField "textArrayP") (JR.local "index")), (JR.local "x"), (JR.map2 JR.add (JR.map2 JR.add (JR.local "y") (JR.thisField "offsetY")) ((JR.map2 JR.mul (JR.local "index") (JR.thisField "fontHeight")))), (JR.thisField "anchor") ]) ]) ] ])
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


jm_setText_1 : JR.Method
jm_setText_1 jheap jthis jargs =
    JR.method [ ( "text", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "text") []) (JR.int 0)) (JR.run [ 
                        JR.declare "index" "I" (JR.int 0), 
                        JR.declare "startIndex" "I" (JR.int 0), 
                        JR.declare "endIndex" "I" (JR.int 0), 
                        JR.while (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "startIndex" "I" (JR.local "index")), 
                            JR.exec (JR.setLocal "index" "I" (JR.invoke "indexOf_2" (JR.local "text") [ (JR.char 10), (JR.local "startIndex") ])), 
                            JR.exec (JR.setLocal "endIndex" "I" (JR.local "index")), 
                            JR.ifElse (JR.map2 JR.less (JR.local "index") (JR.int 0)) (JR.run [ 
                                JR.exec (JR.setLocal "endIndex" "I" (JR.invoke "length_0" (JR.local "text") [])) ]) identity, 
                            JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.invoke "substring_2" (JR.local "text") [ (JR.local "startIndex"), (JR.local "endIndex") ]) ]), 
                            JR.ifElse (JR.map2 JR.less (JR.local "index") (JR.int 0)) (JR.run [ 
                                JR.break ]) identity, 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN69619 -> (JR.setLocal "index" "I" (JR.lit jwN69619))) JR.increment) ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.run [ 
                        JR.declare "textArray" "" (JR.newArray "" [ (JR.invoke "size_0" (JR.local "list") []) ]), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69991 -> (JR.setLocal "index" "I" (JR.lit jwN69991))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "textArray") (\jaN69875 -> JR.andThen (JR.local "index") (\jiN69875 -> (JR.aset (JR.lit jaN69875) (JR.lit jiN69875) (JR.invoke "get_1" (JR.local "list") [ (JR.local "index") ]))))) ]) ], 
                        JR.exec (JR.setField "textArrayP" "" JR.this (JR.local "textArray")) ]) (JR.run [ 
                        JR.exec (JR.setField "textArrayP" "" JR.this (JR.field "ONE_EMPTY_STRING_ARRAY" (JR.callStatic StringUtil.jm_getInstance_0 []))) ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTextArray_0 : JR.Method
jm_getTextArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "textArrayP") ])
        (jregister jheap)
        jthis
        jargs


jm_getFontHeight_0 : JR.Method
jm_getFontHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "fontHeight") ])
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

