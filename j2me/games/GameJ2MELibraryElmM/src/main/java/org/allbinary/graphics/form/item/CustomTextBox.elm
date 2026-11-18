module Org.Allbinary.Graphics.Form.Item.CustomTextBox exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABTextFieldItem as ABTextFieldItem
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Displayable.Canvas.GameCommandCanvas as GameCommandCanvas
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Game.Input.PlatformKeyFactory as PlatformKeyFactory
import Org.Allbinary.Game.Input.Event.RawKeyEventListener as RawKeyEventListener
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Graphics.Form.Item.Validation.TextItemVisitor as TextItemVisitor


jclass : String
jclass =
    "CustomTextBox"


jchain : List String
jchain =
    [ "CustomTextBox" ]
        ++ GameCommandCanvas.jchain
        ++ RawKeyEventListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameCommandCanvas.jfields ++ [ ( "textFieldItem", JR.defaultOf "" ), ( "inputFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "submit_0", jm_submit_0 )
        , ( "onEventRaw_3", jm_onEventRaw_3 )
        , ( "keyPressed_1", jm_keyPressed_1 )
        , ( "keyReleased_1", jm_keyReleased_1 )
        , ( "keyRepeated_1", jm_keyRepeated_1 )
        , ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyReleasedByDevice_2", jm_keyReleasedByDevice_2 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "getTextFieldItem_0", jm_getTextFieldItem_0 ) ]
        GameCommandCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomTextBox"
        [ ( "jm_submit_0", jm_submit_0 ), ( "jm_onEventRaw_3", jm_onEventRaw_3 ), ( "jm_keyPressed_1", jm_keyPressed_1 ), ( "jm_keyReleased_1", jm_keyReleased_1 ), ( "jm_keyRepeated_1", jm_keyRepeated_1 ), ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyReleasedByDevice_2", jm_keyReleasedByDevice_2 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_getTextFieldItem_0", jm_getTextFieldItem_0 ), ( "jnew_8", jnew_8 ), ( "jinit_8", jinit_8 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_8 : JR.Method
jinit_8 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ), ( "label", "" ), ( "text", "" ), ( "maxSize", "I" ), ( "constraints", "I" ), ( "font", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameCommandCanvas.jinit_4 JR.this [ (JR.local "cmdListener"), (JR.local "label"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "inputFactory" "" JR.this (JR.callStatic InputFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.declare "textFieldItem" "" (JR.new ABTextFieldItem.jnew_10 [ JR.this, (JR.new TextItemVisitor.jnew_0 []), (JR.field "EMPTY_STRING" (JR.local "stringUtil")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")), (JR.local "maxSize"), (JR.int 0), (JR.field "EMPTY_STRING" (JR.local "stringUtil")), (JR.local "font"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]), 
                    JR.exec (JR.invoke "setString_1" (JR.local "textFieldItem") [ (JR.local "text") ]), 
                    JR.exec (JR.setField "textFieldItem" "" JR.this (JR.local "textFieldItem")), 
                    JR.exec (JR.invoke "setTitle_1" JR.this [ (JR.local "label") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_8 : JR.Method
jnew_8 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_8 jheap jthis jargs


jm_submit_0 : JR.Method
jm_submit_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onEventRaw_3 : JR.Method
jm_onEventRaw_3 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.str "onEvent") ]), 
                    JR.exec (JR.invoke "keyPressedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.local "deviceId") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyPressed_1 : JR.Method
jm_keyPressed_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyPressedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleased_1 : JR.Method
jm_keyReleased_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyReleasedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyRepeated_1 : JR.Method
jm_keyRepeated_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyRepeatedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyPressedByDevice_2 : JR.Method
jm_keyPressedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "KEY_PRESSED" (JR.thisField "gameInputStrings")) ]), 
                        JR.declare "platformKeyFactory" "" (JR.callStatic PlatformKeyFactory.jm_getInstance_0 []), 
                        JR.declare "input" "" (JR.invoke "getInstanceById_1" (JR.thisField "inputFactory") [ (JR.local "keyCode") ]), 
                        JR.ifElse (JR.invoke "isSubmission_1" (JR.local "platformKeyFactory") [ (JR.local "input") ]) (JR.run [ 
                            JR.exec (JR.invoke "submit_0" JR.this []) ]) (JR.run [ 
                            JR.exec (JR.invoke "keyPressed_1" (JR.thisField "textFieldItem") [ (JR.local "keyCode") ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "KEY_PRESSED" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_2 : JR.Method
jm_keyReleasedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "backgroundColor") ]), 
                    JR.exec (JR.invoke "fillRect_4" (JR.local "graphics") [ (JR.int 0), (JR.int 0), (JR.invoke "getLastWidth_0" (JR.thisField "displayInfo") []), (JR.invoke "getLastHeight_0" (JR.thisField "displayInfo") []) ]), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "foregroundColor") ]), 
                    JR.ifElse (JR.map JR.not_ (JR.callStatic J2MEUtil.jm_isJ2ME_0 [])) (JR.run [ 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.invoke "getTitle_0" JR.this []), (JR.int 8), (JR.int 1), (JR.int 0) ]) ]) identity, 
                    JR.exec (JR.invoke "paintXY_3" JR.this [ (JR.local "graphics"), (JR.int 8), (JR.map2 JR.add (JR.invoke "getHeight_0" (JR.invoke "getFont_0" (JR.local "graphics") []) []) (JR.int 2)) ]), 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "textFieldItem") [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTextFieldItem_0 : JR.Method
jm_getTextFieldItem_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "textFieldItem") ])
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

