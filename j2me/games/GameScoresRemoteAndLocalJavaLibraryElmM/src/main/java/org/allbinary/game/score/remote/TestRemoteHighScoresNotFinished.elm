module Org.Allbinary.Game.Score.Remote.TestRemoteHighScoresNotFinished exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.remote
-}

import JR



jclass : String
jclass =
    "TestRemoteHighScoresNotFinished"


jchain : List String
jchain =
    [ "TestRemoteHighScoresNotFinished" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TestRemoteHighScoresNotFinished"
        [ ( "jm_main_1", jm_main_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_PATH", jstatic_PATH ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_PATH : JR.M
jstatic_PATH s =
    JR.static "TestRemoteHighScoresNotFinished" jclinit "PATH"
        (JR.str "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\")
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


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.new jnew_0 []) ])
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

