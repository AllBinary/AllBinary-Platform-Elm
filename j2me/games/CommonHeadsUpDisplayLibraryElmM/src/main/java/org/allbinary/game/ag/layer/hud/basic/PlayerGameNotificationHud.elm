module Org.Allbinary.Game.Ag.Layer.Hud.Basic.PlayerGameNotificationHud exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.CustomGPoint as CustomGPoint
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Business.Advertisement.GameAdStateFactory as GameAdStateFactory
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.GameNotification as GameNotification
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEventHandler as GameNotificationEventHandler
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.GameNotificationHud as GameNotificationHud
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.NextUnremoveableProcessor as NextUnremoveableProcessor
import Org.Allbinary.Canvas.Processor as Processor
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.SetAndRemoveProcessor as SetAndRemoveProcessor
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface


jclass : String
jclass =
    "PlayerGameNotificationHud"


jchain : List String
jchain =
    [ "PlayerGameNotificationHud" ]
        ++ GameNotificationHud.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameNotificationHud.jfields ++ [ ( "gameTickTimeDelayHelper", JR.defaultOf "" ), ( "EMPTY_STRING", JR.defaultOf "" ), ( "displayInfo", JR.defaultOf "" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "circularIndexUtil", JR.defaultOf "" ), ( "gameNotification", JR.defaultOf "" ), ( "permanentGameNotification", JR.defaultOf "" ), ( "setAndRemoveProcessor", JR.defaultOf "" ), ( "nextUnremoveableProcessor", JR.defaultOf "" ), ( "processor", JR.defaultOf "" ), ( "PERMANENT_GAME_NOTIFICATION", JR.defaultOf "" ), ( "lastString", JR.defaultOf "" ), ( "string", JR.defaultOf "" ), ( "point", JR.defaultOf "" ), ( "width", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "getPoint_2", jm_getPoint_2 )
        , ( "add_4", jm_add_4 )
        , ( "processTick_0", jm_processTick_0 )
        , ( "setAndRemove_0", jm_setAndRemove_0 )
        , ( "setAndRemoveProcess_0", jm_setAndRemoveProcess_0 )
        , ( "setNextUnremoveable_0", jm_setNextUnremoveable_0 )
        , ( "setNextUnremoveableProcess_0", jm_setNextUnremoveableProcess_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "paint_1", jm_paint_1 ) ]
        GameNotificationHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerGameNotificationHud"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_getPoint_2", jm_getPoint_2 ), ( "jm_add_4", jm_add_4 ), ( "jm_processTick_0", jm_processTick_0 ), ( "jm_setAndRemove_0", jm_setAndRemove_0 ), ( "jm_setAndRemoveProcess_0", jm_setAndRemoveProcess_0 ), ( "jm_setNextUnremoveable_0", jm_setNextUnremoveable_0 ), ( "jm_setNextUnremoveableProcess_0", jm_setNextUnremoveableProcess_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "location", "I" ), ( "direction", "I" ), ( "bufferZone", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameNotificationHud.jinit_4 JR.this [ (JR.local "location"), (JR.local "direction"), (JR.local "bufferZone"), (JR.local "basicColor") ]),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "EMPTY_STRING" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "displayInfo" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "gameNotification" "" JR.this (JR.new GameNotification.jnew_0 [])),
                JR.exec (JR.setField "permanentGameNotification" "" JR.this (JR.new GameNotification.jnew_0 [])),
                JR.exec (JR.setField "setAndRemoveProcessor" "" JR.this (JR.new SetAndRemoveProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "nextUnremoveableProcessor" "" JR.this (JR.new NextUnremoveableProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "processor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "PERMANENT_GAME_NOTIFICATION" "" JR.this (JR.str "Permanent Game Notification: ")),
                JR.exec (JR.setField "lastString" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "string" "" JR.this (JR.thisField "EMPTY_STRING")),
                JR.exec (JR.setField "point" "" JR.this CustomGPoint.jstatic_NULL_CUSTOM_POINT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.int 0) ])), 
                    JR.declare "gameNotificationEventHandler" "" (JR.callStatic GameNotificationEventHandler.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.local "gameNotificationEventHandler") []), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.local "gameNotificationEventHandler") [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callVia GameNotificationHud.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]), 
                        JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                        JR.exec (JR.setField "width" "I" JR.this (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "string") ])), 
                        JR.exec (JR.invoke "process_0" (JR.thisField "processor") []), 
                        JR.exec (JR.setField "processor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "UPDATE" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getPoint_2 : JR.Method
jm_getPoint_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "point" "" JR.this (JR.callStatic CustomGPoint.jm_getInstance3_2 [ (JR.int 0), (JR.int 0) ])), 
                    JR.exec (JR.invoke "setX_1" (JR.thisField "point") [ (JR.local "x") ]), 
                    JR.exec (JR.invoke "setY_1" (JR.thisField "point") [ (JR.local "y") ]), 
                    JR.return (JR.thisField "point") ])
        (jregister jheap)
        jthis
        jargs


