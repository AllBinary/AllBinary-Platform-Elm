module Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable
-}

import JR
import Org.Allbinary.AndroidUtil as AndroidUtil
import Org.Allbinary.Graphics.Displayable.BaseScalable as BaseScalable
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEvent as DisplayChangeEvent
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventHandler as DisplayChangeEventHandler
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Graphics.Displayable.Event.LastDisplayChangeEventHandler as LastDisplayChangeEventHandler
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Graphics.Threed.SWTJOGLProcessor as SWTJOGLProcessor
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "DisplayInfoSingleton"


jchain : List String
jchain =
    [ "DisplayInfoSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonLabels", JR.defaultOf "" ), ( "commonSeps", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "ORIENTATION", JR.defaultOf "" ), ( "ADJUSTING_FOR_SCALING_IN_PORTRAIT", JR.defaultOf "" ), ( "ADJUSTING_FOR_SCALING_IN_LANDSCAPE", JR.defaultOf "" ), ( "last", JR.defaultOf "" ), ( "lastHalf", JR.defaultOf "" ), ( "full", JR.defaultOf "" ), ( "top", JR.defaultOf "I" ), ( "left", JR.defaultOf "I" ), ( "xOffset", JR.defaultOf "I" ), ( "yOffset", JR.defaultOf "I" ), ( "scaleLargestTo", JR.defaultOf "F" ), ( "WIDTH", JR.defaultOf "I" ), ( "HEIGHT", JR.defaultOf "I" ), ( "CUSTOM_WIDTH", JR.defaultOf "I" ), ( "CUSTOM_HEIGHT", JR.defaultOf "I" ), ( "scalableListener", JR.defaultOf "" ), ( "displayRatio", JR.defaultOf "F" ), ( "ratio", JR.defaultOf "F" ), ( "SET_LAST_SIZE_METHOD_NAME", JR.defaultOf "" ), ( "FULL_WIDTH", JR.defaultOf "" ), ( "FULL_HEIGHT", JR.defaultOf "" ), ( "LAST_WIDTH", JR.defaultOf "" ), ( "LAST_HEIGHT", JR.defaultOf "" ), ( "PORTRAIT", JR.defaultOf "" ), ( "LANDSCAPE", JR.defaultOf "" ), ( "displayChangeEvent", JR.defaultOf "" ), ( "FIRE_METHOD_NAME", JR.defaultOf "" ), ( "REASON", JR.defaultOf "" ), ( "UPDATE_FROM_ORIENTATION_CHANGE", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "DISPLAY_INFO", JR.defaultOf "" ), ( "FULL", JR.defaultOf "" ), ( "LAST", JR.defaultOf "" ), ( "LAST_HALF", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getLastHalf_0", jm_getLastHalf_0 )
        , ( "getLast_0", jm_getLast_0 )
        , ( "getFull_0", jm_getFull_0 )
        , ( "getScaleLargestTo_0", jm_getScaleLargestTo_0 )
        , ( "setScaleLargestTo_1", jm_setScaleLargestTo_1 )
        , ( "setLastSize_3", jm_setLastSize_3 )
        , ( "setLastSizeForce_3", jm_setLastSizeForce_3 )
        , ( "isPortraitWH_2", jm_isPortraitWH_2 )
        , ( "isPortrait_0", jm_isPortrait_0 )
        , ( "add_1", jm_add_1 )
        , ( "process_0", jm_process_0 )
        , ( "processForced_0", jm_processForced_0 )
        , ( "update_2", jm_update_2 )
        , ( "toString_0", jm_toString_0 )
        , ( "toStringAppend_1", jm_toStringAppend_1 )
        , ( "getTop_0", jm_getTop_0 )
        , ( "getLeft_0", jm_getLeft_0 )
        , ( "getLastWidth_0", jm_getLastWidth_0 )
        , ( "getLastHeight_0", jm_getLastHeight_0 )
        , ( "getLastHalfWidth_0", jm_getLastHalfWidth_0 )
        , ( "getLastHalfHeight_0", jm_getLastHalfHeight_0 )
        , ( "getCustomLastWidth_0", jm_getCustomLastWidth_0 )
        , ( "getCustomLastHeight_0", jm_getCustomLastHeight_0 )
        , ( "getRawLastWidth_0", jm_getRawLastWidth_0 )
        , ( "getRawLastHeight_0", jm_getRawLastHeight_0 )
        , ( "setCustom_2", jm_setCustom_2 )
        , ( "setScalableListener_1", jm_setScalableListener_1 )
        , ( "getScalableListener_0", jm_getScalableListener_0 )
        , ( "getRatio_0", jm_getRatio_0 )
        , ( "getDisplayRatio_0", jm_getDisplayRatio_0 )
        , ( "setOffset_2", jm_setOffset_2 )
        , ( "getxOffset_0", jm_getxOffset_0 )
        , ( "getyOffset_0", jm_getyOffset_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DisplayInfoSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getLastHalf_0", jm_getLastHalf_0 ), ( "jm_getLast_0", jm_getLast_0 ), ( "jm_getFull_0", jm_getFull_0 ), ( "jm_getScaleLargestTo_0", jm_getScaleLargestTo_0 ), ( "jm_setScaleLargestTo_1", jm_setScaleLargestTo_1 ), ( "jm_setLastSize_3", jm_setLastSize_3 ), ( "jm_setLastSizeForce_3", jm_setLastSizeForce_3 ), ( "jm_isPortraitWH_2", jm_isPortraitWH_2 ), ( "jm_isPortrait_0", jm_isPortrait_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_process_0", jm_process_0 ), ( "jm_processForced_0", jm_processForced_0 ), ( "jm_update_2", jm_update_2 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_toStringAppend_1", jm_toStringAppend_1 ), ( "jm_getTop_0", jm_getTop_0 ), ( "jm_getLeft_0", jm_getLeft_0 ), ( "jm_getLastWidth_0", jm_getLastWidth_0 ), ( "jm_getLastHeight_0", jm_getLastHeight_0 ), ( "jm_getLastHalfWidth_0", jm_getLastHalfWidth_0 ), ( "jm_getLastHalfHeight_0", jm_getLastHalfHeight_0 ), ( "jm_getCustomLastWidth_0", jm_getCustomLastWidth_0 ), ( "jm_getCustomLastHeight_0", jm_getCustomLastHeight_0 ), ( "jm_getRawLastWidth_0", jm_getRawLastWidth_0 ), ( "jm_getRawLastHeight_0", jm_getRawLastHeight_0 ), ( "jm_setCustom_2", jm_setCustom_2 ), ( "jm_setScalableListener_1", jm_setScalableListener_1 ), ( "jm_getScalableListener_0", jm_getScalableListener_0 ), ( "jm_getRatio_0", jm_getRatio_0 ), ( "jm_getDisplayRatio_0", jm_getDisplayRatio_0 ), ( "jm_setOffset_2", jm_setOffset_2 ), ( "jm_getxOffset_0", jm_getxOffset_0 ), ( "jm_getyOffset_0", jm_getyOffset_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "DisplayInfoSingleton" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonLabels" "" JR.this (JR.callStatic CommonLabels.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "ORIENTATION" "" JR.this (JR.str "ORIENTATION")),
                JR.exec (JR.setField "ADJUSTING_FOR_SCALING_IN_PORTRAIT" "" JR.this (JR.str "Adjusting for Scaling in portrait display ratio: ")),
                JR.exec (JR.setField "ADJUSTING_FOR_SCALING_IN_LANDSCAPE" "" JR.this (JR.str "Adjusting for Scaling in landscape display ratio: ")),
                JR.exec (JR.setField "last" "" JR.this (JR.newArray "I" [ (JR.int 4) ])),
                JR.exec (JR.setField "lastHalf" "" JR.this (JR.newArray "I" [ (JR.int 4) ])),
                JR.exec (JR.setField "full" "" JR.this (JR.newArray "I" [ (JR.int 4) ])),
                JR.exec (JR.setField "WIDTH" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "HEIGHT" "I" JR.this (JR.int 1)),
                JR.exec (JR.setField "CUSTOM_WIDTH" "I" JR.this (JR.int 2)),
                JR.exec (JR.setField "CUSTOM_HEIGHT" "I" JR.this (JR.int 3)),
                JR.exec (JR.setField "scalableListener" "" JR.this (JR.new BaseScalable.jnew_0 [])),
                JR.exec (JR.setField "ratio" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "SET_LAST_SIZE_METHOD_NAME" "" JR.this (JR.str "setLastSize")),
                JR.exec (JR.setField "FULL_WIDTH" "" JR.this (JR.str " FullWidth: ")),
                JR.exec (JR.setField "FULL_HEIGHT" "" JR.this (JR.str " FullHeight: ")),
                JR.exec (JR.setField "LAST_WIDTH" "" JR.this (JR.str "LastWidth: ")),
                JR.exec (JR.setField "LAST_HEIGHT" "" JR.this (JR.str " LastHeight: ")),
                JR.exec (JR.setField "PORTRAIT" "" JR.this (JR.str "Portrait")),
                JR.exec (JR.setField "LANDSCAPE" "" JR.this (JR.str "Landscape")),
                JR.exec (JR.setField "displayChangeEvent" "" JR.this (JR.new DisplayChangeEvent.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "FIRE_METHOD_NAME" "" JR.this (JR.str "fire")),
                JR.exec (JR.setField "REASON" "" JR.this (JR.str "reason: ")),
                JR.exec (JR.setField "UPDATE_FROM_ORIENTATION_CHANGE" "" JR.this (JR.str "Updating from Orientation Change ")),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "DISPLAY_INFO" "" JR.this (JR.str "Display Info: ")),
                JR.exec (JR.setField "FULL" "" JR.this (JR.str "full")),
                JR.exec (JR.setField "LAST" "" JR.this (JR.str "last")),
                JR.exec (JR.setField "LAST_HALF" "" JR.this (JR.str "lastHalf")),
                identity,
                (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "last")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69865 -> (JR.setLocal "index" "I" (JR.lit jwN69865))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "last") (\jaN69709 -> JR.andThen (JR.local "index") (\jiN69709 -> (JR.aset (JR.lit jaN69709) (JR.lit jiN69709) (JR.int 0))))), 
                        JR.exec (JR.andThen (JR.thisField "lastHalf") (\jaN69745 -> JR.andThen (JR.local "index") (\jiN69745 -> (JR.aset (JR.lit jaN69745) (JR.lit jiN69745) (JR.int 0))))), 
                        JR.exec (JR.andThen (JR.thisField "full") (\jaN69781 -> JR.andThen (JR.local "index") (\jiN69781 -> (JR.aset (JR.lit jaN69781) (JR.lit jiN69781) (JR.int 0))))) ]) ], 
                    JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) (JR.run [ 
                        JR.exec (JR.setField "scaleLargestTo" "F" JR.this (JR.float 640.0)) ]) (JR.run [ 
                        JR.exec (JR.setField "scaleLargestTo" "F" JR.this (JR.float 1080.0)) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_getLastHalf_0 : JR.Method
jm_getLastHalf_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "lastHalf") ])
        (jregister jheap)
        jthis
        jargs


