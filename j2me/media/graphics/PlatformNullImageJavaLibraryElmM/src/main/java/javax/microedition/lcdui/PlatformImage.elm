module Javax.Microedition.Lcdui.PlatformImage exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.lcdui
-}

import JR
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "PlatformImage"


jchain : List String
jchain =
    [ "PlatformImage" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getImage_1", jm_getImage_1 )
        , ( "getSurfaceWidth_2", jm_getSurfaceWidth_2 )
        , ( "getSurfaceHeight_2", jm_getSurfaceHeight_2 )
        , ( "getWidth_2", jm_getWidth_2 )
        , ( "getHeight_2", jm_getHeight_2 )
        , ( "getGraphics_4", jm_getGraphics_4 )
        , ( "drawImage_6", jm_drawImage_6 )
        , ( "drawRegion_10", jm_drawRegion_10 )
        , ( "getRGB_8", jm_getRGB_8 )
        , ( "setRGB_8", jm_setRGB_8 )
        , ( "getData_1", jm_getData_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformImage"
        [ ( "jm_getImage_1", jm_getImage_1 ), ( "jm_getSurfaceWidth_2", jm_getSurfaceWidth_2 ), ( "jm_getSurfaceHeight_2", jm_getSurfaceHeight_2 ), ( "jm_getWidth_2", jm_getWidth_2 ), ( "jm_getHeight_2", jm_getHeight_2 ), ( "jm_getGraphics_4", jm_getGraphics_4 ), ( "jm_drawImage_6", jm_drawImage_6 ), ( "jm_drawRegion_10", jm_drawRegion_10 ), ( "jm_getRGB_8", jm_getRGB_8 ), ( "jm_setRGB_8", jm_setRGB_8 ), ( "jm_getData_1", jm_getData_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getImage_1 : JR.Method
jm_getImage_1 jheap jthis jargs =
    JR.method [ ( "graphicsSurface2", "" ) ] ""
        (JR.run [ 
                    JR.return NullImage.jstatic_NULL_IMAGE ])
        (jregister jheap)
        jthis
        jargs


jm_getSurfaceWidth_2 : JR.Method
jm_getSurfaceWidth_2 jheap jthis jargs =
    JR.method [ ( "graphicsSurface2", "" ), ( "width", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.local "width") ])
        (jregister jheap)
        jthis
        jargs


jm_getSurfaceHeight_2 : JR.Method
jm_getSurfaceHeight_2 jheap jthis jargs =
    JR.method [ ( "graphicsSurface2", "" ), ( "height", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.local "height") ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_2 : JR.Method
jm_getWidth_2 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.local "width") ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_2 : JR.Method
jm_getHeight_2 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "height", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.local "height") ])
        (jregister jheap)
        jthis
        jargs


jm_getGraphics_4 : JR.Method
jm_getGraphics_4 jheap jthis jargs =
    JR.method [ ( "graphicsSurface", "" ), ( "width", "I" ), ( "height", "I" ), ( "image", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_drawImage_6 : JR.Method
jm_drawImage_6 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "x", "I" ), ( "y", "I" ), ( "anchor", "I" ), ( "g2", "" ), ( "g", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_drawRegion_10 : JR.Method
jm_drawRegion_10 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "x_src", "I" ), ( "y_src", "I" ), ( "width", "I" ), ( "height", "I" ), ( "transform", "I" ), ( "x_dst", "I" ), ( "y_dst", "I" ), ( "anchor", "I" ), ( "g", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getRGB_8 : JR.Method
jm_getRGB_8 jheap jthis jargs =
    JR.method [ ( "argb", "" ), ( "offset", "I" ), ( "scanlength", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ), ( "image", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setRGB_8 : JR.Method
jm_setRGB_8 jheap jthis jargs =
    JR.method [ ( "argb", "" ), ( "offset", "I" ), ( "scanlength", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ), ( "image", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getData_1 : JR.Method
jm_getData_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
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

