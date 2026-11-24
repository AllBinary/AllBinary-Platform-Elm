module Org.Allbinary.Game.Input.LocalPlayerInputIdFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.Analog.AnalogLocationInputFactory as AnalogLocationInputFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "LocalPlayerInputIdFactory"


jchain : List String
jchain =
    [ "LocalPlayerInputIdFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "MAX_NUMBER_OF_PLAYERS", JR.defaultOf "I" ), ( "MAX_FAST_DEVICEID", JR.defaultOf "I" ), ( "deviceIdToplayerId", JR.defaultOf "" ), ( "playerIdToDeviceId", JR.defaultOf "" ), ( "playersInPlay", JR.defaultOf "" ), ( "totalDevicesMapped", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getDeviceId_1", jm_getDeviceId_1 )
        , ( "getPlayerForDevice_1", jm_getPlayerForDevice_1 )
        , ( "getTotalDevicesInPlay_0", jm_getTotalDevicesInPlay_0 )
        , ( "isPlayerInPlay_1", jm_isPlayerInPlay_1 )
        , ( "setPlayerInPlay_1", jm_setPlayerInPlay_1 )
        , ( "setPlayerOutOfPlay_1", jm_setPlayerOutOfPlay_1 )
        , ( "getPlayersInPlay_0", jm_getPlayersInPlay_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LocalPlayerInputIdFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getDeviceId_1", jm_getDeviceId_1 ), ( "jm_getPlayerForDevice_1", jm_getPlayerForDevice_1 ), ( "jm_getTotalDevicesInPlay_0", jm_getTotalDevicesInPlay_0 ), ( "jm_isPlayerInPlay_1", jm_isPlayerInPlay_1 ), ( "jm_setPlayerInPlay_1", jm_setPlayerInPlay_1 ), ( "jm_setPlayerOutOfPlay_1", jm_setPlayerOutOfPlay_1 ), ( "jm_getPlayersInPlay_0", jm_getPlayersInPlay_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LocalPlayerInputIdFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "MAX_NUMBER_OF_PLAYERS" "I" JR.this (JR.int 6)),
                JR.exec (JR.setField "MAX_FAST_DEVICEID" "I" JR.this (JR.int 65)),
                JR.exec (JR.setField "deviceIdToplayerId" "" JR.this (JR.newArray "I" [ (JR.thisField "MAX_FAST_DEVICEID") ])),
                JR.exec (JR.setField "playerIdToDeviceId" "" JR.this (JR.newArray "I" [ (JR.thisField "MAX_NUMBER_OF_PLAYERS") ])),
                JR.exec (JR.setField "playersInPlay" "" JR.this (JR.newArray "Z" [ (JR.thisField "MAX_NUMBER_OF_PLAYERS") ])),
                JR.exec (JR.setField "totalDevicesMapped" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "deviceIdToplayerId")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66871 -> (JR.setLocal "index" "I" (JR.lit jwN66871))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "deviceIdToplayerId") (\jaN66762 -> JR.andThen (JR.local "index") (\jiN66762 -> (JR.aset (JR.lit jaN66762) (JR.lit jiN66762) (JR.map JR.neg (JR.int 1)))))) ]) ] ]) ])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getDeviceId_1 : JR.Method
