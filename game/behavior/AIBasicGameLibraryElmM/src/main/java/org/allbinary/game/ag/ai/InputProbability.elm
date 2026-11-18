module Org.Allbinary.Game.Ag.Ai.InputProbability exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "InputProbability"


jchain : List String
jchain =
    [ "InputProbability" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "likelyhoodIntegerArray", JR.defaultOf "" ), ( "repeatLikelyhoodIntegerArray", JR.defaultOf "" ), ( "max", JR.defaultOf "I" ), ( "timeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getLikelyhoodIntegerArray_0", jm_getLikelyhoodIntegerArray_0 )
        , ( "getRepeatLikelyhoodIntegerArray_0", jm_getRepeatLikelyhoodIntegerArray_0 )
        , ( "getMax_0", jm_getMax_0 )
        , ( "getTimeDelayHelper_0", jm_getTimeDelayHelper_0 )
        , ( "toHashtable_0", jm_toHashtable_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputProbability"
        [ ( "jm_getLikelyhoodIntegerArray_0", jm_getLikelyhoodIntegerArray_0 ), ( "jm_getRepeatLikelyhoodIntegerArray_0", jm_getRepeatLikelyhoodIntegerArray_0 ), ( "jm_getMax_0", jm_getMax_0 ), ( "jm_getTimeDelayHelper_0", jm_getTimeDelayHelper_0 ), ( "jm_toHashtable_0", jm_toHashtable_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_INPUT_PROBABILITY", jstatic_INPUT_PROBABILITY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INPUT_PROBABILITY : JR.M
jstatic_INPUT_PROBABILITY s =
    JR.static "InputProbability" jclinit "INPUT_PROBABILITY"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 0) ])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "likelyhoodIntegerArray", "" ), ( "repeatLikelyhoodIntegerArray", "" ), ( "max", "I" ), ( "timeDelayHelper", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "likelyhoodIntegerArray" "" JR.this (JR.local "likelyhoodIntegerArray")), 
                    JR.exec (JR.setField "repeatLikelyhoodIntegerArray" "" JR.this (JR.local "repeatLikelyhoodIntegerArray")), 
                    JR.exec (JR.setField "max" "I" JR.this (JR.local "max")), 
                    JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.local "timeDelayHelper")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getLikelyhoodIntegerArray_0 : JR.Method
jm_getLikelyhoodIntegerArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "likelyhoodIntegerArray") ])
        (jregister jheap)
        jthis
        jargs


jm_getRepeatLikelyhoodIntegerArray_0 : JR.Method
jm_getRepeatLikelyhoodIntegerArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "repeatLikelyhoodIntegerArray") ])
        (jregister jheap)
        jthis
        jargs


jm_getMax_0 : JR.Method
jm_getMax_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "max") ])
        (jregister jheap)
        jthis
        jargs


jm_getTimeDelayHelper_0 : JR.Method
jm_getTimeDelayHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "timeDelayHelper") ])
        (jregister jheap)
        jthis
        jargs


jm_toHashtable_0 : JR.Method
jm_toHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "hashtable" "" (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ jstatic_INPUT_PROBABILITY, JR.this ]), 
                    JR.return (JR.local "hashtable") ])
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