jm_add_4 : JR.Method
jm_add_4 jheap jthis jargs =
    JR.method [ ( "string", "" ), ( "seconds", "" ), ( "basicColor", "" ), ( "permanent", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "booleanValue_0" (JR.local "permanent") []) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.thisField "lastString") (JR.local "string")) (JR.run [ 
                            JR.exec (JR.setField "lastString" "" JR.this (JR.local "string")), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "PERMANENT_GAME_NOTIFICATION") ]) [ (JR.local "string") ]) []), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]) ]) identity, 
                        JR.exec (JR.invoke "add_3" (JR.thisField "permanentGameNotification") [ (JR.local "string"), (JR.local "seconds"), (JR.local "basicColor") ]), 
                        JR.exec (JR.invoke "setSize_1" (JR.thisField "circularIndexUtil") [ (JR.invoke "getSize_0" (JR.thisField "permanentGameNotification") []) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_3" (JR.thisField "gameNotification") [ (JR.local "string"), (JR.local "seconds"), (JR.local "basicColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processTick_0 : JR.Method
jm_processTick_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]) (JR.run [ 
                        JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.callStatic GameAdStateFactory.jm_getInstance_0 []) []), 
                        JR.ifElse (JR.invoke "isShowingAtLocation_1" (JR.local "gameAdState") [ (JR.invoke "getLocation_0" JR.this []) ]) (JR.run [ 
                            JR.exec (JR.setField "offsetY" "" JR.this (JR.map JR.neg (JR.int 54))) ]) (JR.run [ 
                            JR.exec (JR.setField "offsetY" "" JR.this (JR.int 0)) ]), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getSize_0" (JR.thisField "gameNotification") []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "setAndRemove_0" JR.this []) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getSize_0" (JR.thisField "permanentGameNotification") []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "setNextUnremoveable_0" JR.this []) ]) (JR.run [ 
                            JR.exec (JR.setField "string" "" JR.this (JR.thisField "EMPTY_STRING")) ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setAndRemove_0 : JR.Method
jm_setAndRemove_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "removeAt_1" (JR.field "stringList" (JR.thisField "gameNotification")) [ (JR.int 0) ])), 
                    JR.exec (JR.setField "processor" "" JR.this (JR.thisField "setAndRemoveProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_setAndRemoveProcess_0 : JR.Method
jm_setAndRemoveProcess_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setX_1" JR.this [ (JR.map2 JR.shr ((JR.map2 JR.sub (JR.invoke "getLastWidth_0" (JR.thisField "displayInfo") []) (JR.thisField "width"))) (JR.int 1)) ]), 
                    JR.exec (JR.invoke "setX_1" (JR.thisField "point") [ (JR.invoke "getX_0" JR.this []) ]), 
                    JR.exec (JR.invoke "setY_1" (JR.thisField "point") [ (JR.invoke "getY_0" JR.this []) ]), 
                    JR.declare "time" "" (JR.invoke "removeAt_1" (JR.field "timeList" (JR.thisField "gameNotification")) [ (JR.int 0) ]), 
                    JR.declare "iTime" "I" (JR.map2 JR.mul (JR.invoke "intValue_0" (JR.local "time") []) (JR.int 1000)), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "iTime") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "iTime" "I" (JR.int 500)) ]) identity, 
                    JR.exec (JR.andThen (JR.thisField "timeDelayHelper") (\jtN72845 -> (JR.setField "delay" "I" (JR.lit jtN72845) (JR.local "iTime")))), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.invoke "removeAt_1" (JR.field "colorList" (JR.thisField "gameNotification")) [ (JR.int 0) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setNextUnremoveable_0 : JR.Method
jm_setNextUnremoveable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.setField "string" "" JR.this (JR.aget (JR.field "objectArray" (JR.field "stringList" (JR.thisField "permanentGameNotification"))) (JR.local "index"))), 
                    JR.exec (JR.setField "processor" "" JR.this (JR.thisField "nextUnremoveableProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_setNextUnremoveableProcess_0 : JR.Method
jm_setNextUnremoveableProcess_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.invoke "setX_1" JR.this [ (JR.map2 JR.shr ((JR.map2 JR.sub (JR.invoke "getLastWidth_0" (JR.thisField "displayInfo") []) (JR.thisField "width"))) (JR.int 1)) ]), 
                    JR.exec (JR.invoke "setX_1" (JR.thisField "point") [ (JR.invoke "getX_0" JR.this []) ]), 
                    JR.exec (JR.invoke "setY_1" (JR.thisField "point") [ (JR.invoke "getY_0" JR.this []) ]), 
                    JR.declare "time" "" (JR.aget (JR.field "objectArray" (JR.field "timeList" (JR.thisField "permanentGameNotification"))) (JR.local "index")), 
                    JR.exec (JR.andThen (JR.thisField "timeDelayHelper") (\jtN73432 -> (JR.setField "delay" "I" (JR.lit jtN73432) (JR.map2 JR.mul (JR.invoke "intValue_0" (JR.local "time") []) (JR.int 1000))))), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.aget (JR.field "objectArray" (JR.field "colorList" (JR.thisField "permanentGameNotification"))) (JR.local "index")) ]), 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "gameNotification") []), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "permanentGameNotification") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.callVia GameNotificationHud.jvtable "paintString_2" JR.this [ (JR.local "graphics"), (JR.thisField "string") ]) ])
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

