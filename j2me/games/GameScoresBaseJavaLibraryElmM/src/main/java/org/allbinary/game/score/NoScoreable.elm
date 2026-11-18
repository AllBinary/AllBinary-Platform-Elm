module Org.Allbinary.Game.Score.NoScoreable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Game.Score.Scoreable as Scoreable


jclass : String
jclass =
    "NoScoreable"


jchain : List String
jchain =
    [ "NoScoreable" ]
        ++ Scoreable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Scoreable.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "addPoints_1", jm_addPoints_1 )
        , ( "removePoints_1", jm_removePoints_1 ) ]
        Scoreable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoScoreable"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_addPoints_1", jm_addPoints_1 ), ( "jm_removePoints_1", jm_removePoints_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "NoScoreable" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Scoreable.jinit_1 JR.this [ (JR.int 0) ]),
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_addPoints_1 : JR.Method
jm_addPoints_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_removePoints_1 : JR.Method
jm_removePoints_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
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