jm_getLast_0 : JR.Method
jm_getLast_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "last") ])
        (jregister jheap)
        jthis
        jargs


jm_getFull_0 : JR.Method
jm_getFull_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "full") ])
        (jregister jheap)
        jthis
        jargs


jm_getScaleLargestTo_0 : JR.Method
jm_getScaleLargestTo_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "scaleLargestTo") ])
        (jregister jheap)
        jthis
        jargs


jm_setScaleLargestTo_1 : JR.Method
jm_setScaleLargestTo_1 jheap jthis jargs =
    JR.method [ ( "scaleLargestTo", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "scaleLargestTo" "F" JR.this (JR.cast "F" (JR.local "scaleLargestTo"))) ])
        (jregister jheap)
        jthis
        jargs


jm_setLastSize_3 : JR.Method
jm_setLastSize_3 jheap jthis jargs =
    JR.method [ ( "aLastWidth", "I" ), ( "aLastHeight", "I" ), ( "reason", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.aget (JR.thisField "full") (JR.thisField "WIDTH")) (JR.local "aLastWidth")) (JR.map2 JR.notEquals (JR.aget (JR.thisField "full") (JR.thisField "HEIGHT")) (JR.local "aLastHeight"))) (JR.run [ 
                        JR.exec (JR.invoke "setLastSizeForce_3" JR.this [ (JR.local "aLastWidth"), (JR.local "aLastHeight"), (JR.local "reason") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setLastSizeForce_3 : JR.Method
jm_setLastSizeForce_3 jheap jthis jargs =
    JR.method [ ( "aLastWidth", "I" ), ( "aLastHeight", "I" ), ( "reason", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.local "reason") ]) []), JR.this, (JR.thisField "SET_LAST_SIZE_METHOD_NAME") ]), 
                    JR.declare "aFullWidth" "I" (JR.local "aLastWidth"), 
                    JR.declare "aFullHeight" "I" (JR.local "aLastHeight"), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "FULL_WIDTH") ]) [ (JR.local "aFullWidth") ]) [ (JR.thisField "FULL_HEIGHT") ]) [ (JR.local "aFullHeight") ]) [ (JR.invoke "toString_0" JR.this []) ]) []), JR.this, (JR.thisField "SET_LAST_SIZE_METHOD_NAME") ]), 
                    JR.declare "operatingSystemInterface" "" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.invoke "isOverScan_0" (JR.local "operatingSystemInterface") []) (JR.run [ 
                        JR.exec (JR.setLocal "aLastWidth" "I" (JR.map2 JR.div (JR.map2 JR.mul (JR.local "aLastWidth") (JR.invoke "getOverScanXPercent_0" (JR.local "operatingSystemInterface") [])) (JR.int 100))), 
                        JR.exec (JR.setLocal "aLastHeight" "I" (JR.map2 JR.div (JR.map2 JR.mul (JR.local "aLastHeight") (JR.invoke "getOverScanYPercent_0" (JR.local "operatingSystemInterface") [])) (JR.int 100))) ]) identity, 
                    JR.ifElse (JR.invoke "isScalable_0" (JR.local "operatingSystemInterface") []) (JR.run [ 
                        JR.ifElse (JR.invoke "isPortraitWH_2" JR.this [ (JR.local "aLastWidth"), (JR.local "aLastHeight") ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greater (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "scaleLargestTo")) (JR.run [ 
                                JR.exec (JR.setField "displayRatio" "F" JR.this (JR.map2 JR.div (JR.thisField "scaleLargestTo") (JR.cast "F" (JR.local "aLastHeight")))), 
                                JR.exec (JR.setField "ratio" "F" JR.this (JR.map2 JR.div (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "scaleLargestTo"))), 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "ADJUSTING_FOR_SCALING_IN_PORTRAIT") ]) [ (JR.thisField "displayRatio") ]) []), JR.this, (JR.thisField "SET_LAST_SIZE_METHOD_NAME") ]), 
                                JR.exec (JR.setLocal "aLastWidth" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "displayRatio"))))), 
                                JR.exec (JR.setLocal "aLastHeight" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "displayRatio"))))), 
                                JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) (JR.run [ 
                                JR.exec (JR.setField "ratio" "F" JR.this (JR.float 1.0)), 
                                JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greater (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "scaleLargestTo")) (JR.run [ 
                                JR.exec (JR.setField "displayRatio" "F" JR.this (JR.map2 JR.div (JR.thisField "scaleLargestTo") (JR.cast "F" (JR.local "aLastWidth")))), 
                                JR.exec (JR.setField "ratio" "F" JR.this (JR.map2 JR.div (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "scaleLargestTo"))), 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "ADJUSTING_FOR_SCALING_IN_LANDSCAPE") ]) [ (JR.thisField "displayRatio") ]) []), JR.this, (JR.thisField "SET_LAST_SIZE_METHOD_NAME") ]), 
                                JR.exec (JR.setLocal "aLastWidth" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "displayRatio"))))), 
                                JR.exec (JR.setLocal "aLastHeight" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "displayRatio"))))), 
                                JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) (JR.run [ 
                                JR.exec (JR.setField "ratio" "F" JR.this (JR.float 1.0)), 
                                JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) ]) ]) identity, 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "LAST_WIDTH") ]) [ (JR.local "aLastWidth") ]) [ (JR.thisField "LAST_HEIGHT") ]) [ (JR.local "aLastHeight") ]) []), JR.this, (JR.thisField "SET_LAST_SIZE_METHOD_NAME") ]), 
                    JR.exec (JR.setField "xOffset" "I" JR.this (JR.map2 JR.sub (JR.local "aFullWidth") (JR.local "aLastWidth"))), 
                    JR.exec (JR.setField "yOffset" "I" JR.this (JR.map2 JR.sub (JR.local "aFullHeight") (JR.local "aLastHeight"))), 
                    JR.exec (JR.setField "left" "I" JR.this (JR.invoke "getLeft_1" (JR.thisField "scalableListener") [ (JR.thisField "xOffset") ])), 
                    JR.exec (JR.setField "top" "I" JR.this (JR.invoke "getTop_1" (JR.thisField "scalableListener") [ (JR.thisField "yOffset") ])), 
                    JR.exec (JR.andThen (JR.thisField "full") (\jaN72848 -> JR.andThen (JR.thisField "WIDTH") (\jiN72848 -> (JR.aset (JR.lit jaN72848) (JR.lit jiN72848) (JR.local "aFullWidth"))))), 
                    JR.exec (JR.andThen (JR.thisField "full") (\jaN72895 -> JR.andThen (JR.thisField "HEIGHT") (\jiN72895 -> (JR.aset (JR.lit jaN72895) (JR.lit jiN72895) (JR.local "aFullHeight"))))), 
                    JR.exec (JR.andThen (JR.thisField "last") (\jaN72938 -> JR.andThen (JR.thisField "WIDTH") (\jiN72938 -> (JR.aset (JR.lit jaN72938) (JR.lit jiN72938) (JR.local "aLastWidth"))))), 
                    JR.exec (JR.andThen (JR.thisField "lastHalf") (\jaN72981 -> JR.andThen (JR.thisField "WIDTH") (\jiN72981 -> (JR.aset (JR.lit jaN72981) (JR.lit jiN72981) ((JR.map2 JR.shr (JR.aget (JR.thisField "last") (JR.thisField "WIDTH")) (JR.int 1))))))), 
                    JR.exec (JR.andThen (JR.thisField "last") (\jaN73055 -> JR.andThen (JR.thisField "HEIGHT") (\jiN73055 -> (JR.aset (JR.lit jaN73055) (JR.lit jiN73055) (JR.local "aLastHeight"))))), 
                    JR.exec (JR.andThen (JR.thisField "lastHalf") (\jaN73098 -> JR.andThen (JR.thisField "HEIGHT") (\jiN73098 -> (JR.aset (JR.lit jaN73098) (JR.lit jiN73098) ((JR.map2 JR.shr (JR.aget (JR.thisField "last") (JR.thisField "HEIGHT")) (JR.int 1))))))), 
                    JR.exec (JR.invoke "setCustom_3" (JR.callStatic SWTJOGLProcessor.jm_getInstance_0 []) [ (JR.local "aLastWidth"), (JR.local "aLastHeight"), (JR.thisField "ratio") ]), 
                    JR.exec (JR.invoke "add_1" JR.this [ (JR.thisField "SET_LAST_SIZE_METHOD_NAME") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isPortraitWH_2 : JR.Method
jm_isPortraitWH_2 jheap jthis jargs =
    JR.method [ ( "lastWidth", "I" ), ( "lastHeight", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "lastHeight") (JR.local "lastWidth")) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isPortrait_0 : JR.Method
jm_isPortrait_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isPortraitWH_2" JR.this [ (JR.aget (JR.thisField "last") (JR.thisField "WIDTH")), (JR.aget (JR.thisField "last") (JR.thisField "HEIGHT")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "reason", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "REASON") ]) [ (JR.local "reason") ]) []), JR.this, (JR.thisField "FIRE_METHOD_NAME") ]), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toStringAppend_1" JR.this [ (JR.local "stringMaker") ]), JR.this, (JR.thisField "FIRE_METHOD_NAME") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "reason") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.thisField "list") []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "processForced_0" JR.this []) ]) identity, 
                        JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.thisField "FIRE_METHOD_NAME"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_processForced_0 : JR.Method
