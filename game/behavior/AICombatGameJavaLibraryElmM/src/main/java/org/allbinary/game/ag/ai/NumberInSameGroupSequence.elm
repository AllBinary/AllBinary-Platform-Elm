module Org.Allbinary.Game.Ag.Ai.NumberInSameGroupSequence exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "NumberInSameGroupSequence"


jchain : List String
jchain =
    [ "NumberInSameGroupSequence" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_ONE", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_TWO", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_THREE", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_SIX", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE_NINE", JR.defaultOf "" ), ( "NUMBER_ON_SAME_TEAM_SEQUENCE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NumberInSameGroupSequence"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 100) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_ONE" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 101) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_TWO" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 102) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_THREE" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 103) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 104) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 105) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_SIX" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 106) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 107) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 108) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE_NINE" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 109) ])), 
                    JR.exec (JR.setField "NUMBER_ON_SAME_TEAM_SEQUENCE" "" JR.this (JR.arrayOf "" [ (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_ONE"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_THREE"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_SIX"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT"), (JR.thisField "NUMBER_ON_SAME_TEAM_SEQUENCE_NINE") ])) ]) ])
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
                    JR.return (JR.new jnew_0 []) ])
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

