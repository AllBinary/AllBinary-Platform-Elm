module Org.Allbinary.Game.Input.GameKey exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.Input as Input
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameKey"


jchain : List String
jchain =
    [ "GameKey" ]
        ++ Input.jchain


jfields : List ( String, JR.JValue )
jfields =
    Input.jfields ++ []


jvtable =
    JR.vtable
        [ ( "toString_0", jm_toString_0 ) ]
        Input.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKey"
        [ ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_GAME_KEY", jstatic_NULL_GAME_KEY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_GAME_KEY : JR.M
jstatic_NULL_GAME_KEY s =
    JR.static "GameKey" jclinit "NULL_GAME_KEY"
        (JR.new jnew_2 [ (JR.map JR.neg (JR.int 1)), (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "key", "I" ), ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Input.jinit_2 JR.this [ (JR.local "key"), (JR.local "name") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "GameKey ") ]) [ (JR.callVia Input.jvtable "toString_0" JR.this []) ]) []) ])
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

