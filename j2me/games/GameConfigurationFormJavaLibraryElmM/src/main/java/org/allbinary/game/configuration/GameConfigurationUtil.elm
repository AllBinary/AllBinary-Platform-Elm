module Org.Allbinary.Game.Configuration.GameConfigurationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Game.Configuration.GameConfigurationSingleton as GameConfigurationSingleton
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GameConfigurationUtil"


jchain : List String
jchain =
    [ "GameConfigurationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "GAUGE_UPDATE", JR.defaultOf "" ), ( "FROM", JR.defaultOf "" ), ( "TO", JR.defaultOf "" ), ( "COMPETITION_VALUE", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "change_2", jm_change_2 )
        , ( "update_1", jm_update_1 )
        , ( "setDefault_1", jm_setDefault_1 )
        , ( "updateChallange_2", jm_updateChallange_2 )
        , ( "updateCompetitionValue_0", jm_updateCompetitionValue_0 )
        , ( "getCompetitionValue_0", jm_getCompetitionValue_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameConfigurationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_change_2", jm_change_2 ), ( "jm_update_1", jm_update_1 ), ( "jm_setDefault_1", jm_setDefault_1 ), ( "jm_updateChallange_2", jm_updateChallange_2 ), ( "jm_updateCompetitionValue_0", jm_updateCompetitionValue_0 ), ( "jm_getCompetitionValue_0", jm_getCompetitionValue_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameConfigurationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "GAUGE_UPDATE" "" JR.this (JR.str "Gauge Update: ")),
                JR.exec (JR.setField "FROM" "" JR.this (JR.str " from: ")),
                JR.exec (JR.setField "TO" "" JR.this (JR.str " to: ")),
                JR.exec (JR.setField "COMPETITION_VALUE" "I" JR.this (JR.int 1)),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_change_2 : JR.Method
jm_change_2 jheap jthis jargs =
    JR.method [ ( "gameOptionsForm", "" ), ( "gauge", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "update_1" JR.this [ (JR.local "gauge") ]), 
                    JR.declare "gameConfigurationSingleton" "" (JR.callStatic GameConfigurationSingleton.jm_getInstance_0 []), 
                    JR.declare "gameConfiguration" "" (JR.invoke "getInstanceByName_1" (JR.local "gameConfigurationSingleton") [ (JR.invoke "getLabel_0" (JR.local "gauge") []) ]), 
                    JR.exec (JR.invoke "updateChallange_2" JR.this [ (JR.local "gameOptionsForm"), (JR.local "gameConfiguration") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "gauge", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameConfigurationSingleton" "" (JR.callStatic GameConfigurationSingleton.jm_getInstance_0 []), 
                    JR.declare "gameConfiguration" "" (JR.invoke "getInstanceByName_1" (JR.local "gameConfigurationSingleton") [ (JR.invoke "getLabel_0" (JR.local "gauge") []) ]), 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.declare "value" "" (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.plus (JR.invoke "getValue_0" (JR.local "gauge") []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])) ]), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "GAUGE_UPDATE") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.local "gameConfiguration") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "FROM") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.local "gameConfiguration") []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "TO") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.local "value") [])) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.local "gameConfiguration") [ (JR.local "value") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setDefault_1 : JR.Method
jm_setDefault_1 jheap jthis jargs =
    JR.method [ ( "gauge", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameConfigurationSingleton" "" (JR.callStatic GameConfigurationSingleton.jm_getInstance_0 []), 
                    JR.declare "gameConfiguration" "" (JR.invoke "getInstanceByName_1" (JR.local "gameConfigurationSingleton") [ (JR.invoke "getLabel_0" (JR.local "gauge") []) ]), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Gauge Default: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.local "gameConfiguration") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "TO") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getDefaultValue_0" (JR.local "gameConfiguration") []) [])) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "setDefault") ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.local "gauge") [ (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getDefaultValue_0" (JR.local "gameConfiguration") []) []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])) ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.local "gameConfiguration") [ (JR.invoke "getDefaultValue_0" (JR.local "gameConfiguration") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateChallange_2 : JR.Method
jm_updateChallange_2 jheap jthis jargs =
    JR.method [ ( "gameOptionsForm", "" ), ( "gameConfiguration", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameConfigurationSingleton" "" (JR.callStatic GameConfigurationSingleton.jm_getInstance_0 []), 
                    JR.declare "gameConfigurationCentral" "" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "gameConfiguration") (JR.field "CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral"))) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "updateChallange") ]), 
                        JR.exec (JR.invoke "setValue_1" (JR.field "COLLIDE_DAMAGE" (JR.local "gameConfigurationCentral")) [ (JR.invoke "getValue_0" (JR.local "gameConfiguration") []) ]), 
                        JR.exec (JR.invoke "setValue_1" (JR.field "ATTACK_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) [ (JR.invoke "getValue_0" (JR.local "gameConfiguration") []) ]), 
                        JR.exec (JR.invoke "setValue_1" (JR.field "DURABILITY_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) [ (JR.invoke "getValue_0" (JR.local "gameConfiguration") []) ]), 
                        JR.exec (JR.invoke "setValue_1" (JR.field "SPEED_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) [ (JR.invoke "getValue_0" (JR.local "gameConfiguration") []) ]), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "gameOptionsForm") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70194 -> (JR.setLocal "index" "I" (JR.lit jwN70194))) JR.increment) ]) (JR.run [ 
                            JR.declare "item" "" (JR.invoke "get_1" (JR.local "gameOptionsForm") [ (JR.local "index") ]), 
                            JR.ifElse (JR.instanceOf "GameConfigurationGauge" (JR.local "item")) (JR.run [ 
                                JR.declare "gauge" "" (JR.local "item"), 
                                JR.declare "name" "" (JR.invoke "getLabel_0" (JR.local "item") []), 
                                JR.declare "nextGameConfiguration" "" (JR.invoke "getInstanceByName_1" (JR.local "gameConfigurationSingleton") [ (JR.local "name") ]), 
                                JR.ifElse (JR.map2 JR.equals (JR.local "nextGameConfiguration") (JR.field "COLLIDE_DAMAGE" (JR.local "gameConfigurationCentral"))) (JR.run [ 
                                    JR.exec (JR.invoke "setValue_1" (JR.local "gauge") [ (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "COLLIDE_DAMAGE" (JR.local "gameConfigurationCentral")) []) []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])) ]) ]) (JR.run [ 
                                JR.ifElse (JR.map2 JR.equals (JR.local "nextGameConfiguration") (JR.field "DURABILITY_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral"))) (JR.run [ 
                                    JR.exec (JR.invoke "setValue_1" (JR.local "gauge") [ (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "DURABILITY_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) []) []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])) ]) ]) (JR.run [ 
                                JR.ifElse (JR.map2 JR.equals (JR.local "nextGameConfiguration") (JR.field "ATTACK_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral"))) (JR.run [ 
                                    JR.exec (JR.invoke "setValue_1" (JR.local "gauge") [ (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "ATTACK_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) []) []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])) ]) ]) (JR.run [ 
                                JR.ifElse (JR.map2 JR.equals (JR.local "nextGameConfiguration") (JR.field "SPEED_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral"))) (JR.run [ 
                                    JR.exec (JR.invoke "setValue_1" (JR.local "gauge") [ (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "SPEED_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) []) []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])) ]) ]) identity ]) ]) ]) ]) identity ]) ] ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateCompetitionValue_0 : JR.Method
jm_updateCompetitionValue_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "updateCompetitionValue") ]), 
                    JR.declare "gameConfigurationCentral" "" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []), 
                    JR.exec (JR.setField "COMPETITION_VALUE" "I" JR.this (JR.plus (JR.plus (JR.plus (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "COLLIDE_DAMAGE" (JR.local "gameConfigurationCentral")) []) []) (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "ATTACK_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) []) [])) (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "DURABILITY_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) []) [])) (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "SPEED_CHALLENGE_LEVEL" (JR.local "gameConfigurationCentral")) []) []))), 
                    JR.exec (JR.setField "COMPETITION_VALUE" "I" JR.this ((JR.map2 JR.shr (JR.thisField "COMPETITION_VALUE") (JR.int 2)))) ])
        (jregister jheap)
        jthis
        jargs


jm_getCompetitionValue_0 : JR.Method
jm_getCompetitionValue_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "COMPETITION_VALUE") ])
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

