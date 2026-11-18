module Org.Allbinary.Game.Layer.AllBinaryGameLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Layer.GameLayerUtil as GameLayerUtil
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Image.Opengles.OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterface
import Org.Allbinary.Game.Layer.SWTBlackPaintable as SWTBlackPaintable
import Org.Allbinary.Game.Layer.SWTUtil as SWTUtil
import Org.Allbinary.View.Event.ViewPositionEventListenerInterface as ViewPositionEventListenerInterface


jclass : String
jclass =
    "AllBinaryGameLayer"


jchain : List String
jchain =
    [ "AllBinaryGameLayer" ]
        ++ AllBinaryLayer.jchain
        ++ ViewPositionEventListenerInterface.jchain
        ++ OpenGLSurfaceChangedInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryLayer.jfields ++ [ ( "commonStrings", JR.defaultOf "" ), ( "basicSetColorUtil", JR.defaultOf "" ), ( "RED", JR.defaultOf "" ), ( "paintable", JR.defaultOf "" ), ( "gameKeyEventList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createPaintable_0", jm_createPaintable_0 )
        , ( "set_1", jm_set_1 )
        , ( "move_0", jm_move_0 )
        , ( "getGameKeyEventList_0", jm_getGameKeyEventList_0 )
        , ( "processInput_1", jm_processInput_1 )
        , ( "processTick_1", jm_processTick_1 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onViewPositionChangeEvent_0", jm_onViewPositionChangeEvent_0 )
        , ( "onChangeEvent_1", jm_onChangeEvent_1 )
        , ( "paintFirst_1", jm_paintFirst_1 )
        , ( "paintDebug_1", jm_paintDebug_1 )
        , ( "setWidth_1", jm_setWidth_1 )
        , ( "setHeight_1", jm_setHeight_1 ) ]
        AllBinaryLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryGameLayer"
        [ ( "jm_createPaintable_0", jm_createPaintable_0 ), ( "jm_set_1", jm_set_1 ), ( "jm_move_0", jm_move_0 ), ( "jm_getGameKeyEventList_0", jm_getGameKeyEventList_0 ), ( "jm_processInput_1", jm_processInput_1 ), ( "jm_processTick_1", jm_processTick_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onViewPositionChangeEvent_0", jm_onViewPositionChangeEvent_0 ), ( "jm_onChangeEvent_1", jm_onChangeEvent_1 ), ( "jm_paintFirst_1", jm_paintFirst_1 ), ( "jm_paintDebug_1", jm_paintDebug_1 ), ( "jm_setWidth_1", jm_setWidth_1 ), ( "jm_setHeight_1", jm_setHeight_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "layerInfo", "" ), ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryLayer.jinit_3 JR.this [ (JR.local "name"), (JR.local "layerInfo"), (JR.local "viewPosition") ]),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "RED" "" JR.this (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "paintable" "" JR.this (JR.callStatic jm_createPaintable_0 [])),
                JR.exec (JR.setField "gameKeyEventList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_createPaintable_0 : JR.Method
jm_createPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse SWTUtil.jstatic_isSWT (JR.run [ 
                        JR.return (JR.new SWTBlackPaintable.jnew_0 []) ]) identity, 
                    JR.return (JR.callStatic NullPaintable.jm_getInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_move_0 : JR.Method
jm_move_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getGameKeyEventList_0 : JR.Method
jm_getGameKeyEventList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameKeyEventList") ])
        (jregister jheap)
        jthis
        jargs


jm_processInput_1 : JR.Method
jm_processInput_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processTick_1 : JR.Method
jm_processTick_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
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


jm_onViewPositionChangeEvent_0 : JR.Method
jm_onViewPositionChangeEvent_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onChangeEvent_1" JR.this [ (JR.thisField "viewPositionEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onChangeEvent_1 : JR.Method
jm_onChangeEvent_1 jheap jthis jargs =
    JR.method [ ( "layerManagerEvent", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.callStatic GameLayerUtil.jm_isOnScreen_1 [ JR.this ]) (JR.run [ 
                        JR.exec (JR.invoke "setVisible_1" JR.this [ (JR.bool True) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setVisible_1" JR.this [ (JR.bool False) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintFirst_1 : JR.Method
jm_paintFirst_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "paintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintDebug_1 : JR.Method
jm_paintDebug_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" JR.this []), 
                    JR.declare "viewX" "I" (JR.invoke "getX_0" (JR.local "viewPosition") []), 
                    JR.declare "viewY" "I" (JR.invoke "getY_0" (JR.local "viewPosition") []), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "RED") ]), 
                    JR.exec (JR.invoke "drawRect_4" (JR.local "graphics") [ (JR.local "viewX"), (JR.local "viewY"), (JR.invoke "getWidth_0" JR.this []), (JR.invoke "getHeight_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setWidth_1 : JR.Method
jm_setWidth_1 jheap jthis jargs =
    JR.method [ ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia AllBinaryLayer.jvtable "setLayerWidth_1" JR.this [ (JR.local "width") ]), 
                    JR.exec (JR.invoke "setHalfWidth_1" JR.this [ (JR.map2 JR.shr (JR.local "width") (JR.int 1)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setHeight_1 : JR.Method
jm_setHeight_1 jheap jthis jargs =
    JR.method [ ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia AllBinaryLayer.jvtable "setLayerHeight_1" JR.this [ (JR.local "height") ]), 
                    JR.exec (JR.invoke "setHalfHeight_1" JR.this [ (JR.map2 JR.shr (JR.local "height") (JR.int 1)) ]) ])
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

