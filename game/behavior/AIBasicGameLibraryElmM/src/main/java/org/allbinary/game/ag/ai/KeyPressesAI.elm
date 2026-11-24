module Org.Allbinary.Game.Ag.Ai.KeyPressesAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Org.Allbinary.Util.HashtableUtil as HashtableUtil


jclass : String
jclass =
    "KeyPressesAI"


jchain : List String
jchain =
    [ "KeyPressesAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "on", JR.defaultOf "Z" ), ( "keys", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "toggle_0", jm_toggle_0 )
        , ( "disable_0", jm_disable_0 )
        , ( "enable_0", jm_enable_0 )
        , ( "setOn_1", jm_setOn_1 )
        , ( "isOn_0", jm_isOn_0 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeyPressesAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_toggle_0", jm_toggle_0 ), ( "jm_disable_0", jm_disable_0 ), ( "jm_enable_0", jm_enable_0 ), ( "jm_setOn_1", jm_setOn_1 ), ( "jm_isOn_0", jm_isOn_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "on" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "keys" "" JR.this (JR.newArray "" [ (JR.invoke "size_0" (JR.local "hashtable") []) ])), 
                    JR.declare "objectArray" "" (JR.invoke "getKeysAsArray_1" (JR.callStatic HashtableUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "objectArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68682 -> (JR.setLocal "index" "I" (JR.lit jwN68682))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "keys") (\jaN68539 -> JR.andThen (JR.local "index") (\jiN68539 -> (JR.aset (JR.lit jaN68539) (JR.lit jiN68539) (JR.invoke "get_1" (JR.local "hashtable") [ (JR.aget (JR.local "objectArray") (JR.local "index")) ]))))) ]) ] ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.thisField "on") (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "keys"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68934 -> (JR.setLocal "index" "I" (JR.lit jwN68934))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ (JR.invoke "intValue_0" (JR.aget (JR.thisField "keys") (JR.local "index")) []) ]) ]) ] ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_toggle_0 : JR.Method
jm_toggle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isOn_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "setOn_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setOn_1" JR.this [ (JR.bool True) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_disable_0 : JR.Method
jm_disable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setOn_1" JR.this [ (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_enable_0 : JR.Method
jm_enable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setOn_1" JR.this [ (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setOn_1 : JR.Method
jm_setOn_1 jheap jthis jargs =
    JR.method [ ( "on", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "on" "Z" JR.this (JR.local "on")) ])
        (jregister jheap)
        jthis
        jargs


jm_isOn_0 : JR.Method
jm_isOn_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "on") ])
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

