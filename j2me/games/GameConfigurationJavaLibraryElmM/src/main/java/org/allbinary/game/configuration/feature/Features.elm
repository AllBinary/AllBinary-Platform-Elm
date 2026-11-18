module Org.Allbinary.Game.Configuration.Feature.Features exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Event.GameFeatureEvent as GameFeatureEvent
import Org.Allbinary.Game.Configuration.Event.GameFeatureEventHandler as GameFeatureEventHandler
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Game.Configuration.Feature.SensorFeatureFactory as SensorFeatureFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Game.Configuration.Feature.TouchFeatureFactory as TouchFeatureFactory


jclass : String
jclass =
    "Features"


jchain : List String
jchain =
    [ "Features" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "defaultList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "addDefault_1", jm_addDefault_1 )
        , ( "add_1", jm_add_1 )
        , ( "removeDefault_1", jm_removeDefault_1 )
        , ( "remove_1", jm_remove_1 )
        , ( "init_0", jm_init_0 )
        , ( "isDefault_1", jm_isDefault_1 )
        , ( "isFeature_1", jm_isFeature_1 )
        , ( "toggle_1", jm_toggle_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Features"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_addDefault_1", jm_addDefault_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_removeDefault_1", jm_removeDefault_1 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_init_0", jm_init_0 ), ( "jm_isDefault_1", jm_isDefault_1 ), ( "jm_isFeature_1", jm_isFeature_1 ), ( "jm_toggle_1", jm_toggle_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "Features" jclinit "SINGLETON"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])), 
                    JR.exec (JR.setField "defaultList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])), 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_SINGLETON (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "Features.SINGLETON" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_addDefault_1 : JR.Method
jm_addDefault_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" JR.this [ (JR.local "gameFeature") ]), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "defaultList") [ (JR.local "gameFeature") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "defaultList") [ (JR.local "gameFeature") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "gameFeature") ])) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_0" (JR.local "gameFeature") []) ]) []), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "gameFeature") ]), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameFeatureEventHandler.jm_getInstance_0 []) [ (JR.new GameFeatureEvent.jnew_2 [ (JR.local "gameFeature"), (JR.invoke "toString_0" (JR.local "gameFeature") []) ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeDefault_1 : JR.Method
jm_removeDefault_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_0" (JR.local "gameFeature") []) ]) []), JR.this, (JR.str "removeDefault") ]), 
                    JR.exec (JR.invoke "remove_1" JR.this [ (JR.local "gameFeature") ]), 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "defaultList") [ (JR.local "gameFeature") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "gameFeature") ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "REMOVE" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "gameFeature") ]), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameFeatureEventHandler.jm_getInstance_0 []) [ (JR.new GameFeatureEvent.jnew_2 [ (JR.local "gameFeature"), (JR.invoke "toString_0" (JR.local "gameFeature") []) ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameFeatureFactory" "" (JR.callStatic GameFeatureFactory.jm_getInstance_0 []), 
                        JR.declare "inputFeatureFactory" "" (JR.callStatic InputFeatureFactory.jm_getInstance_0 []), 
                        JR.declare "sensorFeatureFactory" "" (JR.callStatic SensorFeatureFactory.jm_getInstance_0 []), 
                        JR.declare "touchFeatureFactory" "" (JR.callStatic TouchFeatureFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "ARTIFICIAL_INTELLEGENCE_PROCESSOR" (JR.local "gameFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "COLLIDABLE_INTERFACE_LAYER_PROCESSOR" (JR.local "gameFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "GAME_INPUT_LAYER_PROCESSOR" (JR.local "gameFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "TICKABLE_LAYER_PROCESSOR" (JR.local "gameFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "MULTI_KEY_PRESS" (JR.local "inputFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "REMOVE_DUPLICATE_KEY_PRESSES" (JR.local "inputFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "SCREEN_SHAKE" (JR.local "gameFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "POST_IMAGE_LOADING_MODIFICATION" (JR.local "gameFeatureFactory")) ]), 
                        JR.declare "operatingSystemInterface" "" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []), 
                        JR.ifElse (JR.invoke "isOverScan_0" (JR.local "operatingSystemInterface") []) (JR.run [ 
                            JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "NO_ORIENTATION" (JR.local "sensorFeatureFactory")) ]), 
                            JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "HIDE_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "ORIENTATION_SENSORS" (JR.local "sensorFeatureFactory")) ]), 
                            JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "AUTO_HIDE_SHOW_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ]) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "TOUCH_ENABLED" (JR.local "touchFeatureFactory")) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "FULL_SCREEN" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "addDefault_1" JR.this [ (JR.field "LOAD_ONDEMAND" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_isDefault_1 : JR.Method
jm_isDefault_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "defaultList") [ (JR.local "gameFeature") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isFeature_1 : JR.Method
jm_isFeature_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "gameFeature") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toggle_1 : JR.Method
jm_toggle_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" JR.this [ (JR.local "gameFeature") ]) (JR.run [ 
                        JR.exec (JR.invoke "remove_1" JR.this [ (JR.local "gameFeature") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" JR.this [ (JR.local "gameFeature") ]) ]) ])
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

