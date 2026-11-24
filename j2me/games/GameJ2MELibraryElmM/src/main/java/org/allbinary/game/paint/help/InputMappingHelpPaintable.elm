module Org.Allbinary.Game.Paint.Help.InputMappingHelpPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint.help
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorUtil as BasicColorUtil
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Paint.Help.HelpPaintable as HelpPaintable
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Game.Paint.Help.UpdateMyFontProperties as UpdateMyFontProperties


jclass : String
jclass =
    "InputMappingHelpPaintable"


jchain : List String
jchain =
    [ "InputMappingHelpPaintable" ]
        ++ HelpPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    HelpPaintable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "commonSeps", JR.defaultOf "" ), ( "stringUtil", JR.defaultOf "" ), ( "basicColorFactory", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "EMPTY_STRING", JR.defaultOf "" ), ( "gameInputMappingArray", JR.defaultOf "" ), ( "keyMappingArray", JR.defaultOf "" ), ( "actionBasicColor", JR.defaultOf "" ), ( "inputBasicColorArray", JR.defaultOf "" ), ( "selectedBasicColor", JR.defaultOf "" ), ( "updateMyFontProperties", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "update_2", jm_update_2 )
        , ( "get_1", jm_get_1 )
        , ( "paint_1", jm_paint_1 ) ]
        HelpPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputMappingHelpPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_update_2", jm_update_2 ), ( "jm_get_1", jm_get_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_AND", jstatic_AND ), ( "jstatic_SEP", jstatic_SEP ), ( "jstatic_MORE_THAN_TWO_IN_LIST_AND", jstatic_MORE_THAN_TWO_IN_LIST_AND ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_AND : JR.M
jstatic_AND s =
    JR.static "InputMappingHelpPaintable" jclinit "AND"
        (JR.str " and ")
        s


jstatic_SEP : JR.M
jstatic_SEP s =
    JR.static "InputMappingHelpPaintable" jclinit "SEP"
        (JR.str ", ")
        s


jstatic_MORE_THAN_TWO_IN_LIST_AND : JR.M
jstatic_MORE_THAN_TWO_IN_LIST_AND s =
    JR.static "InputMappingHelpPaintable" jclinit "MORE_THAN_TWO_IN_LIST_AND"
        (JR.str ", and ")
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "gameInputMappingArray", "" ), ( "backgroundBasicColor", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HelpPaintable.jinit_3 JR.this [ (JR.str "Input Mapping"), (JR.local "backgroundBasicColor"), (JR.local "basicColor") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
                JR.exec (JR.setField "stringUtil" "" JR.this (JR.callStatic StringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicColorFactory" "" JR.this (JR.callStatic BasicColorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "NONE" "" JR.this (JR.field "NONE" (JR.callStatic GameKeyFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "EMPTY_STRING" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "keyMappingArray" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                JR.exec (JR.setField "actionBasicColor" "" JR.this (JR.field "ZERO_ARRAY" (JR.callStatic BasicColorUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "inputBasicColorArray" "" JR.this (JR.newArray "" [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "updateMyFontProperties" "" JR.this (JR.new UpdateMyFontProperties.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameInputMappingArray" "" JR.this (JR.local "gameInputMappingArray")), 
                    JR.exec (JR.invoke "update_2" JR.this [ (JR.thisField "NONE"), (JR.thisField "NONE") ]), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "backgroundBasicColor") (JR.field "WHITE" (JR.thisField "basicColorFactory"))) (JR.map2 JR.equals (JR.local "basicColor") (JR.field "WHITE" (JR.thisField "basicColorFactory")))) (JR.run [ 
                        JR.exec (JR.setField "selectedBasicColor" "" JR.this (JR.field "RED" (JR.thisField "basicColorFactory"))) ]) (JR.run [ 
                        JR.exec (JR.setField "selectedBasicColor" "" JR.this (JR.field "WHITE" (JR.thisField "basicColorFactory"))) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.declare "updateMyFontProperties" "" (JR.new UpdateMyFontProperties.jnew_0 []), 
                    JR.exec (JR.andThen (JR.local "updateMyFontProperties") (\jtN70622 -> (JR.setField "charHeight" "I" (JR.lit jtN70622) (JR.invoke "getHeight_0" (JR.local "font") [])))), 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "inputInfo" "" (JR.thisField "inputInfo"), 
                    JR.declare "size" "I" (JR.alength (JR.local "inputInfo")), 
                    JR.exec (JR.andThen (JR.local "updateMyFontProperties") (\jtN70805 -> (JR.setField "actionStringArray" "" (JR.lit jtN70805) (JR.newArray "" [ (JR.local "size") ])))), 
                    JR.exec (JR.andThen (JR.local "updateMyFontProperties") (\jtN70857 -> (JR.setField "keymappingBeginWidthArray" "" (JR.lit jtN70857) (JR.newArray "I" [ (JR.local "size") ])))), 
                    JR.exec (JR.andThen (JR.local "updateMyFontProperties") (\jtN70905 -> (JR.setField "actionStringDeltaXArray" "" (JR.lit jtN70905) (JR.newArray "I" [ (JR.local "size") ])))), 
                    JR.exec (JR.andThen (JR.local "updateMyFontProperties") (\jtN70953 -> (JR.setField "inputDeltaXArray" "" (JR.lit jtN70953) (JR.newArray "I" [ (JR.local "size"), (JR.int 0) ])))), 
                    JR.exec (JR.andThen (JR.local "updateMyFontProperties") (\jtN71009 -> (JR.setField "sepArray" "" (JR.lit jtN71009) (JR.newArray "" [ (JR.local "size"), (JR.int 0) ])))), 
                    JR.exec (JR.andThen (JR.local "updateMyFontProperties") (\jtN71069 -> (JR.setField "sepWidthArray" "" (JR.lit jtN71069) (JR.newArray "I" [ (JR.local "size"), (JR.int 0) ])))), 
                    JR.declare "list" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "keyMappings" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "actionString" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "input" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size2" "I" (JR.int 0), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72890 -> (JR.setLocal "index" "I" (JR.lit jwN72890))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "list" "" (JR.aget (JR.thisField "keyMappingArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "keyMappings" "" (JR.invoke "get_1" JR.this [ (JR.local "list") ])), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                        JR.exec (JR.setLocal "actionString" "" (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.aget (JR.local "inputInfo") (JR.local "index")) ]) [ (JR.field "COLON" (JR.thisField "commonSeps")) ]) [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]) [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]) [])), 
                        JR.exec (JR.andThen (JR.field "actionStringArray" (JR.local "updateMyFontProperties")) (\jaN71539 -> JR.andThen (JR.local "index") (\jiN71539 -> (JR.aset (JR.lit jaN71539) (JR.lit jiN71539) (JR.local "actionString"))))), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                        JR.exec (JR.andThen (JR.field "keymappingBeginWidthArray" (JR.local "updateMyFontProperties")) (\jaN71631 -> JR.andThen (JR.local "index") (\jiN71631 -> (JR.aset (JR.lit jaN71631) (JR.lit jiN71631) ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.aget (JR.field "actionStringArray" (JR.local "updateMyFontProperties")) (JR.local "index")) ]) [ (JR.local "keyMappings") ]) []) ]) (JR.int 1))))))), 
                        JR.exec (JR.andThen (JR.field "actionStringDeltaXArray" (JR.local "updateMyFontProperties")) (\jaN71774 -> JR.andThen (JR.local "index") (\jiN71774 -> (JR.aset (JR.lit jaN71774) (JR.lit jiN71774) (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.local "actionString") ]))))), 
                        JR.exec (JR.setLocal "size2" "I" (JR.invoke "size_0" (JR.local "list") [])), 
                        JR.exec (JR.andThen (JR.field "inputDeltaXArray" (JR.local "updateMyFontProperties")) (\jaN71871 -> JR.andThen (JR.local "index") (\jiN71871 -> (JR.aset (JR.lit jaN71871) (JR.lit jiN71871) (JR.newArray "I" [ (JR.local "size2") ]))))), 
                        JR.exec (JR.andThen (JR.field "sepArray" (JR.local "updateMyFontProperties")) (\jaN71931 -> JR.andThen (JR.local "index") (\jiN71931 -> (JR.aset (JR.lit jaN71931) (JR.lit jiN71931) (JR.newArray "" [ (JR.local "size2") ]))))), 
                        JR.exec (JR.andThen (JR.field "sepWidthArray" (JR.local "updateMyFontProperties")) (\jaN71995 -> JR.andThen (JR.local "index") (\jiN71995 -> (JR.aset (JR.lit jaN71995) (JR.lit jiN71995) (JR.newArray "I" [ (JR.local "size2") ]))))), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN72824 -> (JR.setLocal "index2" "I" (JR.lit jwN72824))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "input" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index2"))), 
                            JR.exec (JR.andThen (JR.aget (JR.field "inputDeltaXArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (\jaN72120 -> JR.andThen (JR.local "index2") (\jiN72120 -> (JR.aset (JR.lit jaN72120) (JR.lit jiN72120) (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.invoke "getName_0" (JR.local "input") []) ]))))), 
                            JR.exec (JR.andThen (JR.aget (JR.field "sepArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (\jaN72204 -> JR.andThen (JR.local "index2") (\jiN72204 -> (JR.aset (JR.lit jaN72204) (JR.lit jiN72204) (JR.thisField "EMPTY_STRING"))))), 
                            JR.ifElse (JR.map2 JR.less (JR.map2 JR.add (JR.local "index2") (JR.int 1)) (JR.invoke "size_0" (JR.local "list") [])) (JR.run [ 
                                JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.local "list") []) (JR.int 2)) (JR.run [ 
                                    JR.exec (JR.andThen (JR.aget (JR.field "sepArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (\jaN72533 -> JR.andThen (JR.local "index2") (\jiN72533 -> (JR.aset (JR.lit jaN72533) (JR.lit jiN72533) jstatic_AND)))) ]) (JR.run [ 
                                    JR.ifElse (JR.map2 JR.equals (JR.map2 JR.add (JR.local "index2") (JR.int 2)) (JR.invoke "size_0" (JR.local "list") [])) (JR.run [ 
                                        JR.exec (JR.andThen (JR.aget (JR.field "sepArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (\jaN72458 -> JR.andThen (JR.local "index2") (\jiN72458 -> (JR.aset (JR.lit jaN72458) (JR.lit jiN72458) jstatic_MORE_THAN_TWO_IN_LIST_AND)))) ]) (JR.run [ 
                                        JR.exec (JR.andThen (JR.aget (JR.field "sepArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (\jaN72386 -> JR.andThen (JR.local "index2") (\jiN72386 -> (JR.aset (JR.lit jaN72386) (JR.lit jiN72386) jstatic_SEP)))) ]) ]) ]) identity, 
                            JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.aget (JR.field "sepArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (JR.local "index2")) (JR.thisField "EMPTY_STRING")) (JR.run [ 
                                JR.exec (JR.andThen (JR.aget (JR.field "sepWidthArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (\jaN72665 -> JR.andThen (JR.local "index2") (\jiN72665 -> (JR.aset (JR.lit jaN72665) (JR.lit jiN72665) (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.aget (JR.aget (JR.field "sepArray" (JR.local "updateMyFontProperties")) (JR.local "index")) (JR.local "index2")) ]))))) ]) identity ]) ] ]) ], 
                    JR.exec (JR.setField "updateMyFontProperties" "" JR.this (JR.local "updateMyFontProperties")), 
                    JR.exec (JR.callVia HelpPaintable.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_2 : JR.Method
jm_update_2 jheap jthis jargs =
    JR.method [ ( "selectedGameKey", "" ), ( "selectedInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.str "selected GameKey: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "selectedGameKey") ]) ]) [ (JR.str " Input: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "selectedInput") ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                    JR.declare "gameKeyMapping" "" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "gameInputMappingArray")), 
                    JR.declare "keyInfo" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.declare "keyMappingArray" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.declare "actionBasicColor" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.declare "inputBasicColorArray" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.declare "gameInputMapping" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "gameKey" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "list" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN74805 -> (JR.setLocal "index" "I" (JR.lit jwN74805))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameInputMapping" "" (JR.aget (JR.thisField "gameInputMappingArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "gameKey" "" (JR.invoke "getGameKey_0" (JR.local "gameInputMapping") [])), 
                        JR.exec (JR.setLocal "list" "" (JR.invoke "getMappedInput_1" (JR.invoke "getInputMapping_0" (JR.local "gameKeyMapping") []) [ (JR.local "gameKey") ])), 
                        JR.declare "size2" "I" (JR.invoke "size_0" (JR.local "list") []), 
                        JR.exec (JR.andThen (JR.local "inputBasicColorArray") (\jaN73914 -> JR.andThen (JR.local "index") (\jiN73914 -> (JR.aset (JR.lit jaN73914) (JR.lit jiN73914) (JR.newArray "" [ (JR.local "size2") ]))))), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN74078 -> (JR.setLocal "index2" "I" (JR.lit jwN74078))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.local "inputBasicColorArray") (JR.local "index")) (\jaN73978 -> JR.andThen (JR.local "index2") (\jiN73978 -> (JR.aset (JR.lit jaN73978) (JR.lit jiN73978) (JR.thisField "basicColor"))))) ]) ], 
                        JR.ifElse (JR.map2 JR.equals (JR.local "gameKey") (JR.local "selectedGameKey")) (JR.run [ 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.str "Found: selected GameKey: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "selectedGameKey") ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.andThen (JR.local "actionBasicColor") (\jaN74335 -> JR.andThen (JR.local "index") (\jiN74335 -> (JR.aset (JR.lit jaN74335) (JR.lit jiN74335) (JR.thisField "selectedBasicColor"))))), 
                            JR.declare "indexOfSelectedInput" "I" (JR.invoke "indexOf_1" (JR.local "list") [ (JR.local "selectedInput") ]), 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.local "indexOfSelectedInput") (JR.int 0)) (JR.run [ 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.str "Found: selected Input: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "selectedInput") ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                                JR.exec (JR.andThen (JR.aget (JR.local "inputBasicColorArray") (JR.local "index")) (\jaN74613 -> JR.andThen (JR.local "indexOfSelectedInput") (\jiN74613 -> (JR.aset (JR.lit jaN74613) (JR.lit jiN74613) (JR.thisField "selectedBasicColor"))))) ]) identity ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "actionBasicColor") (\jaN74125 -> JR.andThen (JR.local "index") (\jiN74125 -> (JR.aset (JR.lit jaN74125) (JR.lit jiN74125) (JR.thisField "basicColor"))))) ]), 
                        JR.exec (JR.andThen (JR.local "keyInfo") (\jaN74671 -> JR.andThen (JR.local "index") (\jiN74671 -> (JR.aset (JR.lit jaN74671) (JR.lit jiN74671) (JR.invoke "getName_0" (JR.local "gameInputMapping") []))))), 
                        JR.exec (JR.andThen (JR.local "keyMappingArray") (\jaN74720 -> JR.andThen (JR.local "index") (\jiN74720 -> (JR.aset (JR.lit jaN74720) (JR.lit jiN74720) (JR.local "list"))))) ]) ], 
                    JR.exec (JR.setField "keyMappingArray" "" JR.this (JR.local "keyMappingArray")), 
                    JR.exec (JR.setField "actionBasicColor" "" JR.this (JR.local "actionBasicColor")), 
                    JR.exec (JR.setField "inputBasicColorArray" "" JR.this (JR.local "inputBasicColorArray")), 
                    JR.exec (JR.callVia HelpPaintable.jvtable "setInputInfoP_1" JR.this [ (JR.local "keyInfo") ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "keyList", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "key" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "keyList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN75580 -> (JR.setLocal "index" "I" (JR.lit jwN75580))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "key" "" (JR.aget (JR.field "objectArray" (JR.local "keyList")) (JR.local "index"))), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.local "key") []) ]), 
                        JR.ifElse (JR.map2 JR.less (JR.map2 JR.add (JR.local "index") (JR.int 1)) (JR.invoke "size_0" (JR.local "keyList") [])) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.local "keyList") []) (JR.int 2)) (JR.run [ 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_AND ]) ]) (JR.run [ 
                                JR.ifElse (JR.map2 JR.equals (JR.map2 JR.add (JR.local "index") (JR.int 2)) (JR.invoke "size_0" (JR.local "keyList") [])) (JR.run [ 
                                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_MORE_THAN_TWO_IN_LIST_AND ]) ]) (JR.run [ 
                                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_SEP ]) ]) ]) ]) identity ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "halfWidth" "I" (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfo") []), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.thisField "basicColor") []) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "title"), (JR.map2 JR.sub (JR.local "halfWidth") (JR.thisField "titleBeginWidth")), (JR.field "charHeight" (JR.thisField "updateMyFontProperties")), (JR.thisField "anchor") ]), 
                    JR.declare "inputInfo" "" (JR.thisField "inputInfo"), 
                    JR.declare "size" "I" (JR.alength (JR.local "inputInfo")), 
                    JR.declare "y" "I" (JR.int 0), 
                    JR.declare "deltaX" "I" (JR.int 0), 
                    JR.declare "size2" "I" (JR.int 0), 
                    JR.declare "actionString" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "input" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "list" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "sep" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "beginWidth" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN77302 -> (JR.setLocal "index" "I" (JR.lit jwN77302))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.mul ((JR.map2 JR.add (JR.local "index") (JR.int 3))) (JR.field "charHeight" (JR.thisField "updateMyFontProperties")))), 
                        JR.exec (JR.setLocal "deltaX" "I" (JR.int 0)), 
                        JR.exec (JR.setLocal "list" "" (JR.aget (JR.thisField "keyMappingArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "size2" "I" (JR.invoke "size_0" (JR.local "list") [])), 
                        JR.exec (JR.setLocal "beginWidth" "I" (JR.aget (JR.field "keymappingBeginWidthArray" (JR.thisField "updateMyFontProperties")) (JR.local "index"))), 
                        JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.aget (JR.thisField "actionBasicColor") (JR.local "index")) []) ]), 
                        JR.exec (JR.setLocal "actionString" "" (JR.aget (JR.field "actionStringArray" (JR.thisField "updateMyFontProperties")) (JR.local "index"))), 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "actionString"), (JR.map2 JR.add (JR.map2 JR.sub (JR.local "halfWidth") (JR.local "beginWidth")) (JR.local "deltaX")), (JR.local "y"), (JR.thisField "anchor") ]), 
                        JR.exec (JR.setLocal "deltaX" "I" (JR.map2 JR.add (JR.local "deltaX") (JR.aget (JR.field "actionStringDeltaXArray" (JR.thisField "updateMyFontProperties")) (JR.local "index")))), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN77236 -> (JR.setLocal "index2" "I" (JR.lit jwN77236))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "input" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index2"))), 
                            JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.aget (JR.aget (JR.thisField "inputBasicColorArray") (JR.local "index")) (JR.local "index2")) []) ]), 
                            JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.invoke "getName_0" (JR.local "input") []), (JR.map2 JR.add (JR.map2 JR.sub (JR.local "halfWidth") (JR.local "beginWidth")) (JR.local "deltaX")), (JR.local "y"), (JR.thisField "anchor") ]), 
                            JR.exec (JR.setLocal "deltaX" "I" (JR.map2 JR.add (JR.local "deltaX") (JR.aget (JR.aget (JR.field "inputDeltaXArray" (JR.thisField "updateMyFontProperties")) (JR.local "index")) (JR.local "index2")))), 
                            JR.exec (JR.setLocal "sep" "" (JR.aget (JR.aget (JR.field "sepArray" (JR.thisField "updateMyFontProperties")) (JR.local "index")) (JR.local "index2"))), 
                            JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.thisField "basicColor") []) ]), 
                            JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "sep"), (JR.map2 JR.add (JR.map2 JR.sub (JR.local "halfWidth") (JR.local "beginWidth")) (JR.local "deltaX")), (JR.local "y"), (JR.thisField "anchor") ]), 
                            JR.exec (JR.setLocal "deltaX" "I" (JR.map2 JR.add (JR.local "deltaX") (JR.aget (JR.aget (JR.field "sepWidthArray" (JR.thisField "updateMyFontProperties")) (JR.local "index")) (JR.local "index2")))) ]) ] ]) ] ])
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

