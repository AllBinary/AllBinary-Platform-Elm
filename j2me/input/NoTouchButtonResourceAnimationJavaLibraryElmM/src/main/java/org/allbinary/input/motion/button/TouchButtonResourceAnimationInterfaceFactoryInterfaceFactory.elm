module Org.Allbinary.Input.Motion.Button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Animation.Resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory as BaseResourceAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Image.ImageCacheFactory as ImageCacheFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"


jchain : List String
jchain =
    [ "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" ]
        ++ BaseResourceAnimationInterfaceFactoryInterfaceFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseResourceAnimationInterfaceFactoryInterfaceFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "createFactory_0", jm_createFactory_0 )
        , ( "init_1", jm_init_1 )
        , ( "initImageCache_2", jm_initImageCache_2 )
        , ( "isLoadingLevel_1", jm_isLoadingLevel_1 )
        , ( "isFeature_0", jm_isFeature_0 ) ]
        BaseResourceAnimationInterfaceFactoryInterfaceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"
        [ ( "jm_createFactory_0", jm_createFactory_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_initImageCache_2", jm_initImageCache_2 ), ( "jm_isLoadingLevel_1", jm_isLoadingLevel_1 ), ( "jm_isFeature_0", jm_isFeature_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseResourceAnimationInterfaceFactoryInterfaceFactory.jinit_4 JR.this [ (JR.local "name"), (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_createFactory_0 : JR.Method
jm_createFactory_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.str "TouchButton Animations") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initImageCache_2" JR.this [ (JR.callStatic ImageCacheFactory.jm_getInstance_0 []), (JR.local "level") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initImageCache_2 : JR.Method
jm_initImageCache_2 jheap jthis jargs =
    JR.method [ ( "imageCache", "" ), ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isInitialized_0" JR.this []) (JR.run [ 
                        JR.returnVoid ]) identity, 
                    JR.exec (JR.callVia BaseResourceAnimationInterfaceFactoryInterfaceFactory.jvtable "init_1" JR.this [ (JR.local "level") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isLoadingLevel_1 : JR.Method
jm_isLoadingLevel_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_TOUCH" (JR.local "resourceLoadingLevelFactory")) [])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.callVia BaseResourceAnimationInterfaceFactoryInterfaceFactory.jvtable "isLoadingLevel_1" JR.this [ (JR.local "level") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isFeature_0 : JR.Method
jm_isFeature_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isDefault_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ])) (JR.run [ 
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

