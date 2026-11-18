module Org.Allbinary.Device.OpenGLESGraphics exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.device
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Javax.Microedition.Lcdui.Graphics as Graphics
import Org.Allbinary.Device.GraphicsInterface as GraphicsInterface
import Org.Allbinary.Device.NullGL10 as NullGL10
import Org.Allbinary.Image.Opengles.OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterface


jclass : String
jclass =
    "OpenGLESGraphics"


jchain : List String
jchain =
    [ "OpenGLESGraphics" ]
        ++ Graphics.jchain
        ++ OpenGLSurfaceChangedInterface.jchain
        ++ GraphicsInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Graphics.jfields ++ [ ( "commonStrings", JR.defaultOf "" ), ( "gl", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateGL_1", jm_updateGL_1 )
        , ( "set_1", jm_set_1 )
        , ( "init_0", jm_init_0 )
        , ( "update_0", jm_update_0 )
        , ( "setOrthoginalMode_0", jm_setOrthoginalMode_0 )
        , ( "setCameraMode_0", jm_setCameraMode_0 )
        , ( "getGl10_0", jm_getGl10_0 )
        , ( "setFontDebug_2", jm_setFontDebug_2 ) ]
        Graphics.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLESGraphics"
        [ ( "jm_updateGL_1", jm_updateGL_1 ), ( "jm_set_1", jm_set_1 ), ( "jm_init_0", jm_init_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_setOrthoginalMode_0", jm_setOrthoginalMode_0 ), ( "jm_setCameraMode_0", jm_setCameraMode_0 ), ( "jm_getGl10_0", jm_getGl10_0 ), ( "jm_setFontDebug_2", jm_setFontDebug_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Graphics.jinit_0 JR.this []),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gl" "" JR.this NullGL10.jstatic_NULL_GL10),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_updateGL_1 : JR.Method
jm_updateGL_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
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


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setOrthoginalMode_0 : JR.Method
jm_setOrthoginalMode_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setCameraMode_0 : JR.Method
jm_setCameraMode_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getGl10_0 : JR.Method
jm_getGl10_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gl") ])
        (jregister jheap)
        jthis
        jargs


jm_setFontDebug_2 : JR.Method
jm_setFontDebug_2 jheap jthis jargs =
    JR.method [ ( "font", "" ), ( "fontDebug", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
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