jm_processForced_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "swtJOGLProcessor" "" (JR.callStatic SWTJOGLProcessor.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "clear_0" (JR.local "swtJOGLProcessor") []), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ (JR.thisField "displayChangeEvent") ]), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic LastDisplayChangeEventHandler.jm_getInstance_0 []) [ (JR.thisField "displayChangeEvent") ]), 
                        JR.exec (JR.invoke "onSurfaceChanged_0" (JR.local "swtJOGLProcessor") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.thisField "FIRE_METHOD_NAME"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_update_2 : JR.Method
jm_update_2 jheap jthis jargs =
    JR.method [ ( "displayable", "" ), ( "reason", "" ) ] ""
        (JR.run [ 
                    JR.declare "aLastWidth" "I" (JR.invoke "getWidth_0" (JR.local "displayable") []), 
                    JR.declare "aLastHeight" "I" (JR.invoke "getHeight_0" (JR.local "displayable") []), 
                    JR.declare "aFullWidth" "I" (JR.local "aLastWidth"), 
                    JR.declare "aFullHeight" "I" (JR.local "aLastHeight"), 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.local "reason") ]) [ (JR.thisField "LAST_WIDTH") ]) [ (JR.local "aLastWidth") ]) [ (JR.thisField "LAST_HEIGHT") ]) [ (JR.local "aLastHeight") ]) [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]) [ (JR.invoke "toString_0" JR.this []) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                    JR.ifElse (JR.and (JR.map2 JR.greater (JR.local "aLastWidth") (JR.int 0)) (JR.map2 JR.greater (JR.local "aLastHeight") (JR.int 0))) (JR.run [ 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.declare "openGLFeatureFactory" "" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 []), 
                        JR.ifElse (JR.or (JR.or (JR.map JR.not_ (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.local "openGLFeatureFactory")) ])) (JR.map2 JR.notEquals (JR.aget (JR.thisField "last") (JR.thisField "WIDTH")) (JR.local "aLastWidth"))) (JR.map2 JR.notEquals (JR.aget (JR.thisField "last") (JR.thisField "HEIGHT")) (JR.local "aLastHeight"))) (JR.run [ 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "UPDATE_FROM_ORIENTATION_CHANGE") ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                            JR.declare "operatingSystemInterface" "" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []), 
                            JR.ifElse (JR.invoke "isOverScan_0" (JR.local "operatingSystemInterface") []) (JR.run [ 
                                JR.exec (JR.setLocal "aLastWidth" "I" (JR.map2 JR.div (JR.map2 JR.mul (JR.local "aLastWidth") (JR.invoke "getOverScanXPercent_0" (JR.local "operatingSystemInterface") [])) (JR.int 100))), 
                                JR.exec (JR.setLocal "aLastHeight" "I" (JR.map2 JR.div (JR.map2 JR.mul (JR.local "aLastHeight") (JR.invoke "getOverScanYPercent_0" (JR.local "operatingSystemInterface") [])) (JR.int 100))) ]) identity, 
                            JR.ifElse (JR.invoke "isScalable_0" (JR.local "operatingSystemInterface") []) (JR.run [ 
                                JR.ifElse (JR.invoke "isPortraitWH_2" JR.this [ (JR.local "aLastWidth"), (JR.local "aLastHeight") ]) (JR.run [ 
                                    JR.ifElse (JR.map2 JR.greater (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "scaleLargestTo")) (JR.run [ 
                                        JR.exec (JR.setField "displayRatio" "F" JR.this (JR.map2 JR.div (JR.thisField "scaleLargestTo") (JR.cast "F" (JR.local "aLastHeight")))), 
                                        JR.exec (JR.setField "ratio" "F" JR.this (JR.map2 JR.div (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "scaleLargestTo"))), 
                                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "ADJUSTING_FOR_SCALING_IN_PORTRAIT") ]) [ (JR.thisField "displayRatio") ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                                        JR.exec (JR.setLocal "aLastWidth" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "displayRatio"))))), 
                                        JR.exec (JR.setLocal "aLastHeight" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "displayRatio"))))), 
                                        JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) (JR.run [ 
                                        JR.exec (JR.setField "ratio" "F" JR.this (JR.float 1.0)), 
                                        JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) ]) (JR.run [ 
                                    JR.ifElse (JR.map2 JR.greater (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "scaleLargestTo")) (JR.run [ 
                                        JR.exec (JR.setField "displayRatio" "F" JR.this (JR.map2 JR.div (JR.thisField "scaleLargestTo") (JR.cast "F" (JR.local "aLastWidth")))), 
                                        JR.exec (JR.setField "ratio" "F" JR.this (JR.map2 JR.div (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "scaleLargestTo"))), 
                                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "ADJUSTING_FOR_SCALING_IN_LANDSCAPE") ]) [ (JR.thisField "displayRatio") ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                                        JR.exec (JR.setLocal "aLastWidth" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastWidth")) (JR.thisField "displayRatio"))))), 
                                        JR.exec (JR.setLocal "aLastHeight" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "aLastHeight")) (JR.thisField "displayRatio"))))), 
                                        JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) (JR.run [ 
                                        JR.exec (JR.setField "ratio" "F" JR.this (JR.float 1.0)), 
                                        JR.exec (JR.invoke "scale_1" (JR.thisField "scalableListener") [ (JR.thisField "ratio") ]) ]) ]) ]) identity, 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "UPDATE_FROM_ORIENTATION_CHANGE") ]) [ (JR.thisField "LAST_WIDTH") ]) [ (JR.local "aLastWidth") ]) [ (JR.thisField "LAST_HEIGHT") ]) [ (JR.local "aLastHeight") ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.setField "xOffset" "I" JR.this (JR.map2 JR.sub (JR.local "aFullWidth") (JR.local "aLastWidth"))), 
                            JR.exec (JR.setField "yOffset" "I" JR.this (JR.map2 JR.sub (JR.local "aFullHeight") (JR.local "aLastHeight"))), 
                            JR.exec (JR.setField "left" "I" JR.this (JR.invoke "getLeft_1" (JR.thisField "scalableListener") [ (JR.thisField "xOffset") ])), 
                            JR.exec (JR.setField "top" "I" JR.this (JR.invoke "getTop_1" (JR.thisField "scalableListener") [ (JR.thisField "yOffset") ])), 
                            JR.exec (JR.andThen (JR.thisField "full") (\jaN77179 -> JR.andThen (JR.thisField "WIDTH") (\jiN77179 -> (JR.aset (JR.lit jaN77179) (JR.lit jiN77179) (JR.local "aFullWidth"))))), 
                            JR.exec (JR.andThen (JR.thisField "full") (\jaN77226 -> JR.andThen (JR.thisField "HEIGHT") (\jiN77226 -> (JR.aset (JR.lit jaN77226) (JR.lit jiN77226) (JR.local "aFullHeight"))))), 
                            JR.exec (JR.andThen (JR.thisField "last") (\jaN77269 -> JR.andThen (JR.thisField "WIDTH") (\jiN77269 -> (JR.aset (JR.lit jaN77269) (JR.lit jiN77269) (JR.local "aLastWidth"))))), 
                            JR.exec (JR.andThen (JR.thisField "lastHalf") (\jaN77312 -> JR.andThen (JR.thisField "WIDTH") (\jiN77312 -> (JR.aset (JR.lit jaN77312) (JR.lit jiN77312) ((JR.map2 JR.shr (JR.aget (JR.thisField "last") (JR.thisField "WIDTH")) (JR.int 1))))))), 
                            JR.exec (JR.andThen (JR.thisField "last") (\jaN77386 -> JR.andThen (JR.thisField "HEIGHT") (\jiN77386 -> (JR.aset (JR.lit jaN77386) (JR.lit jiN77386) (JR.local "aLastHeight"))))), 
                            JR.exec (JR.andThen (JR.thisField "lastHalf") (\jaN77429 -> JR.andThen (JR.thisField "HEIGHT") (\jiN77429 -> (JR.aset (JR.lit jaN77429) (JR.lit jiN77429) ((JR.map2 JR.shr (JR.aget (JR.thisField "last") (JR.thisField "HEIGHT")) (JR.int 1))))))), 
                            JR.exec (JR.invoke "setCustom_3" (JR.callStatic SWTJOGLProcessor.jm_getInstance_0 []) [ (JR.local "aLastWidth"), (JR.local "aLastHeight"), (JR.thisField "ratio") ]), 
                            JR.exec (JR.invoke "add_1" JR.this [ (JR.field "UPDATE" (JR.thisField "commonStrings")) ]) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.return (JR.invoke "toStringAppend_1" JR.this [ (JR.local "stringBuffer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringAppend_1 : JR.Method
jm_toStringAppend_1 jheap jthis jargs =
    JR.method [ ( "stringBuffer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "DISPLAY_INFO") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "FULL") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WIDTH_LABEL" (JR.thisField "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "full") (JR.thisField "WIDTH")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "FULL") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.thisField "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "full") (JR.thisField "HEIGHT")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "LAST") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WIDTH_LABEL" (JR.thisField "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "last") (JR.thisField "WIDTH")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "LAST") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.thisField "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "last") (JR.thisField "HEIGHT")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "LAST_HALF") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WIDTH_LABEL" (JR.thisField "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "lastHalf") (JR.thisField "WIDTH")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "LAST_HALF") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.thisField "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "lastHalf") (JR.thisField "HEIGHT")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.cond (JR.invoke "isPortrait_0" JR.this []) (JR.thisField "PORTRAIT") (JR.thisField "LANDSCAPE")) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getTop_0 : JR.Method
jm_getTop_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "top") ])
        (jregister jheap)
        jthis
        jargs


