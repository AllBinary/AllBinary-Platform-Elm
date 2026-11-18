module Org.Allbinary.Game.Multiplayer.Layer.RemoteInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.multiplayer.layer
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "RemoteInfo"


jchain : List String
jchain =
    [ "RemoteInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RemoteInfo"
        [ ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_NEW_PLAYER_ID", jstatic_NEW_PLAYER_ID ), ( "jstatic_REMOTE_INFO", jstatic_REMOTE_INFO ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NEW_PLAYER_ID : JR.M
jstatic_NEW_PLAYER_ID s =
    JR.static "RemoteInfo" jclinit "NEW_PLAYER_ID"
        (JR.int 0)
        s


jstatic_REMOTE_INFO : JR.M
jstatic_REMOTE_INFO s =
    JR.static "RemoteInfo" jclinit "REMOTE_INFO"
        (JR.new jnew_4 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)), jstatic_NEW_PLAYER_ID ])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "username", "" ), ( "actorSessionId", "I" ), ( "playerInputId", "I" ), ( "id", "I" ) ] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

