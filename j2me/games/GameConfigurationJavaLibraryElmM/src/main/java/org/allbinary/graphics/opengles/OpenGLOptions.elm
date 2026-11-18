module Org.Allbinary.Graphics.Opengles.OpenGLOptions exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GameFeatureChoiceGroups as GameFeatureChoiceGroups
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory


jclass : String
jclass =
    "OpenGLOptions"


jchain : List String
jchain =
    [ "OpenGLOptions" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLOptions"
        [ ( "jm_init_0", jm_init_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "openGLFeatureFactory" "" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "OPENGL_OPTIONS" (JR.local "openGLFeatureFactory")) ]) (JR.run [ 
                        JR.declare "openGLMultipleList" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "openGLMultipleList") [ (JR.field "OPENGL" (JR.local "openGLFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_2" (JR.callStatic GameFeatureChoiceGroups.jm_getMultipleInstance_0 []) [ (JR.str "OpenGL (Complete Restart)"), (JR.local "openGLMultipleList") ]), 
                        JR.declare "openGLVersionSelectorMultipleList" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "openGLVersionSelectorMultipleList") [ (JR.field "OPENGL_AUTO_SELECT" (JR.local "openGLFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "openGLVersionSelectorMultipleList") [ (JR.field "OPENGL_MINIMUM" (JR.local "openGLFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_2" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) [ (JR.str "OpenGL Version Selector"), (JR.local "openGLVersionSelectorMultipleList") ]), 
                        JR.declare "openGLImageColorMultipleList" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "openGLImageColorMultipleList") [ (JR.field "IMAGE_COLOR_DEPTH_4444" (JR.local "openGLFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "openGLImageColorMultipleList") [ (JR.field "IMAGE_COLOR_DEPTH_8888" (JR.local "openGLFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_2" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) [ (JR.str "OpenGL Image Color RGBA"), (JR.local "openGLImageColorMultipleList") ]) ]) identity ])
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

