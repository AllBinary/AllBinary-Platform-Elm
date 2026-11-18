module Org.Allbinary.Game.Displayable.Canvas.MyFormUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Graphics.Threed.SWTJOGLProcessor as SWTJOGLProcessor


jclass : String
jclass =
    "MyFormUtil"


jchain : List String
jchain =
    [ "MyFormUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "popupMenuRectangle", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "getPopupMenuRectangle_0", jm_getPopupMenuRectangle_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MyFormUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_getPopupMenuRectangle_0", jm_getPopupMenuRectangle_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MyFormUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "popupMenuRectangle" "" JR.this RectangleFactory.jstatic_SINGLETON),
                identity ])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "isOpenGL" "Z" (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]), 
                    JR.declare "TOTAL_CHAR_WIDTH" "I" (JR.cond (JR.and (JR.invoke "isJOGL_0" (JR.callStatic SWTJOGLProcessor.jm_getInstance_0 []) []) (JR.local "isOpenGL")) (JR.int 2) (JR.int 3)), 
                    JR.declare "width" "I" (JR.callStatic MyFontProcessor.jm_defaultStringWidth_2 [ (JR.local "font"), (JR.local "TOTAL_CHAR_WIDTH") ]), 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.int 320)) (JR.run [ 
                        JR.exec (JR.setField "popupMenuRectangle" "" JR.this (JR.new Rectangle.jnew_3 [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.int 0), (JR.int 25) ]), (JR.local "width"), (JR.map2 JR.add ((JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "font") []) (JR.int 4))) (JR.int 2)) ])) ]) (JR.run [ 
                        JR.exec (JR.setField "popupMenuRectangle" "" JR.this (JR.new Rectangle.jnew_3 [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.int 0), (JR.map2 JR.sub (JR.invoke "getLastHalfHeight_0" (JR.local "displayInfo") []) (JR.int 70)) ]), (JR.local "width"), ((JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "font") []) (JR.int 5))) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getPopupMenuRectangle_0 : JR.Method
jm_getPopupMenuRectangle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "popupMenuRectangle") ])
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

