module Org.Allbinary.Image.Opengles.OpenGLESImage exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Image.Opengles.OpenGLESImageProperties as OpenGLESImageProperties
import Org.Allbinary.Image.Opengles.OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterface
import Org.Allbinary.Platform.Graphics.PlatformBitmapBaseFactory as PlatformBitmapBaseFactory
import Org.Allbinary.Platform.Opengles.PlatformTextureBaseFactory as PlatformTextureBaseFactory


jclass : String
jclass =
    "OpenGLESImage"


jchain : List String
jchain =
    [ "OpenGLESImage" ]
        ++ OpenGLSurfaceChangedInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "textureFactory", JR.defaultOf "" ), ( "openGLBitmap", JR.defaultOf "" ), ( "openGLESImageProperties", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "set_1", jm_set_1 )
        , ( "initTexture_1", jm_initTexture_1 )
        , ( "drawRegion_9", jm_drawRegion_9 )
        , ( "draw_4", jm_draw_4 )
        , ( "getType_0", jm_getType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLESImage"
        [ ( "jm_set_1", jm_set_1 ), ( "jm_initTexture_1", jm_initTexture_1 ), ( "jm_drawRegion_9", jm_drawRegion_9 ), ( "jm_draw_4", jm_draw_4 ), ( "jm_getType_0", jm_getType_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_OPENGL_IMAGE", jstatic_NULL_OPENGL_IMAGE ), ( "jstatic_texture2dList", jstatic_texture2dList ), ( "jstatic_TYPE", jstatic_TYPE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_OPENGL_IMAGE : JR.M
jstatic_NULL_OPENGL_IMAGE s =
    JR.static "OpenGLESImage" jclinit "NULL_OPENGL_IMAGE"
        (JR.new jnew_3 [ NullImage.jstatic_NULL_IMAGE, PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY ])
        s


jstatic_texture2dList : JR.M
jstatic_texture2dList s =
    JR.static "OpenGLESImage" jclinit "texture2dList"
        (JR.new BasicArrayListD.jnew_0 [])
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "OpenGLESImage" jclinit "TYPE"
        (JR.int 4)
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "bitmapFactory", "" ), ( "textureFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "openGLESImageProperties" "" JR.this (JR.new OpenGLESImageProperties.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "openGLBitmap" "" JR.this (JR.invoke "createBitmap_1" (JR.local "bitmapFactory") [ (JR.local "image") ])), 
                    JR.exec (JR.setField "textureFactory" "" JR.this (JR.local "textureFactory")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initTexture_1 : JR.Method
jm_initTexture_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_drawRegion_9 : JR.Method
jm_drawRegion_9 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "viewHeight", "I" ), ( "x_src", "F" ), ( "y_src", "F" ), ( "width", "F" ), ( "height", "F" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_draw_4 : JR.Method
jm_draw_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_TYPE ])
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

