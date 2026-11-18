module Org.Allbinary.Game.Configuration.InGameFeatures exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GameFeatureChoiceGroups as GameFeatureChoiceGroups
import Org.Allbinary.Game.Configuration.Feature.InGameFeatureChoiceGroups as InGameFeatureChoiceGroups
import Org.Allbinary.Init.Init as Init
import Org.Allbinary.Input.Gyro.OrientationData as OrientationData
import Org.Allbinary.Game.Configuration.Feature.SensorFeatureFactory as SensorFeatureFactory
import Org.Allbinary.Game.Configuration.Feature.TouchFeatureFactory as TouchFeatureFactory


jclass : String
jclass =
    "InGameFeatures"


jchain : List String
jchain =
    [ "InGameFeatures" ]
        ++ Init.jchain


jfields : List ( String, JR.JValue )
jfields =
    Init.jfields ++ []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "addToInGameMenu_0", jm_addToInGameMenu_0 )
        , ( "isAny_0", jm_isAny_0 ) ]
        Init.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InGameFeatures"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_addToInGameMenu_0", jm_addToInGameMenu_0 ), ( "jm_isAny_0", jm_isAny_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Init.jinit_0 JR.this []),
            identity ])
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
                    JR.declare "LABEL" "" (JR.str "Screen Buttons"), 
                    JR.declare "orientationData" "" (JR.callStatic OrientationData.jm_getInstance_0 []), 
                    JR.declare "exclusiveOrientationSensorVector" "" (JR.invoke "get_1" (JR.invoke "get_0" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) []) [ (JR.field "ORIENTATION_SENSOR_INPUT" (JR.local "orientationData")) ]), 
                    JR.declare "inGameFeatureChoiceGroups" "" (JR.callStatic InGameFeatureChoiceGroups.jm_getExclusiveInstance_0 []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "exclusiveOrientationSensorVector") JR.null) (JR.run [ 
                        JR.declare "inGameExclusiveOrientationSensorVectorCanBeNull" "" (JR.invoke "get_1" (JR.invoke "get_0" (JR.local "inGameFeatureChoiceGroups") []) [ (JR.field "ORIENTATION_SENSOR_INPUT" (JR.local "orientationData")) ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "inGameExclusiveOrientationSensorVectorCanBeNull") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "addToInGameMenu_0" JR.this []) ]) (JR.run [ 
                            JR.declare "inGameExclusiveOrientationSensorVector" "" (JR.local "inGameExclusiveOrientationSensorVectorCanBeNull"), 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.local "inGameExclusiveOrientationSensorVector") []) (JR.int 0)) (JR.run [ 
                                JR.exec (JR.invoke "addToInGameMenu_0" JR.this []) ]) identity ]) ]) identity, 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.or (JR.or (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SHOW_SCREEN_BUTTONS" (JR.callStatic TouchFeatureFactory.jm_getInstance_0 [])) ]) (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "AUTO_HIDE_SHOW_SCREEN_BUTTONS" (JR.callStatic TouchFeatureFactory.jm_getInstance_0 [])) ])) (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "HIDE_SCREEN_BUTTONS" (JR.callStatic TouchFeatureFactory.jm_getInstance_0 [])) ])) (JR.run [ 
                        JR.declare "exclusiveScreenButtonsVector" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.declare "touchFeatureFactory" "" (JR.callStatic TouchFeatureFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "exclusiveScreenButtonsVector") [ (JR.field "AUTO_HIDE_SHOW_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "exclusiveScreenButtonsVector") [ (JR.field "SHOW_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "exclusiveScreenButtonsVector") [ (JR.field "HIDE_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ]), 
                        JR.exec (JR.invoke "add_2" (JR.local "inGameFeatureChoiceGroups") [ (JR.local "LABEL"), (JR.local "exclusiveScreenButtonsVector") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_addToInGameMenu_0 : JR.Method
jm_addToInGameMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "orientationData" "" (JR.callStatic OrientationData.jm_getInstance_0 []), 
                    JR.declare "inGameExclusiveOrientationSensorVector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.exec (JR.invoke "add_1" (JR.local "inGameExclusiveOrientationSensorVector") [ (JR.field "ORIENTATION_SENSORS" (JR.callStatic SensorFeatureFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "inGameExclusiveOrientationSensorVector") [ (JR.field "NO_ORIENTATION" (JR.callStatic SensorFeatureFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "add_2" (JR.callStatic InGameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) [ (JR.field "ORIENTATION_SENSOR_INPUT" (JR.local "orientationData")), (JR.local "inGameExclusiveOrientationSensorVector") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isAny_0 : JR.Method
jm_isAny_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "touchFeatureFactory" "" (JR.callStatic TouchFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.or (JR.or (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SHOW_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ]) (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "AUTO_HIDE_SHOW_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ])) (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "HIDE_SCREEN_BUTTONS" (JR.local "touchFeatureFactory")) ])) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.declare "exclusiveOrientationSensorVector" "" (JR.invoke "get_1" (JR.invoke "get_0" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) []) [ (JR.field "ORIENTATION_SENSOR_INPUT" (JR.callStatic OrientationData.jm_getInstance_0 [])) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "exclusiveOrientationSensorVector") JR.null) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
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

