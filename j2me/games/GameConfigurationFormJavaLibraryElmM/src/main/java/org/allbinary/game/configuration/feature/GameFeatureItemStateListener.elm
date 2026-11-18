module Org.Allbinary.Game.Configuration.Feature.GameFeatureItemStateListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.GameConfigurationUtil as GameConfigurationUtil
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import Org.Allbinary.Game.Configuration.Feature.GameFeatureUtil as GameFeatureUtil
import Javax.Microedition.Lcdui.ItemStateListener as ItemStateListener
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GameFeatureItemStateListener"


jchain : List String
jchain =
    [ "GameFeatureItemStateListener" ]
        ++ ItemStateListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "gameOptionsForm", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "itemStateChanged_1", jm_itemStateChanged_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameFeatureItemStateListener"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_itemStateChanged_1", jm_itemStateChanged_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_toggleList", jstatic_toggleList ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_toggleList : JR.M
jstatic_toggleList s =
    JR.static "GameFeatureItemStateListener" jclinit "toggleList"
        (JR.new BasicArrayListD.jnew_0 [])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameOptionsForm", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameOptionsForm" "" JR.this (JR.local "gameOptionsForm")), 
                    JR.declare "gameFeatureFactory" "" (JR.callStatic GameFeatureFactory.jm_getInstance_0 []), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "ARTIFICIAL_INTELLEGENCE_PROCESSOR" (JR.local "gameFeatureFactory")) ]), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "COLLIDABLE_INTERFACE_LAYER_PROCESSOR" (JR.local "gameFeatureFactory")) ]), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "DAMAGE_FLOATERS" (JR.local "gameFeatureFactory")) ]), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "DROPPED_ITEMS" (JR.local "gameFeatureFactory")) ]), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "GAME_INPUT_LAYER_PROCESSOR" (JR.local "gameFeatureFactory")) ]), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "HEALTH_BARS" (JR.local "gameFeatureFactory")) ]), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "SOUND" (JR.local "gameFeatureFactory")) ]), 
                    JR.exec (JR.callStatic jm_add_1 [ (JR.field "TICKABLE_LAYER_PROCESSOR" (JR.local "gameFeatureFactory")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" jstatic_toggleList [ (JR.local "gameFeature") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" jstatic_toggleList [ (JR.local "gameFeature") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_itemStateChanged_1 : JR.Method
jm_itemStateChanged_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "itemLabel" "" (JR.invoke "getLabel_0" (JR.local "item") []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "ITEM_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.local "itemLabel") ]) []), JR.this, (JR.str "itemStateChanged") ]), 
                        JR.ifElse (JR.instanceOf "GameConfigurationGauge" (JR.local "item")) (JR.run [ 
                            JR.exec (JR.invoke "change_2" (JR.callStatic GameConfigurationUtil.jm_getInstance_0 []) [ (JR.thisField "gameOptionsForm"), (JR.local "item") ]) ]) (JR.run [ 
                        JR.ifElse (JR.instanceOf "ChoiceGroup" (JR.local "item")) (JR.run [ 
                            JR.declare "gameFeatureUtil" "" (JR.callStatic GameFeatureUtil.jm_getInstance_0 []), 
                            JR.ifElse (JR.invoke "isExclusive_1" (JR.local "gameFeatureUtil") [ (JR.local "itemLabel") ]) (JR.run [ 
                                JR.exec (JR.invoke "updateExclusiveForChoiceGroup_1" (JR.local "gameFeatureUtil") [ (JR.local "item") ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "updateMultiple_1" (JR.local "gameFeatureUtil") [ (JR.local "item") ]) ]) ]) identity ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "itemStateChanged"), (JR.local "e") ]) ]) ) ] identity ])
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

