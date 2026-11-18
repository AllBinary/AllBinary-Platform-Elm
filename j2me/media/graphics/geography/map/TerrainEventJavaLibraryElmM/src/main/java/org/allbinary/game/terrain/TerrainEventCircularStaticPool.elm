module Org.Allbinary.Game.Terrain.TerrainEventCircularStaticPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.terrain
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventCircularPool as AllBinaryEventCircularPool
import Org.Allbinary.Game.Terrain.TerrainEventFactory as TerrainEventFactory


jclass : String
jclass =
    "TerrainEventCircularStaticPool"


jchain : List String
jchain =
    [ "TerrainEventCircularStaticPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EVENT_POOL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 )
        , ( "getNext_1", jm_getNext_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TerrainEventCircularStaticPool"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_getNext_1", jm_getNext_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TerrainEventCircularStaticPool" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EVENT_POOL" "" JR.this (JR.new AllBinaryEventCircularPool.jnew_1 [ (JR.int 20) ])),
                identity ])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initAllBinaryEventCircularPool_1" (JR.thisField "EVENT_POOL") [ (JR.new TerrainEventFactory.jnew_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getNext_1 : JR.Method
jm_getNext_1 jheap jthis jargs =
    JR.method [ ( "basicTerrainInfo", "" ) ] ""
        (JR.run [ 
                    JR.declare "trackingEvent" "" (JR.invoke "getNextInstance_0" (JR.thisField "EVENT_POOL") []), 
                    JR.exec (JR.invoke "setBasicTerrainInfoForCircularStaticPool_1" (JR.local "trackingEvent") [ (JR.local "basicTerrainInfo") ]), 
                    JR.return (JR.local "trackingEvent") ])
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

