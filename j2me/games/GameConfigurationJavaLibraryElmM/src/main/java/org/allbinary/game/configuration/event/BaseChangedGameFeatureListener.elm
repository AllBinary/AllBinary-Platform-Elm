module Org.Allbinary.Game.Configuration.Event.BaseChangedGameFeatureListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.event
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Configuration.Event.GameFeatureListenerInterface as GameFeatureListenerInterface
import Org.Allbinary.Game.Configuration.Feature.GameFeatureUtil as GameFeatureUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "BaseChangedGameFeatureListener"


jchain : List String
jchain =
    [ "BaseChangedGameFeatureListener" ]
        ++ GameFeatureListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "gameFeatureUtil", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "changed", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onGameFeatureChange_1", jm_onGameFeatureChange_1 )
        , ( "add_1", jm_add_1 )
        , ( "remove_1", jm_remove_1 )
        , ( "setChanged_1", jm_setChanged_1 )
        , ( "isChangedFeature_1", jm_isChangedFeature_1 )
        , ( "isChanged_0", jm_isChanged_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseChangedGameFeatureListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onGameFeatureChange_1", jm_onGameFeatureChange_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_setChanged_1", jm_setChanged_1 ), ( "jm_isChangedFeature_1", jm_isChangedFeature_1 ), ( "jm_isChanged_0", jm_isChanged_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameFeatureUtil" "" JR.this (JR.callStatic GameFeatureUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "changed" "Z" JR.this (JR.bool True)),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.callStatic CommonStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onGameFeatureChange_1 : JR.Method
jm_onGameFeatureChange_1 jheap jthis jargs =
    JR.method [ ( "gameFeatureEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "GAME_FEATURE_CHANGED" (JR.thisField "gameFeatureUtil")) ]) [ (JR.invoke "getWhatChanged_0" (JR.local "gameFeatureEvent") []) ]) []), JR.this, (JR.field "ON_GAME_FEATURE_CHANGE" (JR.thisField "gameFeatureUtil")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.invoke "getGameOption_0" (JR.local "gameFeatureEvent") []) ]), 
                    JR.exec (JR.invoke "setChanged_1" JR.this [ (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "gameFeature") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "gameFeature") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setChanged_1 : JR.Method
jm_setChanged_1 jheap jthis jargs =
    JR.method [ ( "initialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "changed" "Z" JR.this (JR.local "initialized")), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isChanged_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isChangedFeature_1 : JR.Method
jm_isChangedFeature_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "isChanged" "Z" (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "gameFeature") ]), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "GameFeature: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "gameFeature") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " isFeature: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.local "gameFeature") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " isChanged: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.local "isChanged") ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "isChanged") ]), 
                    JR.return (JR.local "isChanged") ])
        (jregister jheap)
        jthis
        jargs


jm_isChanged_0 : JR.Method
jm_isChanged_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "changed") ])
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

