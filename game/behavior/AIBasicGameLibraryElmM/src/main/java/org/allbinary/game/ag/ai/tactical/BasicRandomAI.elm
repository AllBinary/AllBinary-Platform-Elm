module Org.Allbinary.Game.Ag.Ai.Tactical.BasicRandomAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.tactical
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory


jclass : String
jclass =
    "BasicRandomAI"


jchain : List String
jchain =
    [ "BasicRandomAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "i_random", JR.defaultOf "I" ), ( "inputProbability", JR.defaultOf "" ), ( "visitor", JR.defaultOf "" ), ( "keyArray", JR.defaultOf "" ), ( "myRandomFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicRandomAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ), ( "inputProbability", "" ), ( "visitor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "i_random" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "keyArray" "" JR.this (JR.arrayOf "I" [ Canvas.jstatic_UP, Canvas.jstatic_DOWN, Canvas.jstatic_LEFT, Canvas.jstatic_RIGHT, Canvas.jstatic_KEY_NUM1, Canvas.jstatic_KEY_NUM7, Canvas.jstatic_KEY_NUM9 ])),
                JR.exec (JR.setField "myRandomFactory" "" JR.this (JR.callStatic MyRandomFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "inputProbability" "" JR.this (JR.local "inputProbability")), 
                    JR.exec (JR.setField "visitor" "" JR.this (JR.local "visitor")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.invoke "getTimeDelayHelper_0" (JR.thisField "inputProbability") []) [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.setField "i_random" "I" JR.this (JR.invoke "getAbsoluteNextInt_1" (JR.thisField "myRandomFactory") [ (JR.invoke "getMax_0" (JR.thisField "inputProbability") []) ])), 
                        JR.declare "repeat" "Z" (JR.bool False), 
                        JR.declare "repeatLikelyhoodIntegerArray" "" (JR.invoke "getRepeatLikelyhoodIntegerArray_0" (JR.thisField "inputProbability") []), 
                        JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.invoke "getLastKey_0" JR.this []) (JR.map JR.neg (JR.int 1))) (JR.map2 JR.greaterEquals (JR.invoke "intValue_0" (JR.aget (JR.local "repeatLikelyhoodIntegerArray") (JR.invoke "getLastKey_0" JR.this [])) []) (JR.thisField "i_random"))) (JR.run [ 
                            JR.exec (JR.setLocal "repeat" "Z" (JR.bool True)) ]) identity, 
                        JR.ifElse (JR.map JR.not_ (JR.local "repeat")) (JR.run [ 
                            JR.declare "likelyhoodIntegerArray" "" (JR.invoke "getLikelyhoodIntegerArray_0" (JR.thisField "inputProbability") []), 
                            JR.exec (JR.setField "i_random" "I" JR.this (JR.invoke "getAbsoluteNextInt_1" (JR.thisField "myRandomFactory") [ (JR.invoke "getMax_0" (JR.thisField "inputProbability") []) ])), 
                            JR.declare "size" "I" (JR.alength (JR.thisField "keyArray")), 
                            JR.declare "likelyhoodIntegerKeyArray" "" (JR.lit (JR.defaultOf "")), 
                            JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70141 -> (JR.setLocal "index" "I" (JR.lit jwN70141))) JR.increment) ]) (JR.run [ 
                                JR.declare "key" "I" (JR.aget (JR.thisField "keyArray") (JR.local "index")), 
                                JR.exec (JR.setLocal "likelyhoodIntegerKeyArray" "" (JR.aget (JR.local "likelyhoodIntegerArray") (JR.local "key"))), 
                                JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.alength (JR.local "likelyhoodIntegerArray")) (JR.local "key")) (JR.map2 JR.notEquals (JR.aget (JR.local "likelyhoodIntegerKeyArray") (JR.int 0)) JR.null)) (JR.run [ 
                                    JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.thisField "i_random") (JR.invoke "intValue_0" (JR.aget (JR.local "likelyhoodIntegerKeyArray") (JR.int 0)) [])) (JR.map2 JR.less (JR.thisField "i_random") (JR.invoke "intValue_0" (JR.aget (JR.local "likelyhoodIntegerKeyArray") (JR.int 1)) []))) (JR.run [ 
                                        JR.exec (JR.invoke "setLastKey_1" JR.this [ (JR.local "key") ]), 
                                        JR.break ]) identity ]) identity ]) ] ]) identity, 
                        JR.exec (JR.invoke "visit_1" (JR.thisField "visitor") [ JR.this ]) ]) identity ])
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