jm_getLeft_0 : JR.Method
jm_getLeft_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "left") ])
        (jregister jheap)
        jthis
        jargs


jm_getLastWidth_0 : JR.Method
jm_getLastWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "last") (JR.thisField "WIDTH")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLastHeight_0 : JR.Method
jm_getLastHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "last") (JR.thisField "HEIGHT")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLastHalfWidth_0 : JR.Method
jm_getLastHalfWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "lastHalf") (JR.thisField "WIDTH")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLastHalfHeight_0 : JR.Method
jm_getLastHalfHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "lastHalf") (JR.thisField "HEIGHT")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCustomLastWidth_0 : JR.Method
jm_getCustomLastWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "last") (JR.thisField "CUSTOM_WIDTH")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCustomLastHeight_0 : JR.Method
jm_getCustomLastHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "last") (JR.thisField "CUSTOM_HEIGHT")) ])
        (jregister jheap)
        jthis
        jargs


jm_getRawLastWidth_0 : JR.Method
jm_getRawLastWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "last") (JR.thisField "WIDTH")) ])
        (jregister jheap)
        jthis
        jargs


jm_getRawLastHeight_0 : JR.Method
jm_getRawLastHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "last") (JR.thisField "HEIGHT")) ])
        (jregister jheap)
        jthis
        jargs


