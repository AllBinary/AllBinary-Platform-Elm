module Org.Allbinary.Game.BasicGameInfoFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR



jclass : String
jclass =
    "BasicGameInfoFactory"


jchain : List String
jchain =
    [ "BasicGameInfoFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "currentReleaseIndex", JR.defaultOf "I" ), ( "currentDestroyIndex", JR.defaultOf "I" ), ( "total", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_1", jm_init_1 )
        , ( "isPeaked_0", jm_isPeaked_0 )
        , ( "howManyLeft_0", jm_howManyLeft_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicGameInfoFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_isPeaked_0", jm_isPeaked_0 ), ( "jm_howManyLeft_0", jm_howManyLeft_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "BasicGameInfoFactory" jclinit "SINGLETON"
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


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "total", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentReleaseIndex" "I" JR.this (JR.int 0)), 
                    JR.exec (JR.setField "currentDestroyIndex" "I" JR.this (JR.int 0)), 
                    JR.exec (JR.setField "total" "I" JR.this (JR.local "total")) ])
        (jregister jheap)
        jthis
        jargs


jm_isPeaked_0 : JR.Method
jm_isPeaked_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.thisField "currentDestroyIndex") (JR.thisField "total")) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_howManyLeft_0 : JR.Method
jm_howManyLeft_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.sub (JR.thisField "total") (JR.thisField "currentDestroyIndex")) ])
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

