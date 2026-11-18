module Org.Allbinary.Game.Layer.AllBinaryGameLayerManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayerManager as AllBinaryLayerManager
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.GameInfo as GameInfo
import Org.Allbinary.Graphics.ItemColorFactory as ItemColorFactory
import Org.Allbinary.Game.Input.NullPlayerGameInputComposite as NullPlayerGameInputComposite
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "AllBinaryGameLayerManager"


jchain : List String
jchain =
    [ "AllBinaryGameLayerManager" ]
        ++ AllBinaryLayerManager.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryLayerManager.jfields ++ [ ( "backgroundBasicColor", JR.defaultOf "" ), ( "foregroundBasicColor", JR.defaultOf "" ), ( "gameInfo", JR.defaultOf "" ), ( "playerGameInputCompositeInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "getLayerManager_0", jm_getLayerManager_0 )
        , ( "init_0", jm_init_0 )
        , ( "getBackgroundBasicColor_0", jm_getBackgroundBasicColor_0 )
        , ( "setBackgroundBasicColor_1", jm_setBackgroundBasicColor_1 )
        , ( "getForegroundBasicColor_0", jm_getForegroundBasicColor_0 )
        , ( "setForegroundBasicColor_1", jm_setForegroundBasicColor_1 )
        , ( "getGameInfo_0", jm_getGameInfo_0 )
        , ( "setGameInfo_1", jm_setGameInfo_1 )
        , ( "setLayerProcessorList_1", jm_setLayerProcessorList_1 )
        , ( "setPlayerGameInputCompositeInterface_1", jm_setPlayerGameInputCompositeInterface_1 )
        , ( "getPlayerGameInputCompositeInterface_0", jm_getPlayerGameInputCompositeInterface_0 ) ]
        AllBinaryLayerManager.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryGameLayerManager"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_getLayerManager_0", jm_getLayerManager_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_getBackgroundBasicColor_0", jm_getBackgroundBasicColor_0 ), ( "jm_setBackgroundBasicColor_1", jm_setBackgroundBasicColor_1 ), ( "jm_getForegroundBasicColor_0", jm_getForegroundBasicColor_0 ), ( "jm_setForegroundBasicColor_1", jm_setForegroundBasicColor_1 ), ( "jm_getGameInfo_0", jm_getGameInfo_0 ), ( "jm_setGameInfo_1", jm_setGameInfo_1 ), ( "jm_setLayerProcessorList_1", jm_setLayerProcessorList_1 ), ( "jm_setPlayerGameInputCompositeInterface_1", jm_setPlayerGameInputCompositeInterface_1 ), ( "jm_getPlayerGameInputCompositeInterface_0", jm_getPlayerGameInputCompositeInterface_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_ALLBINARY_LAYER_MANAGER", jstatic_NULL_ALLBINARY_LAYER_MANAGER ), ( "jstatic_ID", jstatic_ID ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ALLBINARY_LAYER_MANAGER : JR.M
jstatic_NULL_ALLBINARY_LAYER_MANAGER s =
    JR.static "AllBinaryGameLayerManager" jclinit "NULL_ALLBINARY_LAYER_MANAGER"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "AllBinaryGameLayerManager" jclinit "ID"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 22) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ), ( "gameInfo", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryLayerManager.jinit_0 JR.this []),
                JR.exec (JR.setField "playerGameInputCompositeInterface" "" JR.this NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "backgroundBasicColor" "" JR.this (JR.local "backgroundBasicColor")), 
                    JR.exec (JR.setField "foregroundBasicColor" "" JR.this (JR.local "foregroundBasicColor")), 
                    JR.declare "itemColorFactory" "" (JR.callStatic ItemColorFactory.jm_getInstance_0 []), 
                    JR.exec (JR.andThen (JR.local "itemColorFactory") (\jtN69206 -> (JR.setField "INVERT_PAINT" "I" (JR.lit jtN69206) (JR.invoke "intValue_0" (JR.thisField "backgroundBasicColor") [])))), 
                    JR.exec (JR.andThen (JR.local "itemColorFactory") (\jtN69250 -> (JR.setField "PAINT" "I" (JR.lit jtN69250) (JR.invoke "intValue_0" (JR.thisField "foregroundBasicColor") [])))), 
                    JR.exec (JR.setField "gameInfo" "" JR.this (JR.local "gameInfo")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_ALLBINARY_LAYER_MANAGER (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER" "" (JR.new jnew_3 [ (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), GameInfo.jstatic_NONE ])) ]) identity, 
                    JR.return jstatic_NULL_ALLBINARY_LAYER_MANAGER ])
        (jregister jheap)
        jthis
        jargs


jm_getLayerManager_0 : JR.Method
jm_getLayerManager_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getBackgroundBasicColor_0 : JR.Method
jm_getBackgroundBasicColor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "backgroundBasicColor") ])
        (jregister jheap)
        jthis
        jargs


jm_setBackgroundBasicColor_1 : JR.Method
jm_setBackgroundBasicColor_1 jheap jthis jargs =
    JR.method [ ( "backgroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "backgroundBasicColor" "" JR.this (JR.local "backgroundBasicColor")), 
                    JR.exec (JR.andThen (JR.callStatic ItemColorFactory.jm_getInstance_0 []) (\jtN69550 -> (JR.setField "INVERT_PAINT" "I" (JR.lit jtN69550) (JR.invoke "intValue_0" (JR.thisField "backgroundBasicColor") [])))) ])
        (jregister jheap)
        jthis
        jargs


jm_getForegroundBasicColor_0 : JR.Method
jm_getForegroundBasicColor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "foregroundBasicColor") ])
        (jregister jheap)
        jthis
        jargs


jm_setForegroundBasicColor_1 : JR.Method
jm_setForegroundBasicColor_1 jheap jthis jargs =
    JR.method [ ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "foregroundBasicColor" "" JR.this (JR.local "foregroundBasicColor")), 
                    JR.exec (JR.andThen (JR.callStatic ItemColorFactory.jm_getInstance_0 []) (\jtN69727 -> (JR.setField "PAINT" "I" (JR.lit jtN69727) (JR.invoke "intValue_0" (JR.thisField "foregroundBasicColor") [])))) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameInfo_0 : JR.Method
jm_getGameInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameInfo_1 : JR.Method
jm_setGameInfo_1 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameInfo" "" JR.this (JR.local "gameInfo")) ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerProcessorList_1 : JR.Method
jm_setLayerProcessorList_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "layerProcessorInterfaceArray" "" (JR.newArray "" [ (JR.invoke "size_0" (JR.local "list") []) ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "layerProcessorInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70194 -> (JR.setLocal "index" "I" (JR.lit jwN70194))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "layerProcessorInterfaceArray") (\jaN70077 -> JR.andThen (JR.local "index") (\jiN70077 -> (JR.aset (JR.lit jaN70077) (JR.lit jiN70077) (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")))))) ]) ], 
                    JR.exec (JR.invoke "setLayerProcessorArray_1" JR.this [ (JR.local "layerProcessorInterfaceArray") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setPlayerGameInputCompositeInterface_1 : JR.Method
jm_setPlayerGameInputCompositeInterface_1 jheap jthis jargs =
    JR.method [ ( "playerGameInputCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "playerGameInputCompositeInterface" "" JR.this (JR.local "playerGameInputCompositeInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPlayerGameInputCompositeInterface_0 : JR.Method
jm_getPlayerGameInputCompositeInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "playerGameInputCompositeInterface") ])
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