jm_setCustom_2 : JR.Method
jm_setCustom_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "last") (\jaN79649 -> JR.andThen (JR.thisField "CUSTOM_WIDTH") (\jiN79649 -> (JR.aset (JR.lit jaN79649) (JR.lit jiN79649) (JR.local "width"))))), 
                    JR.exec (JR.andThen (JR.thisField "lastHalf") (\jaN79696 -> JR.andThen (JR.thisField "CUSTOM_WIDTH") (\jiN79696 -> (JR.aset (JR.lit jaN79696) (JR.lit jiN79696) ((JR.map2 JR.shr (JR.aget (JR.thisField "last") (JR.thisField "CUSTOM_WIDTH")) (JR.int 1))))))), 
                    JR.exec (JR.andThen (JR.thisField "last") (\jaN79770 -> JR.andThen (JR.thisField "CUSTOM_HEIGHT") (\jiN79770 -> (JR.aset (JR.lit jaN79770) (JR.lit jiN79770) (JR.local "height"))))), 
                    JR.exec (JR.andThen (JR.thisField "lastHalf") (\jaN79813 -> JR.andThen (JR.thisField "CUSTOM_HEIGHT") (\jiN79813 -> (JR.aset (JR.lit jaN79813) (JR.lit jiN79813) ((JR.map2 JR.shr (JR.aget (JR.thisField "last") (JR.thisField "CUSTOM_HEIGHT")) (JR.int 1))))))) ])
        (jregister jheap)
        jthis
        jargs


jm_setScalableListener_1 : JR.Method
jm_setScalableListener_1 jheap jthis jargs =
    JR.method [ ( "scalableListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "scalableListener" "" JR.this (JR.local "scalableListener")) ])
        (jregister jheap)
        jthis
        jargs


jm_getScalableListener_0 : JR.Method
jm_getScalableListener_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "scalableListener") ])
        (jregister jheap)
        jthis
        jargs


jm_getRatio_0 : JR.Method
jm_getRatio_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "ratio") ])
        (jregister jheap)
        jthis
        jargs


jm_getDisplayRatio_0 : JR.Method
jm_getDisplayRatio_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "displayRatio") ])
        (jregister jheap)
        jthis
        jargs


jm_setOffset_2 : JR.Method
jm_setOffset_2 jheap jthis jargs =
    JR.method [ ( "left", "I" ), ( "top", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "left" "I" JR.this (JR.local "left")) ])
        (jregister jheap)
        jthis
        jargs


jm_getxOffset_0 : JR.Method
jm_getxOffset_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "xOffset") ])
        (jregister jheap)
        jthis
        jargs


jm_getyOffset_0 : JR.Method
jm_getyOffset_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "yOffset") ])
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

