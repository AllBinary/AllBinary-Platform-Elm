module Org.Allbinary.Emulator.Device.TrueTypeFontUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.emulator.device
-}

import JR
import Org.Allbinary.Image.Opengles.OpenGLESImage as OpenGLESImage
import Org.Allbinary.Emulator.Device.TrueTypeFontUtilBase as TrueTypeFontUtilBase


jclass : String
jclass =
    "TrueTypeFontUtil"


jchain : List String
jchain =
    [ "TrueTypeFontUtil" ]
        ++ TrueTypeFontUtilBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    TrueTypeFontUtilBase.jfields ++ [ ( "fontImage", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getAsTextureSize_1", jm_getAsTextureSize_1 )
        , ( "getCellSize_1", jm_getCellSize_1 )
        , ( "getFontBitmap_4", jm_getFontBitmap_4 )
        , ( "saveFontAtlasAsFile_0", jm_saveFontAtlasAsFile_0 )
        , ( "getFontBitmapGL_4", jm_getFontBitmapGL_4 )
        , ( "getFontWidths_2", jm_getFontWidths_2 ) ]
        TrueTypeFontUtilBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TrueTypeFontUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getAsTextureSize_1", jm_getAsTextureSize_1 ), ( "jm_getCellSize_1", jm_getCellSize_1 ), ( "jm_getFontBitmap_4", jm_getFontBitmap_4 ), ( "jm_saveFontAtlasAsFile_0", jm_saveFontAtlasAsFile_0 ), ( "jm_getFontBitmapGL_4", jm_getFontBitmapGL_4 ), ( "jm_getFontWidths_2", jm_getFontWidths_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TrueTypeFontUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect TrueTypeFontUtilBase.jinit_1 JR.this [ (JR.int 1) ]),
                JR.exec (JR.setField "fontImage" "" JR.this OpenGLESImage.jstatic_NULL_OPENGL_IMAGE),
                identity,
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


jm_getAsTextureSize_1 : JR.Method
jm_getAsTextureSize_1 jheap jthis jargs =
    JR.method [ ( "textureSize", "I" ) ] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getCellSize_1 : JR.Method
jm_getCellSize_1 jheap jthis jargs =
    JR.method [ ( "cellSize", "I" ) ] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getFontBitmap_4 : JR.Method
jm_getFontBitmap_4 jheap jthis jargs =
    JR.method [ ( "filename", "" ), ( "fontSize", "I" ), ( "cellSize", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_saveFontAtlasAsFile_0 : JR.Method
jm_saveFontAtlasAsFile_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getFontBitmapGL_4 : JR.Method
jm_getFontBitmapGL_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "filename", "" ), ( "cellSize", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getFontWidths_2 : JR.Method
jm_getFontWidths_2 jheap jthis jargs =
    JR.method [ ( "filename", "" ), ( "fontSize", "I" ) ] ""
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

