module Org.Allbinary.Game.Terrain.TerrainEventFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.terrain
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterface
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Terrain.TerrainEvent as TerrainEvent


jclass : String
jclass =
    "TerrainEventFactory"


jchain : List String
jchain =
    [ "TerrainEventFactory" ]
        ++ AllBinaryEventObjectFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TerrainEventFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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
                    JR.return (JR.new TerrainEvent.jnew_1 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ])
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

