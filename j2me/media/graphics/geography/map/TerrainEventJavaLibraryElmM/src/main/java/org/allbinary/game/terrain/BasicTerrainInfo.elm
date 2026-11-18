module Org.Allbinary.Game.Terrain.BasicTerrainInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.terrain
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory


jclass : String
jclass =
    "BasicTerrainInfo"


jchain : List String
jchain =
    [ "BasicTerrainInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "angle", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAngle_0", jm_getAngle_0 )
        , ( "setAngle_1", jm_setAngle_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicTerrainInfo"
        [ ( "jm_getAngle_0", jm_getAngle_0 ), ( "jm_setAngle_1", jm_setAngle_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_BASIC_TERRAIN_INFO", jstatic_NULL_BASIC_TERRAIN_INFO ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_BASIC_TERRAIN_INFO : JR.M
jstatic_NULL_BASIC_TERRAIN_INFO s =
    JR.static "BasicTerrainInfo" jclinit "NULL_BASIC_TERRAIN_INFO"
        (JR.new jnew_1 [ (JR.field "NOT_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "angle", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "angle" "" JR.this (JR.local "angle")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getAngle_0 : JR.Method
jm_getAngle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "angle") ])
        (jregister jheap)
        jthis
        jargs


jm_setAngle_1 : JR.Method
jm_setAngle_1 jheap jthis jargs =
    JR.method [ ( "angle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "angle" "" JR.this (JR.local "angle")) ])
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

