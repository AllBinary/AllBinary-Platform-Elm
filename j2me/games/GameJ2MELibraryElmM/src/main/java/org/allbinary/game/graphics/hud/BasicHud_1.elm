module Org.Allbinary.Game.Graphics.Hud.BasicHud_1 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.graphics.hud
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Game.Graphics.Hud.BasicHudFactory as BasicHudFactory
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Javax.Microedition.Lcdui.Graphics as Graphics
import Org.Allbinary.Game.Graphics.Hud.HudGraphicsPosition as HudGraphicsPosition
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "BasicHud_1"


jchain : List String
jchain =
    [ "BasicHud_1" ]
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "canvasStrings", JR.defaultOf "" ), ( "basicSetColorUtil", JR.defaultOf "" ), ( "displayInfo", JR.defaultOf "" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "location", JR.defaultOf "I" ), ( "direction", JR.defaultOf "I" ), ( "bufferZone", JR.defaultOf "I" ), ( "hudGraphicsPosition", JR.defaultOf "" ), ( "x", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ), ( "basicColor", JR.defaultOf "" ), ( "color", JR.defaultOf "I" ), ( "updateMaxWidth", JR.defaultOf "I" ), ( "updateMaxHeight", JR.defaultOf "I" ), ( "offsetY", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "getLocation_0", jm_getLocation_0 )
        , ( "getDirection_0", jm_getDirection_0 )
        , ( "getHudGraphicsPositionWH_4", jm_getHudGraphicsPositionWH_4 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 )
        , ( "getPoint_2", jm_getPoint_2 )
        , ( "getBufferZone_0", jm_getBufferZone_0 )
        , ( "setBufferZone_1", jm_setBufferZone_1 )
        , ( "setLocation_1", jm_setLocation_1 )
        , ( "setDirection_1", jm_setDirection_1 )
        , ( "getHudGraphicsPosition_0", jm_getHudGraphicsPosition_0 )
        , ( "getColor_0", jm_getColor_0 )
        , ( "getX_0", jm_getX_0 )
        , ( "setX_1", jm_setX_1 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setY_1", jm_setY_1 )
        , ( "getY_0", jm_getY_0 )
        , ( "paintSSO_4", jm_paintSSO_4 )
        , ( "paintSSOO_5", jm_paintSSOO_5 )
        , ( "paintDXY_9", jm_paintDXY_9 )
        , ( "paintDX_8", jm_paintDX_8 )
        , ( "paintOffsetAndLength_4", jm_paintOffsetAndLength_4 )
        , ( "paintString_2", jm_paintString_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicHud_1"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_getLocation_0", jm_getLocation_0 ), ( "jm_getDirection_0", jm_getDirection_0 ), ( "jm_getHudGraphicsPositionWH_4", jm_getHudGraphicsPositionWH_4 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 ), ( "jm_getPoint_2", jm_getPoint_2 ), ( "jm_getBufferZone_0", jm_getBufferZone_0 ), ( "jm_setBufferZone_1", jm_setBufferZone_1 ), ( "jm_setLocation_1", jm_setLocation_1 ), ( "jm_setDirection_1", jm_setDirection_1 ), ( "jm_getHudGraphicsPosition_0", jm_getHudGraphicsPosition_0 ), ( "jm_getColor_0", jm_getColor_0 ), ( "jm_getX_0", jm_getX_0 ), ( "jm_setX_1", jm_setX_1 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setY_1", jm_setY_1 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_paintSSO_4", jm_paintSSO_4 ), ( "jm_paintSSOO_5", jm_paintSSOO_5 ), ( "jm_paintDXY_9", jm_paintDXY_9 ), ( "jm_paintDX_8", jm_paintDX_8 ), ( "jm_paintOffsetAndLength_4", jm_paintOffsetAndLength_4 ), ( "jm_paintString_2", jm_paintString_2 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "location", "I" ), ( "direction", "I" ), ( "bufferZone", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "canvasStrings" "" JR.this (JR.callStatic CanvasStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "displayInfo" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "hudGraphicsPosition" "" JR.this HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setLocation_1" JR.this [ (JR.local "location") ]), 
                    JR.exec (JR.invoke "setDirection_1" JR.this [ (JR.local "direction") ]), 
                    JR.exec (JR.invoke "setBufferZone_1" JR.this [ (JR.local "bufferZone") ]), 
                    JR.exec (JR.invoke "onDisplayChangeEvent_1" JR.this [ (JR.field "displayChangeEvent" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.exec (JR.setField "color" "I" JR.this (JR.invoke "intValue_0" (JR.local "basicColor") [])) ]) ])
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
                        JR.exec (JR.setField "hudGraphicsPosition" "" JR.this (JR.invoke "getHudGraphicsPositionWH_4" JR.this [ (JR.invoke "getLastWidth_0" (JR.thisField "displayInfo") []), (JR.invoke "getLastHeight_0" (JR.thisField "displayInfo") []), (JR.thisField "updateMaxWidth"), (JR.thisField "updateMaxHeight") ])), 
                        JR.exec (JR.setField "x" "I" JR.this (JR.invoke "getX_0" (JR.invoke "getPoint_0" (JR.thisField "hudGraphicsPosition") []) [])), 
                        JR.exec (JR.invoke "setY_1" JR.this [ (JR.invoke "getY_0" (JR.invoke "getPoint_0" (JR.thisField "hudGraphicsPosition") []) []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "ON_DISPLAY_CHANGE_EVENT" (JR.thisField "canvasStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getLocation_0 : JR.Method
jm_getLocation_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "location") ])
        (jregister jheap)
        jthis
        jargs


jm_getDirection_0 : JR.Method
jm_getDirection_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "direction") ])
        (jregister jheap)
        jthis
        jargs


