module Org.Allbinary.Game.Init.GameInitializationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.init
-}

import JR
import Org.Allbinary.Game.Configuration.Event.ChangedGameFeatureListener as ChangedGameFeatureListener
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Event.GameInitializedEvent as GameInitializedEvent
import Org.Allbinary.Game.Configuration.Event.GameInitializedEventHandler as GameInitializedEventHandler
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory


jclass : String
jclass =
    "GameInitializationUtil"


jchain : List String
jchain =
    [ "GameInitializationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EVENT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "initDemo_3", jm_initDemo_3 )
        , ( "initGame_3", jm_initGame_3 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInitializationUtil"
        [ ( "jm_initDemo_3", jm_initDemo_3 ), ( "jm_initGame_3", jm_initGame_3 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameInitializationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EVENT" "" JR.this (JR.new GameInitializedEvent.jnew_1 [ JR.this ])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_initDemo_3 : JR.Method
jm_initDemo_3 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "canvas", "" ), ( "gameInitializationInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "mainFeatureFactory" "" (JR.callStatic MainFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isChangedFeature_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ (JR.field "STATIC" (JR.local "mainFeatureFactory")) ]) (JR.run [ 
                        JR.declare "gameInitializationInterface" "" (JR.invoke "getInstance_0" (JR.local "gameInitializationInterfaceFactoryInterface") []), 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "LOAD_ALL" (JR.local "mainFeatureFactory")) ]) (JR.run [ 
                            JR.exec (JR.invoke "initGame_3" JR.this [ (JR.local "abeClientInformation"), (JR.local "canvas"), (JR.local "gameInitializationInterfaceFactoryInterface") ]) ]) (JR.run [ 
                        JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "LOAD_ONDEMAND" (JR.local "mainFeatureFactory")) ]) (JR.run [ 
                            JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "init_3" (JR.local "gameInitializationInterface") [ (JR.local "abeClientInformation"), (JR.invoke "getCustomCommandListener_0" (JR.local "canvas") []), (JR.invoke "getLevel_0" (JR.field "LOAD_EARLY" (JR.local "resourceLoadingLevelFactory")) []) ]), 
                            JR.exec (JR.invoke "setResourceLoadingLevel_1" (JR.thisField "EVENT") [ (JR.field "LOAD_EARLY" (JR.local "resourceLoadingLevelFactory")) ]) ]) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Loading Feature Available") ]) ]) ]), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameInitializedEventHandler.jm_getInstance_0 []) [ (JR.thisField "EVENT") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_initGame_3 : JR.Method
jm_initGame_3 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "canvas", "" ), ( "gameInitializationInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isChangedFeature_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ (JR.field "STATIC" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.declare "gameInitializationInterface" "" (JR.invoke "getInstance_0" (JR.local "gameInitializationInterfaceFactoryInterface") []), 
                        JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "init_3" (JR.local "gameInitializationInterface") [ (JR.local "abeClientInformation"), (JR.invoke "getCustomCommandListener_0" (JR.local "canvas") []), (JR.invoke "getLevel_0" (JR.field "LOAD_ALL" (JR.local "resourceLoadingLevelFactory")) []) ]), 
                        JR.exec (JR.invoke "setResourceLoadingLevel_1" (JR.thisField "EVENT") [ (JR.field "LOAD_ALL" (JR.local "resourceLoadingLevelFactory")) ]), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameInitializedEventHandler.jm_getInstance_0 []) [ (JR.thisField "EVENT") ]), 
                        JR.exec (JR.invoke "remove_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ (JR.field "STATIC" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
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

