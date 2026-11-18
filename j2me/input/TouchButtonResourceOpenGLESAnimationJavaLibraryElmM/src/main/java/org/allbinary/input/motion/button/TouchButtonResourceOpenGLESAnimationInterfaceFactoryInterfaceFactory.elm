module Org.Allbinary.Input.Motion.Button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Image.Opengles.OpenGLImageCacheFactory as OpenGLImageCacheFactory
import Org.Allbinary.Input.Motion.Button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory as TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory


jclass : String
jclass =
    "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory"


jchain : List String
jchain =
    [ "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory" ]
        ++ TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "isFeature_0", jm_isFeature_0 ) ]
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_isFeature_0", jm_isFeature_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jinit_1 JR.this [ (JR.str "OpenGL TouchButton Animations") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jvtable "initImageCache_2" JR.this [ (JR.callStatic OpenGLImageCacheFactory.jm_getInstance_0 []), (JR.local "level") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isFeature_0 : JR.Method
jm_isFeature_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "isDefault_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
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

