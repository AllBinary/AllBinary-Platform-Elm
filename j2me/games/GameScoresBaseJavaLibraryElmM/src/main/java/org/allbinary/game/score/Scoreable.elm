module Org.Allbinary.Game.Score.Scoreable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Game.Score.ScoreableInterface as ScoreableInterface
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "Scoreable"


jchain : List String
jchain =
    [ "Scoreable" ]
        ++ ScoreableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "points", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "addPoints_1", jm_addPoints_1 )
        , ( "removePoints_1", jm_removePoints_1 )
        , ( "setPoints_1", jm_setPoints_1 )
        , ( "getPoints_0", jm_getPoints_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Scoreable"
        [ ( "jm_addPoints_1", jm_addPoints_1 ), ( "jm_removePoints_1", jm_removePoints_1 ), ( "jm_setPoints_1", jm_setPoints_1 ), ( "jm_getPoints_0", jm_getPoints_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_ID", jstatic_ID ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "Scoreable" jclinit "ID"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 3) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "points" "I" JR.this (JR.local "points")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_addPoints_1 : JR.Method
jm_addPoints_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "points" "I" JR.this (JR.map2 JR.add (JR.thisField "points") (JR.local "points"))) ])
        (jregister jheap)
        jthis
        jargs


jm_removePoints_1 : JR.Method
jm_removePoints_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "points" "I" JR.this (JR.map2 JR.sub (JR.thisField "points") (JR.local "points"))) ])
        (jregister jheap)
        jthis
        jargs


jm_setPoints_1 : JR.Method
jm_setPoints_1 jheap jthis jargs =
    JR.method [ ( "points", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "points" "I" JR.this (JR.local "points")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPoints_0 : JR.Method
jm_getPoints_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "points") ])
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

