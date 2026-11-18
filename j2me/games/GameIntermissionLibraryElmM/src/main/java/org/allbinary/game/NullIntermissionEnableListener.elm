module Org.Allbinary.Game.NullIntermissionEnableListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Game.IntermissionEnableListenerInterface as IntermissionEnableListenerInterface


jclass : String
jclass =
    "NullIntermissionEnableListener"


jchain : List String
jchain =
    [ "NullIntermissionEnableListener" ]
        ++ IntermissionEnableListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "notifyIntermission_1", jm_notifyIntermission_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullIntermissionEnableListener"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_notifyIntermission_1", jm_notifyIntermission_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "NullIntermissionEnableListener" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_notifyIntermission_1 : JR.Method
jm_notifyIntermission_1 jheap jthis jargs =
    JR.method [ ( "enable", "Z" ) ] ""
        identity
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

