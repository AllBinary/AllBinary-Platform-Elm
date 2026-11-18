module Org.Allbinary.Game.Score.HighScoreCommandsFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Game.Score.HighScoreCommands as HighScoreCommands
import Org.Allbinary.Game.Score.HighScoreCommandsBaseFactory as HighScoreCommandsBaseFactory


jclass : String
jclass =
    "HighScoreCommandsFactory"


jchain : List String
jchain =
    [ "HighScoreCommandsFactory" ]
        ++ HighScoreCommandsBaseFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScoreCommandsBaseFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        HighScoreCommandsBaseFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoreCommandsFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HighScoreCommandsFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect HighScoreCommandsBaseFactory.jinit_1 JR.this [ (JR.arrayOf "" [ (JR.field "PERSONAL" (JR.callStatic HighScoreCommands.jm_getInstance_0 [])), (JR.field "WORLD" (JR.callStatic HighScoreCommands.jm_getInstance_0 [])) ]) ]),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

