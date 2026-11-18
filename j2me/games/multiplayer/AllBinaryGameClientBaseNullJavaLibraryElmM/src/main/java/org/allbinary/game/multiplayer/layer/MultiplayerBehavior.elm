module Org.Allbinary.Game.Multiplayer.Layer.MultiplayerBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.multiplayer.layer
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "MultiplayerBehavior"


jchain : List String
jchain =
    [ "MultiplayerBehavior" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "startTick_0", jm_startTick_0 )
        , ( "endTick_0", jm_endTick_0 )
        , ( "getApproximateElapsed_0", jm_getApproximateElapsed_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultiplayerBehavior"
        [ ( "jm_startTick_0", jm_startTick_0 ), ( "jm_endTick_0", jm_endTick_0 ), ( "jm_getApproximateElapsed_0", jm_getApproximateElapsed_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_MULTIPLAYER_BEHAVIOR", jstatic_NULL_MULTIPLAYER_BEHAVIOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_MULTIPLAYER_BEHAVIOR : JR.M
jstatic_NULL_MULTIPLAYER_BEHAVIOR s =
    JR.static "MultiplayerBehavior" jclinit "NULL_MULTIPLAYER_BEHAVIOR"
        (JR.new jnew_1 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "username", "" ) ] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_startTick_0 : JR.Method
jm_startTick_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_endTick_0 : JR.Method
jm_endTick_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getApproximateElapsed_0 : JR.Method
jm_getApproximateElapsed_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
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

