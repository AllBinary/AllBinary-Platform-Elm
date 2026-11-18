module Org.Allbinary.Game.GameInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.GameInfoData as GameInfoData
import Org.Allbinary.Game.GameMode as GameMode
import Org.Allbinary.Game.GameTypeFactory as GameTypeFactory
import JInteger
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.PlayerTypesFactory as PlayerTypesFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameInfo"


jchain : List String
jchain =
    [ "GameInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "gameInfoData", JR.defaultOf "" ), ( "gameType", JR.defaultOf "" ), ( "gameMode", JR.defaultOf "" ), ( "playerType", JR.defaultOf "" ), ( "highestLevel", JR.defaultOf "I" ), ( "currentLevel", JR.defaultOf "I" ), ( "NEW_LEVEL", JR.defaultOf "" ), ( "SET_CURRENT_LEVEL", JR.defaultOf "" ), ( "NEXT_GAME_LEVEL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getGameType_0", jm_getGameType_0 )
        , ( "getGameMode_0", jm_getGameMode_0 )
        , ( "getPlayerType_0", jm_getPlayerType_0 )
        , ( "getHighestLevel_0", jm_getHighestLevel_0 )
        , ( "setHighestLevel_1", jm_setHighestLevel_1 )
        , ( "getCurrentLevel_0", jm_getCurrentLevel_0 )
        , ( "setCurrentLevel_1", jm_setCurrentLevel_1 )
        , ( "nextGameLevel_0", jm_nextGameLevel_0 )
        , ( "previousGameLevel_0", jm_previousGameLevel_0 )
        , ( "isLastLevel_0", jm_isLastLevel_0 )
        , ( "toHashtable_0", jm_toHashtable_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInfo"
        [ ( "jm_getGameType_0", jm_getGameType_0 ), ( "jm_getGameMode_0", jm_getGameMode_0 ), ( "jm_getPlayerType_0", jm_getPlayerType_0 ), ( "jm_getHighestLevel_0", jm_getHighestLevel_0 ), ( "jm_setHighestLevel_1", jm_setHighestLevel_1 ), ( "jm_getCurrentLevel_0", jm_getCurrentLevel_0 ), ( "jm_setCurrentLevel_1", jm_setCurrentLevel_1 ), ( "jm_nextGameLevel_0", jm_nextGameLevel_0 ), ( "jm_previousGameLevel_0", jm_previousGameLevel_0 ), ( "jm_isLastLevel_0", jm_isLastLevel_0 ), ( "jm_toHashtable_0", jm_toHashtable_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        [ ( "jstatic_NONE", jstatic_NONE ), ( "jstatic_LEVEL_NAME", jstatic_LEVEL_NAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NONE : JR.M
jstatic_NONE s =
    JR.static "GameInfo" jclinit "NONE"
        (JR.new jnew_5 [ (JR.field "NONE" (JR.callStatic GameTypeFactory.jm_getInstance_0 [])), GameMode.jstatic_NONE, (JR.field "PLAYER_TYPE_ONE" (JR.callStatic PlayerTypesFactory.jm_getInstance_0 [])), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)) ])
        s


jstatic_LEVEL_NAME : JR.M
jstatic_LEVEL_NAME s =
    JR.static "GameInfo" jclinit "LEVEL_NAME"
        (JR.str "LEVEL")
        s


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "gameType", "" ), ( "gameMode", "" ), ( "playerType", "" ), ( "highestLevel", "I" ), ( "currentLevel", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameInfoData" "" JR.this (JR.callStatic GameInfoData.jm_getInstance_0 [])),
                JR.exec (JR.setField "NEW_LEVEL" "" JR.this (JR.str "New Level: ")),
                JR.exec (JR.setField "SET_CURRENT_LEVEL" "" JR.this (JR.str "setCurrentLevel")),
                JR.exec (JR.setField "NEXT_GAME_LEVEL" "" JR.this (JR.str "nextGameLevel")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameType" "" JR.this (JR.local "gameType")), 
                    JR.exec (JR.setField "gameMode" "" JR.this (JR.local "gameMode")), 
                    JR.exec (JR.invoke "setHighestLevel_1" JR.this [ (JR.local "highestLevel") ]), 
                    JR.exec (JR.setField "currentLevel" "I" JR.this (JR.local "currentLevel")), 
                    JR.exec (JR.setField "playerType" "" JR.this (JR.local "playerType")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getGameType_0 : JR.Method
jm_getGameType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameType") ])
        (jregister jheap)
        jthis
        jargs


jm_getGameMode_0 : JR.Method
jm_getGameMode_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameMode") ])
        (jregister jheap)
        jthis
        jargs


jm_getPlayerType_0 : JR.Method
jm_getPlayerType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "playerType") ])
        (jregister jheap)
        jthis
        jargs


jm_getHighestLevel_0 : JR.Method
jm_getHighestLevel_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "highestLevel") ])
        (jregister jheap)
        jthis
        jargs


