module Org.Allbinary.Game.Intermission exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Game.IntermissionInterface as IntermissionInterface
import Org.Allbinary.Game.NullIntermissionEnableListener as NullIntermissionEnableListener
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "Intermission"


jchain : List String
jchain =
    [ "Intermission" ]
        ++ IntermissionInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "enabled", JR.defaultOf "Z" ), ( "timeElapsedHelper", JR.defaultOf "" ), ( "intermissionEnableListener", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setListener_1", jm_setListener_1 )
        , ( "getTimeDelayHelper_0", jm_getTimeDelayHelper_0 )
        , ( "setEnabled_1", jm_setEnabled_1 )
        , ( "isEnabled_0", jm_isEnabled_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Intermission"
        [ ( "jm_setListener_1", jm_setListener_1 ), ( "jm_getTimeDelayHelper_0", jm_getTimeDelayHelper_0 ), ( "jm_setEnabled_1", jm_setEnabled_1 ), ( "jm_isEnabled_0", jm_isEnabled_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "timeElapsedHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "intermissionEnableListener" "" JR.this (JR.callStatic NullIntermissionEnableListener.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setListener_1 : JR.Method
jm_setListener_1 jheap jthis jargs =
    JR.method [ ( "enableListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "intermissionEnableListener" "" JR.this (JR.local "enableListener")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTimeDelayHelper_0 : JR.Method
jm_getTimeDelayHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "timeElapsedHelper") ])
        (jregister jheap)
        jthis
        jargs


jm_setEnabled_1 : JR.Method
jm_setEnabled_1 jheap jthis jargs =
    JR.method [ ( "enabled", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "enabled" "Z" JR.this (JR.local "enabled")), 
                    JR.ifElse (JR.invoke "isEnabled_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "setStartTimeTNT_0" (JR.invoke "getTimeDelayHelper_0" JR.this []) []) ]) identity, 
                    JR.exec (JR.invoke "notifyIntermission_1" (JR.thisField "intermissionEnableListener") [ (JR.local "enabled") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isEnabled_0 : JR.Method
jm_isEnabled_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "enabled") ])
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

