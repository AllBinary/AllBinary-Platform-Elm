module Org.Allbinary.Game.Input.NullPlayerGameInputComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.NoPlayerGameInput as NoPlayerGameInput
import Org.Allbinary.Game.Input.PlayerGameInputCompositeInterface as PlayerGameInputCompositeInterface
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "NullPlayerGameInputComposite"


jchain : List String
jchain =
    [ "NullPlayerGameInputComposite" ]
        ++ PlayerGameInputCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getName_0", jm_getName_0 )
        , ( "processInput_1", jm_processInput_1 )
        , ( "initInputProcessors_0", jm_initInputProcessors_0 )
        , ( "getPlayerGameInput_0", jm_getPlayerGameInput_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullPlayerGameInputComposite"
        [ ( "jm_getName_0", jm_getName_0 ), ( "jm_processInput_1", jm_processInput_1 ), ( "jm_initInputProcessors_0", jm_initInputProcessors_0 ), ( "jm_getPlayerGameInput_0", jm_getPlayerGameInput_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE", jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE : JR.M
jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE s =
    JR.static "NullPlayerGameInputComposite" jclinit "NULL_PLAYER_GAME_INPUT_COMPOSITE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_processInput_1 : JR.Method
jm_processInput_1 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_initInputProcessors_0 : JR.Method
jm_initInputProcessors_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getPlayerGameInput_0 : JR.Method
jm_getPlayerGameInput_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic NoPlayerGameInput.jm_getInstance_0 []) ])
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

