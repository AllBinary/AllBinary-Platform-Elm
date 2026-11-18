module Org.Allbinary.Game.Displayable.Canvas.BasicPopupMenuPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.AndroidUtil as AndroidUtil
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Graphics.Draw.DrawVerticalStringUtil as DrawVerticalStringUtil
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureUtil as OpenGLFeatureUtil
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Animation.Vector.RectangleFilledAnimation as RectangleFilledAnimation
import Org.Allbinary.Graphics.Threed.SWTJOGLProcessor as SWTJOGLProcessor
import Org.Allbinary.Game.Layer.SWTUtil as SWTUtil
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "BasicPopupMenuPaintable"


jchain : List String
jchain =
    [ "BasicPopupMenuPaintable" ]
        ++ Paintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "basicSetColorUtil", JR.defaultOf "" ), ( "drawStringUtil", JR.defaultOf "" ), ( "label", JR.defaultOf "" ), ( "foregroundBasicColor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "rectangle", JR.defaultOf "" ), ( "BORDER", JR.defaultOf "I" ), ( "heightOffset", JR.defaultOf "I" ), ( "offset", JR.defaultOf "I" ), ( "animationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "init_1", jm_init_1 )
        , ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicPopupMenuPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_init_1", jm_init_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "BasicPopupMenuPaintable" jclinit "NAME"
        (JR.str "MENU")
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "drawStringUtil" "" JR.this (JR.callStatic DrawVerticalStringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "foregroundBasicColor" "" JR.this (JR.local "foregroundBasicColor")), 
                    JR.exec (JR.setField "label" "" JR.this jstatic_NAME), 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.local "rectangle")), 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) (JR.run [ 
                        JR.exec (JR.setField "animationInterface" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ])) ]) (JR.run [ 
                        JR.exec (JR.setField "animationInterface" "" JR.this (JR.new RectangleFilledAnimation.jnew_3 [ (JR.invoke "getWidth_0" (JR.thisField "rectangle") []), (JR.invoke "getHeight_0" (JR.thisField "rectangle") []), (JR.field "TRANSPARENT_GREY" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])) ]), 
                    JR.exec (JR.invoke "init_1" JR.this [ (JR.local "rectangle") ]) ]) ])
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
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "isOpenGL" "Z" (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "updateMeasurement_2" (JR.thisField "drawStringUtil") [ (JR.local "graphics"), (JR.thisField "label") ]), 
                    JR.declare "BORDER" "I" (JR.int 0), 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.local "isOpenGL")) (JR.run [ 
                        JR.exec (JR.setLocal "BORDER" "I" (JR.map2 JR.div (JR.callStatic MyFontProcessor.jm_defaultCharWidth_1 [ (JR.local "font") ]) (JR.int 2))) ]) (JR.run [ 
                    JR.ifElse (JR.or (JR.or (JR.callStatic AndroidUtil.jm_isAndroid_0 []) (JR.callStatic J2MEUtil.jm_isJ2SE_0 [])) SWTUtil.jstatic_isSWT) (JR.run [ 
                        JR.exec (JR.setLocal "BORDER" "I" (JR.callStatic MyFontProcessor.jm_defaultCharWidth_1 [ (JR.local "font") ])) ]) (JR.run [ 
                        JR.exec (JR.setLocal "BORDER" "I" (JR.map2 JR.mul (JR.callStatic MyFontProcessor.jm_defaultCharWidth_1 [ (JR.local "font") ]) (JR.int 2))) ]) ]), 
                    JR.exec (JR.setField "BORDER" "I" JR.this (JR.local "BORDER")), 
                    JR.exec (JR.setField "heightOffset" "I" JR.this (JR.map2 JR.sub (JR.invoke "getHeight_0" (JR.thisField "rectangle") []) ((JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "font") []) (JR.invoke "length_0" jstatic_NAME []))))), 
                    JR.ifElse (JR.invoke "isAnyThreed_0" (JR.callStatic OpenGLFeatureUtil.jm_getInstance_0 []) []) (JR.run [ 
                        JR.exec (JR.setField "heightOffset" "I" JR.this (JR.map2 JR.sub (JR.thisField "heightOffset") (JR.map2 JR.add (JR.invoke "getHeight_0" (JR.local "font") []) (JR.int 2)))), 
                        JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) (JR.run [ 
                            JR.exec (JR.setField "heightOffset" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])) ]) (JR.run [ 
                            JR.exec (JR.setField "heightOffset" "I" JR.this (JR.map2 JR.sub (JR.thisField "heightOffset") (JR.map2 JR.add (JR.invoke "getHeight_0" (JR.local "font") []) (JR.int 2)))) ]) ]) identity, 
                    JR.exec (JR.setField "offset" "I" JR.this (JR.map2 JR.add ((JR.map2 JR.shr (JR.thisField "heightOffset") (JR.int 1))) ((JR.cond (JR.invoke "isJOGL_0" (JR.callStatic SWTJOGLProcessor.jm_getInstance_0 []) []) (JR.int 4) (JR.int 0))))), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.local "rectangle")), 
                    JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.thisField "rectangle") []), 
                    JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.thisField "rectangle") []), 
                    JR.ifElse (JR.or (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) identity (JR.run [ 
                        JR.declare "rectangleFilledAnimation" "" (JR.thisField "animationInterface"), 
                        JR.exec (JR.invoke "setWidth_1" (JR.local "rectangleFilledAnimation") [ (JR.local "width") ]), 
                        JR.exec (JR.invoke "setHeight_1" (JR.local "rectangleFilledAnimation") [ (JR.local "height") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "point" "" (JR.invoke "getPoint_0" (JR.thisField "rectangle") []), 
                    JR.declare "x" "I" (JR.invoke "getX_0" (JR.local "point") []), 
                    JR.declare "y" "I" (JR.invoke "getY_0" (JR.local "point") []), 
                    JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.thisField "rectangle") []), 
                    JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.thisField "rectangle") []), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "foregroundBasicColor") ]), 
                    JR.exec (JR.invoke "paintVerticle_5" (JR.thisField "drawStringUtil") [ (JR.local "graphics"), (JR.thisField "label"), (JR.map2 JR.add (JR.local "x") (JR.thisField "BORDER")), (JR.map2 JR.add (JR.local "y") (JR.thisField "offset")), (JR.int 0) ]), 
                    JR.exec (JR.invoke "drawRect_4" (JR.local "graphics") [ (JR.local "x"), (JR.local "y"), (JR.local "width"), (JR.local "height") ]) ])
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