jm_setHighestLevel_1 : JR.Method
jm_setHighestLevel_1 jheap jthis jargs =
    JR.method [ ( "highestLevel", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "highestLevel" "I" JR.this (JR.local "highestLevel")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentLevel_0 : JR.Method
jm_getCurrentLevel_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "currentLevel") ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentLevel_1 : JR.Method
jm_setCurrentLevel_1 jheap jthis jargs =
    JR.method [ ( "currentLevel", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentLevel" "I" JR.this (JR.local "currentLevel")), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "NEW_LEVEL") ]) [ (JR.invoke "getCurrentLevel_0" JR.this []) ]) []), JR.this, (JR.thisField "SET_CURRENT_LEVEL") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextGameLevel_0 : JR.Method
jm_nextGameLevel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getCurrentLevel_0" JR.this []) (JR.invoke "getHighestLevel_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.postUpdate (JR.thisField "currentLevel") (\jwN68161 -> (JR.setField "currentLevel" "I" JR.this (JR.lit jwN68161))) JR.increment) ]) identity, 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NEXT" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "NEW_LEVEL") ]) [ (JR.invoke "getCurrentLevel_0" JR.this []) ]) []), JR.this, (JR.thisField "NEXT_GAME_LEVEL") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_previousGameLevel_0 : JR.Method
jm_previousGameLevel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getCurrentLevel_0" JR.this []) (JR.int 1)) (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "currentLevel") (\jwN68406 -> (JR.setField "currentLevel" "I" JR.this (JR.lit jwN68406))) JR.decrement) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isLastLevel_0 : JR.Method
jm_isLastLevel_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "getCurrentLevel_0" JR.this []) (JR.invoke "getHighestLevel_0" JR.this [])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toHashtable_0 : JR.Method
jm_toHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "hashtable" "" (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "GAME_TYPE" (JR.thisField "gameInfoData")), (JR.invoke "toString_0" (JR.invoke "getGameType_0" JR.this []) []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "GAME_MODE" (JR.thisField "gameInfoData")), (JR.invoke "toString_0" (JR.thisField "gameMode") []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "PLAYER_TYPE" (JR.thisField "gameInfoData")), (JR.invoke "toString_0" (JR.thisField "playerType") []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "HIGHEST_LEVEL" (JR.thisField "gameInfoData")), (JR.callStatic JInteger.jm_toString_1 [ (JR.invoke "getHighestLevel_0" JR.this []) ]) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "CURRENT_LEVEL" (JR.thisField "gameInfoData")), (JR.callStatic JInteger.jm_toString_1 [ (JR.thisField "currentLevel") ]) ]), 
                    JR.return (JR.local "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "GAME_TYPE" (JR.thisField "gameInfoData")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.invoke "getGameType_0" JR.this []) []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "GAME_MODE" (JR.thisField "gameInfoData")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "gameMode") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "PLAYER_TYPE" (JR.thisField "gameInfoData")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.thisField "playerType") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HIGHEST_LEVEL" (JR.thisField "gameInfoData")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getHighestLevel_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "CURRENT_LEVEL" (JR.thisField "gameInfoData")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUALS" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "currentLevel") ]), 
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

