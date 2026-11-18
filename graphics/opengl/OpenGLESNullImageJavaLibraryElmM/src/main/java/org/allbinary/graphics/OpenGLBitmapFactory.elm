module Org.Allbinary.Graphics.OpenGLBitmapFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.OpenGLBitmap as OpenGLBitmap
import Org.Allbinary.Graphics.OpenGLBitmapConfig as OpenGLBitmapConfig
import Org.Allbinary.Platform.Graphics.PlatformBitmapBaseFactory as PlatformBitmapBaseFactory


jclass : String
jclass =
    "OpenGLBitmapFactory"


jchain : List String
jchain =
    [ "OpenGLBitmapFactory" ]
        ++ PlatformBitmapBaseFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    PlatformBitmapBaseFactory.jfields ++ [ ( "ARGB_8888", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createBitmap_3", jm_createBitmap_3 )
        , ( "decodeStream_1", jm_decodeStream_1 )
        , ( "createBitmap_1", jm_createBitmap_1 ) ]
        PlatformBitmapBaseFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLBitmapFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createBitmap_3", jm_createBitmap_3 ), ( "jm_decodeStream_1", jm_decodeStream_1 ), ( "jm_createBitmap_1", jm_createBitmap_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OpenGLBitmapFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect PlatformBitmapBaseFactory.jinit_0 JR.this []),
            JR.exec (JR.setField "ARGB_8888" "" JR.this (JR.new OpenGLBitmapConfig.jnew_1 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])),
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


jm_createBitmap_3 : JR.Method
jm_createBitmap_3 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "config", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new OpenGLBitmap.jnew_1 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_decodeStream_1 : JR.Method
jm_decodeStream_1 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new OpenGLBitmap.jnew_1 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createBitmap_1 : JR.Method
jm_createBitmap_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new OpenGLBitmap.jnew_1 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ])
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

