module Org.Allbinary.Game.Ag.Life.Life exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.life
-}

import JR
import Org.Allbinary.Game.Ag.Life.LifeInterface as LifeInterface


jclass : String
jclass =
    "Life"


jchain : List String
jchain =
    [ "Life" ]
        ++ LifeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "lives", JR.defaultOf "S" ), ( "startLives", JR.defaultOf "S" ), ( "maxlives", JR.defaultOf "S" ) ]


jvtable =
    JR.vtable
        [ ( "createLife_0", jm_createLife_0 )
        , ( "get_0", jm_get_0 )
        , ( "set_1", jm_set_1 )
        , ( "reset_0", jm_reset_0 )
        , ( "add_1", jm_add_1 )
        , ( "isAlive_0", jm_isAlive_0 )
        , ( "getMaxlives_0", jm_getMaxlives_0 )
        , ( "reachedLimit_0", jm_reachedLimit_0 )
        , ( "deaths_1", jm_deaths_1 )
        , ( "getStartLives_0", jm_getStartLives_0 )
        , ( "setStartLives_1", jm_setStartLives_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Life"
        [ ( "jm_createLife_0", jm_createLife_0 ), ( "jm_get_0", jm_get_0 ), ( "jm_set_1", jm_set_1 ), ( "jm_reset_0", jm_reset_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_isAlive_0", jm_isAlive_0 ), ( "jm_getMaxlives_0", jm_getMaxlives_0 ), ( "jm_reachedLimit_0", jm_reachedLimit_0 ), ( "jm_deaths_1", jm_deaths_1 ), ( "jm_getStartLives_0", jm_getStartLives_0 ), ( "jm_setStartLives_1", jm_setStartLives_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NO_LIFE", jstatic_NO_LIFE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NO_LIFE : JR.M
jstatic_NO_LIFE s =
    JR.static "Life" jclinit "NO_LIFE"
        (JR.callStatic jm_createLife_0 [])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "lives", "S" ), ( "maxlives", "S" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "maxlives" "S" JR.this (JR.local "maxlives")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "lives") (JR.thisField "maxlives")) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "To Many Lives") ]) ]) identity, 
                    JR.exec (JR.setField "lives" "S" JR.this (JR.local "lives")), 
                    JR.exec (JR.setField "startLives" "S" JR.this (JR.local "lives")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_createLife_0 : JR.Method
jm_createLife_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.new jnew_2 [ (JR.cast "S" (JR.int 0)), (JR.cast "S" (JR.int 0)) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "lives") ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "lives", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "lives" "S" JR.this (JR.local "lives")) ])
        (jregister jheap)
        jthis
        jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "lives" "S" JR.this (JR.thisField "startLives")) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "lives", "S" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "reachedLimit_0" JR.this [])) (JR.run [ 
                        JR.ifElse (JR.map2 JR.lessEquals (JR.map2 JR.add (JR.thisField "lives") (JR.local "lives")) (JR.cast "I" (JR.invoke "getMaxlives_0" JR.this []))) (JR.run [ 
                            JR.exec (JR.setField "lives" "S" JR.this (JR.cast "S" ((JR.map2 JR.add (JR.thisField "lives") (JR.local "lives"))))) ]) (JR.run [ 
                            JR.exec (JR.setField "lives" "S" JR.this (JR.invoke "getMaxlives_0" JR.this [])) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isAlive_0 : JR.Method
jm_isAlive_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.cast "I" (JR.thisField "lives")) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxlives_0 : JR.Method
jm_getMaxlives_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "maxlives") ])
        (jregister jheap)
        jthis
        jargs


jm_reachedLimit_0 : JR.Method
jm_reachedLimit_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.greater (JR.thisField "lives") (JR.thisField "maxlives")) (JR.map2 JR.less (JR.cast "I" (JR.thisField "lives")) (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_deaths_1 : JR.Method
jm_deaths_1 jheap jthis jargs =
    JR.method [ ( "lives", "S" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "reachedLimit_0" JR.this [])) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greaterEquals (JR.map2 JR.sub (JR.thisField "lives") (JR.local "lives")) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setField "lives" "S" JR.this (JR.cast "S" ((JR.map2 JR.sub (JR.thisField "lives") (JR.local "lives"))))) ]) (JR.run [ 
                            JR.exec (JR.setField "lives" "S" JR.this (JR.int 0)) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getStartLives_0 : JR.Method
jm_getStartLives_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "startLives") ])
        (jregister jheap)
        jthis
        jargs


jm_setStartLives_1 : JR.Method
jm_setStartLives_1 jheap jthis jargs =
    JR.method [ ( "startLives", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "startLives" "S" JR.this (JR.local "startLives")) ])
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