jm_getHudGraphicsPositionWH_4 : JR.Method
jm_getHudGraphicsPositionWH_4 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "maxWidth", "I" ), ( "maxHeight", "I" ) ] ""
        (JR.run [ 
                    JR.declare "x" "I" (JR.int 0), 
                    JR.declare "y" "I" (JR.int 0), 
                    JR.declare "anchor" "I" (JR.int 0), 
                    JR.declare "basicHudFactory" "" (JR.callStatic BasicHudFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.field "BOTTOMLEFT" (JR.local "basicHudFactory")) (JR.invoke "getLocation_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" (JR.map2 JR.add (JR.thisField "bufferZone") (JR.int 2))), 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.local "height") (JR.local "maxHeight")) (JR.thisField "bufferZone"))), 
                        JR.exec (JR.setLocal "anchor" "I" (JR.map2 JR.band Graphics.jstatic_BOTTOM Graphics.jstatic_LEFT)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.field "BOTTOMRIGHT" (JR.local "basicHudFactory")) (JR.invoke "getLocation_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" (JR.map2 JR.sub (JR.local "width") (JR.local "maxWidth"))), 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.local "height") (JR.local "maxHeight")) (JR.thisField "bufferZone"))), 
                        JR.exec (JR.setLocal "anchor" "I" (JR.map2 JR.band Graphics.jstatic_BOTTOM Graphics.jstatic_RIGHT)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.field "TOPLEFT" (JR.local "basicHudFactory")) (JR.invoke "getLocation_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" (JR.map2 JR.add (JR.thisField "bufferZone") (JR.int 2))), 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.add (JR.thisField "bufferZone") (JR.int 5))), 
                        JR.exec (JR.setLocal "anchor" "I" Anchor.jstatic_TOP_LEFT) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.field "TOPRIGHT" (JR.local "basicHudFactory")) (JR.invoke "getLocation_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" (JR.map2 JR.sub (JR.local "width") (JR.local "maxWidth"))), 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.add (JR.thisField "bufferZone") (JR.int 5))), 
                        JR.exec (JR.setLocal "anchor" "I" (JR.map2 JR.band Graphics.jstatic_TOP Graphics.jstatic_RIGHT)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.field "TOPCENTER" (JR.local "basicHudFactory")) (JR.invoke "getLocation_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" ((JR.map2 JR.div ((JR.map2 JR.sub (JR.local "width") (JR.local "maxWidth"))) (JR.int 2)))), 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.add (JR.thisField "bufferZone") (JR.int 5))), 
                        JR.exec (JR.setLocal "anchor" "I" (JR.map2 JR.band Graphics.jstatic_TOP Graphics.jstatic_HCENTER)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.field "BOTTOMCENTER" (JR.local "basicHudFactory")) (JR.invoke "getLocation_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" ((JR.map2 JR.div ((JR.map2 JR.sub (JR.local "width") (JR.local "maxWidth"))) (JR.int 2)))), 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.local "height") (JR.local "maxHeight")) (JR.thisField "bufferZone"))), 
                        JR.exec (JR.setLocal "anchor" "I" (JR.map2 JR.band Graphics.jstatic_BOTTOM Graphics.jstatic_HCENTER)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.field "ABSOLUTE" (JR.local "basicHudFactory")) (JR.invoke "getLocation_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" (JR.local "maxHeight")), 
                        JR.exec (JR.setLocal "y" "I" (JR.local "maxWidth")), 
                        JR.exec (JR.setLocal "anchor" "I" (JR.int 0)) ]) identity ]) ]) ]) ]) ]) ]), 
                    JR.return (JR.new HudGraphicsPosition.jnew_2 [ (JR.invoke "getPoint_2" JR.this [ (JR.local "x"), (JR.local "y") ]), (JR.local "anchor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDisplayChangeEvent_1 : JR.Method
jm_onDisplayChangeEvent_1 jheap jthis jargs =
    JR.method [ ( "displayChangeEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPoint_2 : JR.Method
jm_getPoint_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createXY_2" (JR.callStatic PointFactory.jm_getInstance_0 []) [ (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getBufferZone_0 : JR.Method
jm_getBufferZone_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "bufferZone") ])
        (jregister jheap)
        jthis
        jargs


jm_setBufferZone_1 : JR.Method
jm_setBufferZone_1 jheap jthis jargs =
    JR.method [ ( "bufferZone", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "bufferZone" "I" JR.this (JR.local "bufferZone")) ])
        (jregister jheap)
        jthis
        jargs


jm_setLocation_1 : JR.Method
jm_setLocation_1 jheap jthis jargs =
    JR.method [ ( "location", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "location" "I" JR.this (JR.local "location")) ])
        (jregister jheap)
        jthis
        jargs


