module Org.Allbinary.Game.Ag.Ai.MultiKeyPressesAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Game.Ag.Ai.KeyPressesAI as KeyPressesAI
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "MultiKeyPressesAI"


jchain : List String
jchain =
    [ "MultiKeyPressesAI" ]
        ++ KeyPressesAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    KeyPressesAI.jfields ++ [ ( "toggleTimeHelper", JR.defaultOf "" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "update_0", jm_update_0 )
        , ( "toggle_0", jm_toggle_0 )
        , ( "disable_0", jm_disable_0 )
        , ( "enable_0", jm_enable_0 ) ]
        KeyPressesAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultiKeyPressesAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_toggle_0", jm_toggle_0 ), ( "jm_disable_0", jm_disable_0 ), ( "jm_enable_0", jm_enable_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect KeyPressesAI.jinit_3 JR.this [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "toggleTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 600) ])),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "update_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameInput" "" (JR.invoke "getGameInput_0" JR.this []), 
                    JR.declare "keys" "" (JR.thisField "keys"), 
                    JR.declare "size" "I" (JR.alength (JR.local "keys")), 
                    JR.ifElse (JR.invoke "isOn_0" JR.this []) (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69336 -> (JR.setLocal "index" "I" (JR.lit jwN69336))) JR.increment) ]) (JR.run [ 
                            JR.declare "key" "I" (JR.invoke "intValue_0" (JR.aget (JR.local "keys") (JR.local "index")) []), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "key") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "gameInput") [ (JR.invoke "getInstanceForKey_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "key") ]) ]) ]) identity ]) ] ]) (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69115 -> (JR.setLocal "index" "I" (JR.lit jwN69115))) JR.increment) ]) (JR.run [ 
                            JR.declare "key" "I" (JR.invoke "intValue_0" (JR.aget (JR.local "keys") (JR.local "index")) []), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "key") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "addForRemoval_1" (JR.local "gameInput") [ (JR.invoke "getInstanceForKey_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "key") ]) ]) ]) identity ]) ] ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toggle_0 : JR.Method
jm_toggle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "toggleTimeHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]) (JR.run [ 
                        JR.exec (JR.callVia KeyPressesAI.jvtable "toggle_0" JR.this []), 
                        JR.exec (JR.invoke "update_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_disable_0 : JR.Method
jm_disable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "toggleTimeHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]) (JR.run [ 
                        JR.exec (JR.callVia KeyPressesAI.jvtable "disable_0" JR.this []), 
                        JR.exec (JR.invoke "update_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_enable_0 : JR.Method
jm_enable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "toggleTimeHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]) (JR.run [ 
                        JR.exec (JR.callVia KeyPressesAI.jvtable "enable_0" JR.this []), 
                        JR.exec (JR.invoke "update_0" JR.this []) ]) identity ])
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

