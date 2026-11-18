module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Time.HudTimer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.time
-}

import JR
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Logic.Math.PrimitiveLongSingleton as PrimitiveLongSingleton
import Org.Allbinary.Logic.Math.PrimitiveLongUtil as PrimitiveLongUtil


jclass : String
jclass =
    "HudTimer"


jchain : List String
jchain =
    [ "HudTimer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "startTime", JR.defaultOf "J" ), ( "hundredthTime", JR.defaultOf "J" ), ( "maxTime", JR.defaultOf "J" ), ( "modifier", JR.defaultOf "J" ), ( "hundrethsString", JR.defaultOf "" ), ( "totalDigits", JR.defaultOf "I" ), ( "primitiveLongUtil", JR.defaultOf "" ), ( "MAX", JR.defaultOf "" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "start_0", jm_start_0 )
        , ( "get_0", jm_get_0 )
        , ( "update_0", jm_update_0 )
        , ( "reduce_1", jm_reduce_1 )
        , ( "add_1", jm_add_1 )
        , ( "getTimeChars_0", jm_getTimeChars_0 )
        , ( "getCurrentTotalDigits_0", jm_getCurrentTotalDigits_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HudTimer"
        [ ( "jm_start_0", jm_start_0 ), ( "jm_get_0", jm_get_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_reduce_1", jm_reduce_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_getTimeChars_0", jm_getTimeChars_0 ), ( "jm_getCurrentTotalDigits_0", jm_getCurrentTotalDigits_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "maxTime", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "startTime" "J" JR.this (JR.cast "J" (JR.map JR.neg (JR.int 1)))),
                JR.exec (JR.setField "hundrethsString" "" JR.this (JR.field "ZERO" (JR.callStatic PrimitiveLongSingleton.jm_getInstance_0 []))),
                JR.exec (JR.setField "totalDigits" "I" JR.this (JR.int 1)),
                JR.exec (JR.setField "MAX" "" JR.this (JR.arrayOf "C" [ (JR.char 76), (JR.char 79), (JR.char 76) ])),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "primitiveLongUtil" "" JR.this (JR.callStatic PrimitiveLongUtil.jm_createPowerOfTen_1 [ (JR.local "maxTime") ])), 
                    JR.exec (JR.setField "maxTime" "J" JR.this (JR.cast "J" (JR.local "maxTime"))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "hundredthTime" "J" JR.this (JR.int 0)), 
                    JR.exec (JR.setField "startTime" "J" JR.this (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper"))) ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "hundredthTime") ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "lastLowerTime" "J" (JR.thisField "hundredthTime"), 
                    JR.declare "currentTime" "J" ((JR.map2 JR.sub ((JR.plus (JR.thisField "modifier") (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")))) (JR.thisField "startTime"))), 
                    JR.ifElse (JR.map2 JR.less (JR.local "currentTime") (JR.long 0)) (JR.run [ 
                        JR.exec (JR.setLocal "currentTime" "J" (JR.int 0)) ]) identity, 
                    JR.exec (JR.setField "hundredthTime" "J" JR.this (JR.map2 JR.div (JR.local "currentTime") (JR.long 100))), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.thisField "hundredthTime") (JR.thisField "maxTime")) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.thisField "startTime") (JR.long 0)) (JR.run [ 
                            JR.exec (JR.setField "hundrethsString" "" JR.this (JR.thisField "MAX")) ]) identity ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "lastLowerTime") (JR.thisField "hundredthTime")) (JR.run [ 
                        JR.exec (JR.setField "hundrethsString" "" JR.this (JR.invoke "getCharArray_1" (JR.thisField "primitiveLongUtil") [ (JR.cast "I" (JR.thisField "hundredthTime")) ])), 
                        JR.exec (JR.setField "totalDigits" "I" JR.this (JR.invoke "getCurrentTotalDigits_0" (JR.thisField "primitiveLongUtil") [])) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_reduce_1 : JR.Method
jm_reduce_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "modifier" "J" JR.this (JR.map2 JR.sub (JR.thisField "modifier") (JR.local "value"))) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "modifier" "J" JR.this (JR.map2 JR.add (JR.thisField "modifier") (JR.local "value"))) ])
        (jregister jheap)
        jthis
        jargs


jm_getTimeChars_0 : JR.Method
jm_getTimeChars_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hundrethsString") ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentTotalDigits_0 : JR.Method
jm_getCurrentTotalDigits_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "totalDigits") ])
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

