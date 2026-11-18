module Org.Allbinary.Game.Terrain.TerrainEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.terrain
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Game.Terrain.BasicTerrainInfo as BasicTerrainInfo
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "TerrainEvent"


jchain : List String
jchain =
    [ "TerrainEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "basicTerrainInfo", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "toString_0", jm_toString_0 )
        , ( "getBasicTerrainInfo_0", jm_getBasicTerrainInfo_0 )
        , ( "setBasicTerrainInfo_1", jm_setBasicTerrainInfo_1 )
        , ( "setBasicTerrainInfoForCircularStaticPool_1", jm_setBasicTerrainInfoForCircularStaticPool_1 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TerrainEvent"
        [ ( "jm_toString_0", jm_toString_0 ), ( "jm_getBasicTerrainInfo_0", jm_getBasicTerrainInfo_0 ), ( "jm_setBasicTerrainInfo_1", jm_setBasicTerrainInfo_1 ), ( "jm_setBasicTerrainInfoForCircularStaticPool_1", jm_setBasicTerrainInfoForCircularStaticPool_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicTerrainInfo", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "basicTerrainInfo") ]),
                JR.exec (JR.setField "basicTerrainInfo" "" JR.this BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setBasicTerrainInfo_1" JR.this [ (JR.thisField "basicTerrainInfo") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "TerrainEvent: \n") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "LayerInterface: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "basicTerrainInfo") []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicTerrainInfo_0 : JR.Method
jm_getBasicTerrainInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicTerrainInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicTerrainInfo_1 : JR.Method
jm_setBasicTerrainInfo_1 jheap jthis jargs =
    JR.method [ ( "basicTerrainInfo", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicTerrainInfo" "" JR.this (JR.local "basicTerrainInfo")) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicTerrainInfoForCircularStaticPool_1 : JR.Method
jm_setBasicTerrainInfoForCircularStaticPool_1 jheap jthis jargs =
    JR.method [ ( "basicTerrainInfo", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicTerrainInfo" "" JR.this (JR.local "basicTerrainInfo")) ])
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

