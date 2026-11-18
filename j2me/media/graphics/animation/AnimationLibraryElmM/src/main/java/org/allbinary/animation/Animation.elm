module Org.Allbinary.Animation.Animation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationInterface as AnimationInterface
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Image.Opengles.OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterface


jclass : String
jclass =
    "Animation"


jchain : List String
jchain =
    [ "Animation" ]
        ++ AnimationInterface.jchain
        ++ OpenGLSurfaceChangedInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "basicSetColorUtil", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "colorP", JR.defaultOf "I" ), ( "changeBasicColorP", JR.defaultOf "" ), ( "changeColorP", JR.defaultOf "I" ), ( "alphaP", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "setAlpha_1", jm_setAlpha_1 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintThreedXYZ_4", jm_paintThreedXYZ_4 )
        , ( "isThreed_0", jm_isThreed_0 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "setBackgroundBasicColorP_1", jm_setBackgroundBasicColorP_1 )
        , ( "getChangeBasicColor_0", jm_getChangeBasicColor_0 )
        , ( "changeBasicColor_1", jm_changeBasicColor_1 )
        , ( "getChangeColor_0", jm_getChangeColor_0 )
        , ( "getColor_0", jm_getColor_0 )
        , ( "setScale_2", jm_setScale_2 )
        , ( "setMaxScale_2", jm_setMaxScale_2 )
        , ( "set_1", jm_set_1 )
        , ( "setDx_1", jm_setDx_1 )
        , ( "getDx_0", jm_getDx_0 )
        , ( "setDy_1", jm_setDy_1 )
        , ( "getDy_0", jm_getDy_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Animation"
        [ ( "jm_setAlpha_1", jm_setAlpha_1 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintThreedXYZ_4", jm_paintThreedXYZ_4 ), ( "jm_isThreed_0", jm_isThreed_0 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_setBackgroundBasicColorP_1", jm_setBackgroundBasicColorP_1 ), ( "jm_getChangeBasicColor_0", jm_getChangeBasicColor_0 ), ( "jm_changeBasicColor_1", jm_changeBasicColor_1 ), ( "jm_getChangeColor_0", jm_getChangeColor_0 ), ( "jm_getColor_0", jm_getColor_0 ), ( "jm_setScale_2", jm_setScale_2 ), ( "jm_setMaxScale_2", jm_setMaxScale_2 ), ( "jm_set_1", jm_set_1 ), ( "jm_setDx_1", jm_setDx_1 ), ( "jm_getDx_0", jm_getDx_0 ), ( "jm_setDy_1", jm_setDy_1 ), ( "jm_getDy_0", jm_getDy_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "changeBasicColorP" "" JR.this (JR.field "NULL_COLOR" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setAlpha_1 : JR.Method
jm_setAlpha_1 jheap jthis jargs =
    JR.method [ ( "alpha", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "alphaP" "I" JR.this (JR.local "alpha")) ])
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
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []), (JR.invoke "getColor_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreedXYZ_4 : JR.Method
jm_paintThreedXYZ_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isThreed_0 : JR.Method
jm_isThreed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")), 
                    JR.exec (JR.setField "colorP" "I" JR.this (JR.invoke "intValue_0" (JR.thisField "basicColor") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setBackgroundBasicColorP_1 : JR.Method
jm_setBackgroundBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getChangeBasicColor_0 : JR.Method
jm_getChangeBasicColor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "changeBasicColorP") ])
        (jregister jheap)
        jthis
        jargs


jm_changeBasicColor_1 : JR.Method
jm_changeBasicColor_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "changeBasicColorP" "" JR.this (JR.local "basicColor")), 
                    JR.exec (JR.setField "changeColorP" "I" JR.this (JR.invoke "intValue_0" (JR.thisField "changeBasicColorP") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getChangeColor_0 : JR.Method
jm_getChangeColor_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "changeColorP") ])
        (jregister jheap)
        jthis
        jargs


jm_getColor_0 : JR.Method
jm_getColor_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "colorP") ])
        (jregister jheap)
        jthis
        jargs


jm_setScale_2 : JR.Method
jm_setScale_2 jheap jthis jargs =
    JR.method [ ( "scaleX", "F" ), ( "scaleY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setMaxScale_2 : JR.Method
jm_setMaxScale_2 jheap jthis jargs =
    JR.method [ ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setDx_1 : JR.Method
jm_setDx_1 jheap jthis jargs =
    JR.method [ ( "dx", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getDx_0 : JR.Method
jm_getDx_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_setDy_1 : JR.Method
jm_setDy_1 jheap jthis jargs =
    JR.method [ ( "dy", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getDy_0 : JR.Method
jm_getDy_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

