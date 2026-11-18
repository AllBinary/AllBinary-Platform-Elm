module Org.Allbinary.Graphics.Threed.SWTJOGLProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.threed
-}

import JR
import JRunnable


jclass : String
jclass =
    "SWTJOGLProcessor"


jchain : List String
jchain =
    [ "SWTJOGLProcessor" ]
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_2", jm_init_2 )
        , ( "isHolderCreated_0", jm_isHolderCreated_0 )
        , ( "setRenderer_1", jm_setRenderer_1 )
        , ( "isJOGL_0", jm_isJOGL_0 )
        , ( "createSurface_0", jm_createSurface_0 )
        , ( "onSurfaceCreated_0", jm_onSurfaceCreated_0 )
        , ( "onSurfaceChangedForEvent_1", jm_onSurfaceChangedForEvent_1 )
        , ( "onSurfaceChanged_0", jm_onSurfaceChanged_0 )
        , ( "onSurfaceChangedWH_2", jm_onSurfaceChangedWH_2 )
        , ( "addListener_0", jm_addListener_0 )
        , ( "addListeners_1", jm_addListeners_1 )
        , ( "run_0", jm_run_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "setCustom_3", jm_setCustom_3 )
        , ( "setRatioProcessor_1", jm_setRatioProcessor_1 )
        , ( "isPortraitRatioProcessor_0", jm_isPortraitRatioProcessor_0 )
        , ( "charWidth_2", jm_charWidth_2 )
        , ( "charsWidth_4", jm_charsWidth_4 )
        , ( "stringWidth_2", jm_stringWidth_2 )
        , ( "substringWidth_4", jm_substringWidth_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SWTJOGLProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_isHolderCreated_0", jm_isHolderCreated_0 ), ( "jm_setRenderer_1", jm_setRenderer_1 ), ( "jm_isJOGL_0", jm_isJOGL_0 ), ( "jm_createSurface_0", jm_createSurface_0 ), ( "jm_onSurfaceCreated_0", jm_onSurfaceCreated_0 ), ( "jm_onSurfaceChangedForEvent_1", jm_onSurfaceChangedForEvent_1 ), ( "jm_onSurfaceChanged_0", jm_onSurfaceChanged_0 ), ( "jm_onSurfaceChangedWH_2", jm_onSurfaceChangedWH_2 ), ( "jm_addListener_0", jm_addListener_0 ), ( "jm_addListeners_1", jm_addListeners_1 ), ( "jm_run_0", jm_run_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_setCustom_3", jm_setCustom_3 ), ( "jm_setRatioProcessor_1", jm_setRatioProcessor_1 ), ( "jm_isPortraitRatioProcessor_0", jm_isPortraitRatioProcessor_0 ), ( "jm_charWidth_2", jm_charWidth_2 ), ( "jm_charsWidth_4", jm_charsWidth_4 ), ( "jm_stringWidth_2", jm_stringWidth_2 ), ( "jm_substringWidth_4", jm_substringWidth_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SWTJOGLProcessor" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "display", "" ), ( "comp", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isHolderCreated_0 : JR.Method
jm_isHolderCreated_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_setRenderer_1 : JR.Method
jm_setRenderer_1 jheap jthis jargs =
    JR.method [ ( "renderer", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isJOGL_0 : JR.Method
jm_isJOGL_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_createSurface_0 : JR.Method
jm_createSurface_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSurfaceCreated_0 : JR.Method
jm_onSurfaceCreated_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSurfaceChangedForEvent_1 : JR.Method
jm_onSurfaceChangedForEvent_1 jheap jthis jargs =
    JR.method [ ( "event", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSurfaceChanged_0 : JR.Method
jm_onSurfaceChanged_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSurfaceChangedWH_2 : JR.Method
jm_onSurfaceChangedWH_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_addListener_0 : JR.Method
jm_addListener_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_addListeners_1 : JR.Method
jm_addListeners_1 jheap jthis jargs =
    JR.method [ ( "midlet", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setCustom_3 : JR.Method
jm_setCustom_3 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "ratio", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setRatioProcessor_1 : JR.Method
jm_setRatioProcessor_1 jheap jthis jargs =
    JR.method [ ( "ratioProcessor", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isPortraitRatioProcessor_0 : JR.Method
jm_isPortraitRatioProcessor_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_charWidth_2 : JR.Method
jm_charWidth_2 jheap jthis jargs =
    JR.method [ ( "font", "" ), ( "ch", "C" ) ] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_charsWidth_4 : JR.Method
jm_charsWidth_4 jheap jthis jargs =
    JR.method [ ( "font", "" ), ( "ch", "" ), ( "offset", "I" ), ( "length", "I" ) ] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_stringWidth_2 : JR.Method
jm_stringWidth_2 jheap jthis jargs =
    JR.method [ ( "font", "" ), ( "str", "" ) ] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_substringWidth_4 : JR.Method
jm_substringWidth_4 jheap jthis jargs =
    JR.method [ ( "font", "" ), ( "str", "" ), ( "offset", "I" ), ( "len", "I" ) ] "I"
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

