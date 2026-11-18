module Org.Allbinary.Game.Configuration.GameConfigurationCentral exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.GameConfiguration as GameConfiguration
import Org.Allbinary.Game.Configuration.Persistance.GameConfigurationPersistanceSingleton as GameConfigurationPersistanceSingleton
import JInteger
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GameConfigurationCentral"


jchain : List String
jchain =
    [ "GameConfigurationCentral" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "SCALE", JR.defaultOf "" ), ( "ORIENTATION", JR.defaultOf "" ), ( "SENSOR_UPDATE_RATE", JR.defaultOf "" ), ( "VIBRATION", JR.defaultOf "" ), ( "CHALLENGE_LEVEL", JR.defaultOf "" ), ( "COLLIDE_DAMAGE", JR.defaultOf "" ), ( "DURABILITY_CHALLENGE_LEVEL", JR.defaultOf "" ), ( "SPEED_CHALLENGE_LEVEL", JR.defaultOf "" ), ( "ATTACK_CHALLENGE_LEVEL", JR.defaultOf "" ), ( "CONTROL_LEVEL", JR.defaultOf "" ), ( "PLAYER_INPUT_WAIT", JR.defaultOf "" ), ( "SPEED", JR.defaultOf "" ), ( "SOUND_VOLUME", JR.defaultOf "" ), ( "MAX_GAME_OBJECTS", JR.defaultOf "" ), ( "MAX_LAYERS", JR.defaultOf "" ), ( "gameControlFidelity", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "load_1", jm_load_1 )
        , ( "setGameControlFidelity_1", jm_setGameControlFidelity_1 )
        , ( "getGameControlFidelity_0", jm_getGameControlFidelity_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameConfigurationCentral"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_load_1", jm_load_1 ), ( "jm_setGameControlFidelity_1", jm_setGameControlFidelity_1 ), ( "jm_getGameControlFidelity_0", jm_getGameControlFidelity_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "GameConfigurationCentral" jclinit "SINGLETON"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameControlFidelity" "I" JR.this (JR.int 36)),
                identity,
                (JR.run [ 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.exec (JR.setField "SCALE" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Scale"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 2) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 2) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]) ])), 
                    JR.exec (JR.setField "ORIENTATION" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Orientation"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 8) ]) ])), 
                    JR.exec (JR.setField "SENSOR_UPDATE_RATE" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Sensor Update Rate"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]) ])), 
                    JR.exec (JR.setField "VIBRATION" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Vibration"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]) ])), 
                    JR.exec (JR.setField "CHALLENGE_LEVEL" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Global Challenge Level"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "COLLIDE_DAMAGE" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Collide Damage Challenge Level"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "DURABILITY_CHALLENGE_LEVEL" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Enemy Durability Challenge Level"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "SPEED_CHALLENGE_LEVEL" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Enemy Speed Challenge Level"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "ATTACK_CHALLENGE_LEVEL" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Enemy Attack Challenge Level"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 3) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "CONTROL_LEVEL" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Control Fidelity"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 5) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "PLAYER_INPUT_WAIT" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Input Wait"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 5) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "SPEED" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Game Speed (Device Specific)"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 5) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "SOUND_VOLUME" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Sound Volume"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 6) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]) ])), 
                    JR.exec (JR.setField "MAX_GAME_OBJECTS" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Max Game Objects"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 20) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 50) ]) ])), 
                    JR.exec (JR.setField "MAX_LAYERS" "" JR.this (JR.new GameConfiguration.jnew_4 [ (JR.str "Max Layers"), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 20) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 1) ]), (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 50) ]) ])) ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_SINGLETON (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "GameConfigurationCentral.SINGLETON" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_load_1 : JR.Method
jm_load_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                        JR.declare "keyValuePersistance" "" (JR.callStatic GameConfigurationPersistanceSingleton.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "clear_0" (JR.local "keyValuePersistance") []), 
                        JR.exec (JR.invoke "loadAll_1" (JR.local "keyValuePersistance") [ (JR.local "abeClientInformation") ]), 
                        JR.declare "list" "" (JR.invoke "getIds_0" (JR.local "keyValuePersistance") []), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.run [ 
                            JR.declare "hashtable" "" (JR.invoke "get_1" (JR.local "keyValuePersistance") [ (JR.int 0) ]), 
                            JR.declare "anyType" "" (JR.invoke "getName_0" (JR.thisField "SCALE") []), 
                            JR.declare "value" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "anyType") ]), 
                            JR.exec (JR.invoke "setValue_1" (JR.thisField "SCALE") [ (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.invoke "intValue_0" (JR.callStatic JInteger.jm_valueOf_1 [ (JR.local "value") ]) []) ]) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "No Game Configuration To Load"), JR.this, (JR.field "LOAD" (JR.local "commonStrings")) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "LOAD" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_setGameControlFidelity_1 : JR.Method
jm_setGameControlFidelity_1 jheap jthis jargs =
    JR.method [ ( "gameControlFidelity", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameControlFidelity" "I" JR.this (JR.local "gameControlFidelity")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameControlFidelity_0 : JR.Method
jm_getGameControlFidelity_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "gameControlFidelity") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "SCALE") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "SCALE") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "ORIENTATION") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "ORIENTATION") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "SENSOR_UPDATE_RATE") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "SENSOR_UPDATE_RATE") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "VIBRATION") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "VIBRATION") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "CHALLENGE_LEVEL") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "CHALLENGE_LEVEL") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "COLLIDE_DAMAGE") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "COLLIDE_DAMAGE") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "DURABILITY_CHALLENGE_LEVEL") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "DURABILITY_CHALLENGE_LEVEL") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "SPEED_CHALLENGE_LEVEL") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "SPEED_CHALLENGE_LEVEL") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "ATTACK_CHALLENGE_LEVEL") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "ATTACK_CHALLENGE_LEVEL") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "CONTROL_LEVEL") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "CONTROL_LEVEL") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "SPEED") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "SPEED") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "MAX_GAME_OBJECTS") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "MAX_GAME_OBJECTS") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.thisField "MAX_LAYERS") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.thisField "MAX_LAYERS") []) [])) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