jm_getDeviceId_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "playerIdToDeviceId") (JR.local "playerInputId")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPlayerForDevice_1 : JR.Method
jm_getPlayerForDevice_1 jheap jthis jargs =
    JR.method [ ( "deviceId", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "index" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.ifElse (JR.map2 JR.less (JR.local "deviceId") (JR.thisField "MAX_FAST_DEVICEID")) (JR.run [ 
                        JR.declare "playerInputId" "I" (JR.aget (JR.thisField "deviceIdToplayerId") (JR.local "deviceId")), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "playerInputId") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.return (JR.local "playerInputId") ]) identity ]) (JR.run [ 
                        JR.run [ JR.exec (JR.setLocal "index" "I" (JR.map2 JR.sub (JR.thisField "totalDevicesMapped") (JR.int 1))), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67214 -> (JR.setLocal "index" "I" (JR.lit jwN67214))) JR.decrement) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "playerIdToDeviceId") (JR.local "index")) (JR.local "deviceId")) (JR.run [ 
                                JR.return (JR.local "index") ]) identity ]) ] ]), 
                    JR.exec (JR.setLocal "index" "I" (JR.thisField "totalDevicesMapped")), 
                    JR.ifElse (JR.map2 JR.less (JR.local "deviceId") (JR.thisField "MAX_FAST_DEVICEID")) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "deviceIdToplayerId") (\jaN67506 -> JR.andThen (JR.local "deviceId") (\jiN67506 -> (JR.aset (JR.lit jaN67506) (JR.lit jiN67506) (JR.local "index"))))) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Added DeviceId: ") ]) [ (JR.local "deviceId") ]) [ (JR.str " beyond fast Id list") ]) []), JR.this, (JR.str "getPlayerForDevice") ]) ]), 
                    JR.exec (JR.andThen (JR.thisField "playerIdToDeviceId") (\jaN67553 -> JR.andThen (JR.local "index") (\jiN67553 -> (JR.aset (JR.lit jaN67553) (JR.lit jiN67553) (JR.local "deviceId"))))), 
                    JR.exec (JR.invoke "addPlayer_1" (JR.callStatic AnalogLocationInputFactory.jm_getInstance_0 []) [ (JR.thisField "totalDevicesMapped") ]), 
                    JR.exec (JR.postUpdate (JR.thisField "totalDevicesMapped") (\jwN67635 -> (JR.setField "totalDevicesMapped" "I" JR.this (JR.lit jwN67635))) JR.increment), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Added DeviceId: ") ]) [ (JR.local "deviceId") ]) [ (JR.str " at: ") ]) [ (JR.local "index") ]) [ (JR.str " Total: ") ]) [ (JR.thisField "totalDevicesMapped") ]) []), JR.this, (JR.str "getPlayerForDevice") ]), 
                    JR.return (JR.local "index") ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalDevicesInPlay_0 : JR.Method
jm_getTotalDevicesInPlay_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "total" "I" (JR.int 0), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.thisField "totalDevicesMapped") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68026 -> (JR.setLocal "index" "I" (JR.lit jwN68026))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "playersInPlay") (JR.local "index")) (JR.bool True)) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "total") (\jwN67946 -> (JR.setLocal "total" "I" (JR.lit jwN67946))) JR.increment) ]) identity ]) ], 
                    JR.return (JR.local "total") ])
        (jregister jheap)
        jthis
        jargs


jm_isPlayerInPlay_1 : JR.Method
jm_isPlayerInPlay_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "playersInPlay") (JR.local "playerInputId")) ])
        (jregister jheap)
        jthis
        jargs


jm_setPlayerInPlay_1 : JR.Method
jm_setPlayerInPlay_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Setting PlayerInPlay with playerInputId: ") ]) [ (JR.local "playerInputId") ]) []), JR.this, (JR.str "setPlayerInPlay") ]), 
                    JR.exec (JR.andThen (JR.thisField "playersInPlay") (\jaN68246 -> JR.andThen (JR.local "playerInputId") (\jiN68246 -> (JR.aset (JR.lit jaN68246) (JR.lit jiN68246) (JR.bool True))))) ])
        (jregister jheap)
        jthis
        jargs


jm_setPlayerOutOfPlay_1 : JR.Method
jm_setPlayerOutOfPlay_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Setting PlayerOutOfPlay with playerInputId: ") ]) [ (JR.local "playerInputId") ]) []), JR.this, (JR.str "setPlayerOutOfPlay") ]), 
                    JR.exec (JR.andThen (JR.thisField "playersInPlay") (\jaN68410 -> JR.andThen (JR.local "playerInputId") (\jiN68410 -> (JR.aset (JR.lit jaN68410) (JR.lit jiN68410) (JR.bool False))))) ])
        (jregister jheap)
        jthis
        jargs


jm_getPlayersInPlay_0 : JR.Method
jm_getPlayersInPlay_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "playersInPlay") ])
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