jm_setDirection_1 : JR.Method
jm_setDirection_1 jheap jthis jargs =
    JR.method [ ( "direction", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "direction" "I" JR.this (JR.local "direction")) ])
        (jregister jheap)
        jthis
        jargs


jm_getHudGraphicsPosition_0 : JR.Method
jm_getHudGraphicsPosition_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hudGraphicsPosition") ])
        (jregister jheap)
        jthis
        jargs


jm_getColor_0 : JR.Method
jm_getColor_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "color") ])
        (jregister jheap)
        jthis
        jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "x") ])
        (jregister jheap)
        jthis
        jargs


jm_setX_1 : JR.Method
jm_setX_1 jheap jthis jargs =
    JR.method [ ( "x", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "x" "I" JR.this (JR.local "x")) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
        (jregister jheap)
        jthis
        jargs


jm_setY_1 : JR.Method
jm_setY_1 jheap jthis jargs =
    JR.method [ ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "y" "I" JR.this (JR.local "y")) ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "y") ])
        (jregister jheap)
        jthis
        jargs


jm_paintSSO_4 : JR.Method
jm_paintSSO_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "string", "" ), ( "string2", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "string"), (JR.thisField "x"), (JR.invoke "getY_0" JR.this []), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "string2"), (JR.map2 JR.add (JR.thisField "x") (JR.local "offset")), (JR.invoke "getY_0" JR.this []), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintSSOO_5 : JR.Method
jm_paintSSOO_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "string", "" ), ( "string2", "" ), ( "offset", "I" ), ( "offset2", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "getColor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "string"), (JR.map2 JR.add (JR.thisField "x") (JR.local "offset")), (JR.invoke "getY_0" JR.this []), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "string2"), (JR.map2 JR.add (JR.thisField "x") (JR.local "offset2")), (JR.invoke "getY_0" JR.this []), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintDXY_9 : JR.Method
jm_paintDXY_9 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "charArray", "" ), ( "offset", "I" ), ( "len", "I" ), ( "charArray2", "" ), ( "offset2", "I" ), ( "len2", "I" ), ( "xOffset", "I" ), ( "xOffset2", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []) ]), 
                    JR.declare "y" "I" (JR.invoke "getY_0" JR.this []), 
                    JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray"), (JR.local "offset"), (JR.local "len"), (JR.map2 JR.add (JR.thisField "x") (JR.local "xOffset")), (JR.local "y"), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]), 
                    JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray2"), (JR.local "offset2"), (JR.local "len2"), (JR.map2 JR.add (JR.thisField "x") (JR.local "xOffset2")), (JR.local "y"), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintDX_8 : JR.Method
jm_paintDX_8 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "charArray", "" ), ( "offset", "I" ), ( "len", "I" ), ( "charArray2", "" ), ( "offset2", "I" ), ( "len2", "I" ), ( "xOffset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []) ]), 
                    JR.declare "y" "I" (JR.invoke "getY_0" JR.this []), 
                    JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray"), (JR.local "offset"), (JR.local "len"), (JR.thisField "x"), (JR.local "y"), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]), 
                    JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray2"), (JR.local "offset2"), (JR.local "len2"), (JR.map2 JR.add (JR.thisField "x") (JR.local "xOffset")), (JR.local "y"), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintOffsetAndLength_4 : JR.Method
jm_paintOffsetAndLength_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "charArray", "" ), ( "offset", "I" ), ( "len", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []) ]), 
                    JR.declare "y" "I" (JR.invoke "getY_0" JR.this []), 
                    JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray"), (JR.local "offset"), (JR.local "len"), (JR.thisField "x"), (JR.local "y"), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintString_2 : JR.Method
jm_paintString_2 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "string", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []) ]), 
                    JR.declare "y" "I" (JR.map2 JR.add (JR.invoke "getY_0" JR.this []) (JR.thisField "offsetY")), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.local "string"), (JR.thisField "x"), (JR.local "y"), (JR.invoke "getAnchor_0" (JR.thisField "hudGraphicsPosition") []) ]) ])
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

