module Org.Allbinary.Game.Score.RemoteErrorHighScoresSingletonFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Score.HighScores as HighScores


jclass : String
jclass =
    "RemoteErrorHighScoresSingletonFactory"


jchain : List String
jchain =
    [ "RemoteErrorHighScoresSingletonFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RemoteErrorHighScoresSingletonFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "RemoteErrorHighScoresSingletonFactory" jclinit "SINGLETON"
        (JR.new HighScores.jnew_3 [ (JR.field "LOADING" (JR.callStatic CommonStrings.jm_getInstance_0 [])), (JR.str "Remote High Scores Did Not Load"), (JR.field "PERIODS" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ])
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
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

