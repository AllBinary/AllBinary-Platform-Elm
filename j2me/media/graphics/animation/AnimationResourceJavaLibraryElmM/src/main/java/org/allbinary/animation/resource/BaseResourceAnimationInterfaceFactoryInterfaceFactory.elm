module Org.Allbinary.Animation.Resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.resource
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Animation.Resource.FeatureResourceAnimationInterfaceFactoryInterface as FeatureResourceAnimationInterfaceFactoryInterface
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BaseResourceAnimationInterfaceFactoryInterfaceFactory"


jchain : List String
jchain =
    [ "BaseResourceAnimationInterfaceFactoryInterfaceFactory" ]
        ++ FeatureResourceAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "hashtable", JR.defaultOf "" ), ( "rectangleHashtable", JR.defaultOf "" ), ( "rectangleArrayOfArraysHashtable", JR.defaultOf "" ), ( "name", JR.defaultOf "" ), ( "initialized", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getName_0", jm_getName_0 )
        , ( "init_1", jm_init_1 )
        , ( "initImageCache_2", jm_initImageCache_2 )
        , ( "add_2", jm_add_2 )
        , ( "getBasicAnimationInterfaceFactoryInstance_1", jm_getBasicAnimationInterfaceFactoryInstance_1 )
        , ( "getRectangle_1", jm_getRectangle_1 )
        , ( "addRectangle_2", jm_addRectangle_2 )
        , ( "getRectangleArrayOfArrays_1", jm_getRectangleArrayOfArrays_1 )
        , ( "addRectangleArrayOfArrays_2", jm_addRectangleArrayOfArrays_2 )
        , ( "isFeature_0", jm_isFeature_0 )
        , ( "isLoadingLevel_1", jm_isLoadingLevel_1 )
        , ( "toString_0", jm_toString_0 )
        , ( "getHashtable_0", jm_getHashtable_0 )
        , ( "getRectangleHashtable_0", jm_getRectangleHashtable_0 )
        , ( "getRectangleArrayOfArraysHashtable_0", jm_getRectangleArrayOfArraysHashtable_0 )
        , ( "setInitialized_1", jm_setInitialized_1 )
        , ( "isInitialized_0", jm_isInitialized_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseResourceAnimationInterfaceFactoryInterfaceFactory"
        [ ( "jm_getName_0", jm_getName_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_initImageCache_2", jm_initImageCache_2 ), ( "jm_add_2", jm_add_2 ), ( "jm_getBasicAnimationInterfaceFactoryInstance_1", jm_getBasicAnimationInterfaceFactoryInstance_1 ), ( "jm_getRectangle_1", jm_getRectangle_1 ), ( "jm_addRectangle_2", jm_addRectangle_2 ), ( "jm_getRectangleArrayOfArrays_1", jm_getRectangleArrayOfArrays_1 ), ( "jm_addRectangleArrayOfArrays_2", jm_addRectangleArrayOfArrays_2 ), ( "jm_isFeature_0", jm_isFeature_0 ), ( "jm_isLoadingLevel_1", jm_isLoadingLevel_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getHashtable_0", jm_getHashtable_0 ), ( "jm_getRectangleHashtable_0", jm_getRectangleHashtable_0 ), ( "jm_getRectangleArrayOfArraysHashtable_0", jm_getRectangleArrayOfArraysHashtable_0 ), ( "jm_setInitialized_1", jm_setInitialized_1 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "hashtable", "" ), ( "rectangleHashtable", "" ), ( "rectangleArrayHashtable", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "hashtable" "" JR.this (JR.local "hashtable")), 
                    JR.exec (JR.setField "rectangleHashtable" "" JR.this (JR.local "rectangleHashtable")), 
                    JR.exec (JR.setField "rectangleArrayOfArraysHashtable" "" JR.this (JR.local "rectangleArrayHashtable")), 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Available List of Animations: ") ]) [ (JR.invoke "toString_0" (JR.thisField "hashtable") []) ]) []), JR.this, (JR.field "INIT" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "setInitialized_1" JR.this [ (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initImageCache_2 : JR.Method
jm_initImageCache_2 jheap jthis jargs =
    JR.method [ ( "imageCache", "" ), ( "level", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_add_2 : JR.Method
jm_add_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "animationInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "containsKey_1" (JR.thisField "hashtable") [ (JR.local "resource") ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Resource Already Created: ") ]) [ (JR.local "resource") ]) []) ]) ]) identity, 
                    JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.local "resource"), (JR.local "animationInterfaceFactoryInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicAnimationInterfaceFactoryInstance_1 : JR.Method
jm_getBasicAnimationInterfaceFactoryInstance_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.declare "basicAnimationInterfaceFactoryInterfaceCanBeNull" "" (JR.invoke "get_1" (JR.thisField "hashtable") [ (JR.local "resource") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "basicAnimationInterfaceFactoryInterfaceCanBeNull") JR.null) (JR.run [ 
                        JR.return NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY ]) identity, 
                    JR.return (JR.local "basicAnimationInterfaceFactoryInterfaceCanBeNull") ])
        (jregister jheap)
        jthis
        jargs


jm_getRectangle_1 : JR.Method
jm_getRectangle_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.declare "rectangleCanBeNull" "" (JR.invoke "get_1" (JR.thisField "rectangleHashtable") [ (JR.local "resource") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "rectangleCanBeNull") JR.null) (JR.run [ 
                        JR.return RectangleFactory.jstatic_SINGLETON ]) identity, 
                    JR.return (JR.local "rectangleCanBeNull") ])
        (jregister jheap)
        jthis
        jargs


jm_addRectangle_2 : JR.Method
jm_addRectangle_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "rectangle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "put_2" (JR.thisField "rectangleHashtable") [ (JR.local "resource"), (JR.local "rectangle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getRectangleArrayOfArrays_1 : JR.Method
jm_getRectangleArrayOfArrays_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.declare "valueCanBeNull" "" (JR.invoke "get_1" (JR.thisField "rectangleArrayOfArraysHashtable") [ (JR.local "resource") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "valueCanBeNull") JR.null) (JR.run [ 
                        JR.declare "rectangleArrayOfArrays" "" (JR.local "valueCanBeNull"), 
                        JR.return (JR.local "rectangleArrayOfArrays") ]) (JR.run [ 
                        JR.return RectangleFactory.jstatic_ARRAY_OF_ARRAYS ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addRectangleArrayOfArrays_2 : JR.Method
jm_addRectangleArrayOfArrays_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "rectangleArrayOfArrays", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "put_2" (JR.thisField "rectangleArrayOfArraysHashtable") [ (JR.local "resource"), (JR.local "rectangleArrayOfArrays") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isFeature_0 : JR.Method
jm_isFeature_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isLoadingLevel_1 : JR.Method
jm_isLoadingLevel_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_ALL" (JR.local "resourceLoadingLevelFactory")) [])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "getName_0" (JR.getClass JR.this) []) ]) [ (JR.field "SEMICOLON" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "name") ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHashtable_0 : JR.Method
jm_getHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_getRectangleHashtable_0 : JR.Method
jm_getRectangleHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "rectangleHashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_getRectangleArrayOfArraysHashtable_0 : JR.Method
jm_getRectangleArrayOfArraysHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "rectangleArrayOfArraysHashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialized_1 : JR.Method
jm_setInitialized_1 jheap jthis jargs =
    JR.method [ ( "initialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initialized" "Z" JR.this (JR.local "initialized")) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "initialized") ])
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

