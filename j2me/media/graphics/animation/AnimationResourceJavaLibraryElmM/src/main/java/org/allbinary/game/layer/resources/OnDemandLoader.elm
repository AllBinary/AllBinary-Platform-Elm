module Org.Allbinary.Game.Layer.Resources.OnDemandLoader exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.resources
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Game.Layer.Resources.OnDemandResources as OnDemandResources
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "OnDemandLoader"


jchain : List String
jchain =
    [ "OnDemandLoader" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "onDemandResourcesFactory", JR.defaultOf "" ), ( "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", JR.defaultOf "" ), ( "resourceAnimationInterfaceFactoryInterfaceFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_3", jm_init_3 )
        , ( "initAll_2", jm_initAll_2 )
        , ( "initLevel_4", jm_initLevel_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OnDemandLoader"
        [ ( "jm_init_3", jm_init_3 ), ( "jm_initAll_2", jm_initAll_2 ), ( "jm_initLevel_4", jm_initLevel_4 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "onDemandResourcesFactory", "" ), ( "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", "" ), ( "resourceAnimationInterfaceFactoryInterfaceFactory", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "onDemandResourcesFactory" "" JR.this (JR.local "onDemandResourcesFactory")), 
                    JR.exec (JR.setField "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory" "" JR.this (JR.local "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory")), 
                    JR.exec (JR.setField "resourceAnimationInterfaceFactoryInterfaceFactory" "" JR.this (JR.local "resourceAnimationInterfaceFactoryInterfaceFactory")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_init_3 : JR.Method
jm_init_3 jheap jthis jargs =
    JR.method [ ( "imageCache", "" ), ( "level", "I" ), ( "loadingString", "" ) ] ""
        (JR.run [ 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "LOAD_ALL" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.ifElse (JR.invoke "isInitialized_0" (JR.thisField "resourceAnimationInterfaceFactoryInterfaceFactory") []) (JR.run [ 
                            JR.returnVoid ]) identity, 
                        JR.exec (JR.invoke "initAll_2" JR.this [ (JR.local "imageCache"), (JR.local "loadingString") ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_ALL" (JR.local "resourceLoadingLevelFactory")) [])) (JR.run [ 
                        JR.declare "layerPlacementInterfaceBasicArrayListFactoryInterface" "" (JR.invoke "getInstance_1" (JR.thisField "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory") [ (JR.local "level") ]), 
                        JR.exec (JR.invoke "initLevel_4" JR.this [ (JR.local "layerPlacementInterfaceBasicArrayListFactoryInterface"), (JR.local "imageCache"), (JR.local "level"), (JR.local "loadingString") ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initAll_2 : JR.Method
jm_initAll_2 jheap jthis jargs =
    JR.method [ ( "imageCache", "" ), ( "loadingString", "" ) ] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "portion" "I" (JR.int 120), 
                    JR.declare "onDemandResources" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "onDemandIndex" "I" (JR.invoke "size_0" (JR.thisField "onDemandResourcesFactory") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "onDemandIndex") (\jwN68620 -> (JR.setLocal "onDemandIndex" "I" (JR.lit jwN68620))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "onDemandResources" "" (JR.invoke "remove_1" (JR.thisField "onDemandResourcesFactory") [ (JR.local "onDemandIndex") ])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "onDemandResources") OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES) (JR.run [ 
                            JR.exec (JR.setLocal "index" "I" (JR.invoke "initAt_5" (JR.local "onDemandResources") [ (JR.local "imageCache"), (JR.thisField "resourceAnimationInterfaceFactoryInterfaceFactory"), (JR.local "portion"), (JR.local "loadingString"), (JR.local "index") ])) ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_initLevel_4 : JR.Method
jm_initLevel_4 jheap jthis jargs =
    JR.method [ ( "layerPlacementInterfaceBasicArrayListFactoryInterface", "" ), ( "imageCache", "" ), ( "level", "I" ), ( "loadingString", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.declare "portion" "I" (JR.int 120), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "onDemandArray" "" (JR.invoke "getOnDemandResources_0" (JR.local "layerPlacementInterfaceBasicArrayListFactoryInterface") []), 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.local "commonStrings")) ]) [ (JR.alength (JR.local "onDemandArray")) ]) []), JR.this, (JR.str "initLevel") ]), 
                    JR.declare "onDemandResources" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "onDemandIndex" "I" (JR.alength (JR.local "onDemandArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "onDemandIndex") (\jwN69260 -> (JR.setLocal "onDemandIndex" "I" (JR.lit jwN69260))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "onDemandResources" "" (JR.invoke "remove_1" (JR.thisField "onDemandResourcesFactory") [ (JR.aget (JR.local "onDemandArray") (JR.local "onDemandIndex")) ])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "onDemandResources") OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES) (JR.run [ 
                            JR.exec (JR.setLocal "index" "I" (JR.invoke "initAt_5" (JR.local "onDemandResources") [ (JR.local "imageCache"), (JR.thisField "resourceAnimationInterfaceFactoryInterfaceFactory"), (JR.local "portion"), (JR.local "loadingString"), (JR.local "index") ])) ]) identity ]) ] ])
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

