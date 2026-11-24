module Org.Allbinary.Input.Motion.Button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Animation.AnimationBehaviorFactory as AnimationBehaviorFactory
import Org.Allbinary.Animation.Resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory as BaseResourceAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Image.ImageCacheFactory as ImageCacheFactory
import Org.Allbinary.Media.Image.ImageCompleteUtil as ImageCompleteUtil
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Animation.Image.Sprite.OneRowSpriteIndexedAnimationFactory as OneRowSpriteIndexedAnimationFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Input.Motion.Button.TouchButtonBlankResource as TouchButtonBlankResource
import Org.Allbinary.Input.Motion.Button.TouchButtonDownResource as TouchButtonDownResource
import Org.Allbinary.Input.Motion.Button.TouchButtonGenericActionResource as TouchButtonGenericActionResource
import Org.Allbinary.Input.Motion.Button.TouchButtonStartResource as TouchButtonStartResource
import Org.Allbinary.Input.Motion.Button.TouchButtonStrafeLeftResource as TouchButtonStrafeLeftResource
import Org.Allbinary.Input.Motion.Button.TouchButtonStrafeRightResource as TouchButtonStrafeRightResource
import Org.Allbinary.Input.Motion.Button.TouchButtonTurnLeftResource as TouchButtonTurnLeftResource
import Org.Allbinary.Input.Motion.Button.TouchButtonTurnRightResource as TouchButtonTurnRightResource
import Org.Allbinary.Input.Motion.Button.TouchButtonUpResource as TouchButtonUpResource


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
                    JR.declare "portion" "I" (JR.int 140), 
                    JR.declare "loadingString" "" (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "toString_0" JR.this []) ]) [ (JR.str " Loading: ") ]) []), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN71982 -> (JR.setLocal "index" "I" (JR.lit jwN71982))) JR.increment) ]), 
                    JR.declare "touchButtonBlankResource" "" (JR.callStatic TouchButtonBlankResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonGenericActionResource" "" (JR.callStatic TouchButtonGenericActionResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonStartResource" "" (JR.callStatic TouchButtonStartResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonUpResource" "" (JR.callStatic TouchButtonUpResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonDownResource" "" (JR.callStatic TouchButtonDownResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonTurnLeftResource" "" (JR.callStatic TouchButtonTurnLeftResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonTurnRightResource" "" (JR.callStatic TouchButtonTurnRightResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonStrafeLeftResource" "" (JR.callStatic TouchButtonStrafeLeftResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonStrafeRightResource" "" (JR.callStatic TouchButtonStrafeRightResource.jm_getInstance_0 []), 
                    JR.declare "touchButtonBlankResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonBlankResource")) ]), 
                    JR.declare "touchButtonGenericActionResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonGenericActionResource")) ]), 
                    JR.declare "touchButtonStartResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonStartResource")) ]), 
                    JR.declare "touchButtonUpResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonUpResource")) ]), 
                    JR.declare "touchButtonDownResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonDownResource")) ]), 
                    JR.declare "touchButtonTurnLeftResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonTurnLeftResource")) ]), 
                    JR.declare "touchButtonTurnRightResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonTurnRightResource")) ]), 
                    JR.declare "touchButtonStrafeLeftResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonStrafeLeftResource")) ]), 
                    JR.declare "touchButtonStrafeRightResourceImage" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "RESOURCE" (JR.local "touchButtonStrafeRightResource")) ]), 
                    JR.declare "nullAnimationFactory" "" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []), 
                    JR.ifElse (JR.invoke "isOverScan_0" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []) []) (JR.run [ 
                        JR.exec (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "HINT" (JR.callStatic TouchButtonStartResource.jm_getInstance_0 [])) ]) ]) identity, 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN73245 -> (JR.setLocal "index" "I" (JR.lit jwN73245))) JR.increment) ]), 
                    JR.declare "imageCompleteUtil" "" (JR.callStatic ImageCompleteUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN73347 -> (JR.setLocal "index" "I" (JR.lit jwN73347))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonBlankResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonBlankResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonBlankResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonBlankResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonBlankResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN73565 -> (JR.setLocal "index" "I" (JR.lit jwN73565))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonGenericActionResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonGenericActionResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonGenericActionResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonGenericActionResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonGenericActionResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN73783 -> (JR.setLocal "index" "I" (JR.lit jwN73783))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonStartResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonStartResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonStartResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonStartResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN73959 -> (JR.setLocal "index" "I" (JR.lit jwN73959))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonUpResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonUpResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonUpResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonUpResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonUpResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN74177 -> (JR.setLocal "index" "I" (JR.lit jwN74177))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonDownResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonDownResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonDownResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonDownResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonDownResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN74395 -> (JR.setLocal "index" "I" (JR.lit jwN74395))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonTurnLeftResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonTurnLeftResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonTurnLeftResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonTurnLeftResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonTurnLeftResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN74613 -> (JR.setLocal "index" "I" (JR.lit jwN74613))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonTurnRightResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonTurnRightResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonTurnRightResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonTurnRightResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonTurnRightResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN74831 -> (JR.setLocal "index" "I" (JR.lit jwN74831))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonStrafeLeftResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonStrafeLeftResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonStrafeLeftResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonStrafeLeftResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonStrafeLeftResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.local "loadingString"), (JR.postUpdate (JR.local "index") (\jwN75049 -> (JR.setLocal "index" "I" (JR.lit jwN75049))) JR.increment) ]), 
                    JR.exec (JR.invoke "waitForImage_2" (JR.local "imageCompleteUtil") [ (JR.local "touchButtonStrafeRightResourceImage"), (JR.field "RESOURCE" (JR.local "touchButtonStrafeRightResource")) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "RESOURCE" (JR.local "touchButtonStrafeRightResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonStrafeRightResourceImage"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]), 
                    JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonStrafeRightResource")), (JR.local "nullAnimationFactory") ]), 
                    JR.ifElse (JR.invoke "isOverScan_0" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []) []) (JR.run [ 
                        JR.declare "touchButtonStartHintResource" "" (JR.invoke "getWithKey_1" (JR.local "imageCache") [ (JR.field "HINT" (JR.callStatic TouchButtonStartResource.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonStartResource")), (JR.callStatic OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 [ (JR.local "touchButtonStartHintResource"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_2" JR.this [ (JR.field "HINT" (JR.local "touchButtonStartResource")), (JR.local "nullAnimationFactory") ]) ]), 
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

