module Org.Allbinary.Game.Score.HighScore exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import JByteArrayOutputStream
import JDataOutputStream
import JLong
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "HighScore"


jchain : List String
jchain =
    [ "HighScore" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "id", JR.defaultOf "I" ), ( "name", JR.defaultOf "" ), ( "gameInfo", JR.defaultOf "" ), ( "score", JR.defaultOf "J" ), ( "scoreString", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getId_0", jm_getId_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getScore_0", jm_getScore_0 )
        , ( "getAsBytes_0", jm_getAsBytes_0 )
        , ( "getGameInfo_0", jm_getGameInfo_0 )
        , ( "getScoreString_0", jm_getScoreString_0 )
        , ( "setName_1", jm_setName_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScore"
        [ ( "jm_getId_0", jm_getId_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getScore_0", jm_getScore_0 ), ( "jm_getAsBytes_0", jm_getAsBytes_0 ), ( "jm_getGameInfo_0", jm_getGameInfo_0 ), ( "jm_getScoreString_0", jm_getScoreString_0 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "id", "I" ), ( "name", "" ), ( "gameInfo", "" ), ( "score", "J" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "id" "I" JR.this (JR.local "id")), 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "gameInfo" "" JR.this (JR.local "gameInfo")), 
                    JR.exec (JR.setField "score" "J" JR.this (JR.local "score")), 
                    JR.exec (JR.setField "scoreString" "" JR.this (JR.callStatic JLong.jm_toString_1 [ (JR.thisField "score") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getScore_0 : JR.Method
jm_getScore_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "score") ])
        (jregister jheap)
        jthis
        jargs


jm_getAsBytes_0 : JR.Method
jm_getAsBytes_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "byteArrayOutputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                    JR.declare "outputStream" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "byteArrayOutputStream") ]), 
                    JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "writeLong_1" (JR.local "outputStream") [ (JR.invoke "getScore_0" JR.this []) ]), 
                    JR.return (JR.invoke "toByteArray_0" (JR.local "byteArrayOutputStream") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameInfo_0 : JR.Method
jm_getGameInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_getScoreString_0 : JR.Method
jm_getScoreString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "scoreString") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "name") ]) [ (JR.field "COLON" (JR.local "commonSeps")) ]) [ (JR.thisField "score") ]) [ (JR.field "FORWARD_SLASH" (JR.local "commonSeps")) ]) [ (JR.thisField "scoreString") ]) []) ])
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

