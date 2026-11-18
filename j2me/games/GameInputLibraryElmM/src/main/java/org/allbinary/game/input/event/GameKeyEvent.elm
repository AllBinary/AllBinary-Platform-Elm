module Org.Allbinary.Game.Input.Event.GameKeyEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GameKeyEvent"


jchain : List String
jchain =
    [ "GameKeyEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "sourceId", JR.defaultOf "I" ), ( "repeated", JR.defaultOf "Z" ), ( "key", JR.defaultOf "I" ), ( "gameActionKey", JR.defaultOf "I" ), ( "originalKey", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createEvent_3", jm_createEvent_3 )
        , ( "init_1", jm_init_1 )
        , ( "setRepeatEvents_1", jm_setRepeatEvents_1 )
        , ( "hasRepeatEvents_0", jm_hasRepeatEvents_0 )
        , ( "getKey_0", jm_getKey_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "getOriginalKey_0", jm_getOriginalKey_0 )
        , ( "setOriginalKey_1", jm_setOriginalKey_1 )
        , ( "getGameActionKey_0", jm_getGameActionKey_0 )
        , ( "setGameActionKey_1", jm_setGameActionKey_1 )
        , ( "getSourceId_0", jm_getSourceId_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyEvent"
        [ ( "jm_createEvent_3", jm_createEvent_3 ), ( "jm_init_1", jm_init_1 ), ( "jm_setRepeatEvents_1", jm_setRepeatEvents_1 ), ( "jm_hasRepeatEvents_0", jm_hasRepeatEvents_0 ), ( "jm_getKey_0", jm_getKey_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getOriginalKey_0", jm_getOriginalKey_0 ), ( "jm_setOriginalKey_1", jm_setOriginalKey_1 ), ( "jm_getGameActionKey_0", jm_getGameActionKey_0 ), ( "jm_setGameActionKey_1", jm_setGameActionKey_1 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        [ ( "jstatic_NONE", jstatic_NONE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NONE : JR.M
jstatic_NONE s =
    JR.static "GameKeyEvent" jclinit "NONE"
        (JR.new jnew_6 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)), (JR.bool False) ])
        s


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "sourceId", "I" ), ( "originalKey", "I" ), ( "gameActionKey", "I" ), ( "key", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "anyType") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "sourceId" "I" JR.this (JR.local "sourceId")), 
                    JR.exec (JR.invoke "setOriginalKey_1" JR.this [ (JR.local "originalKey") ]), 
                    JR.exec (JR.setField "key" "I" JR.this (JR.local "key")), 
                    JR.exec (JR.invoke "setGameActionKey_1" JR.this [ (JR.local "gameActionKey") ]), 
                    JR.exec (JR.invoke "setRepeatEvents_1" JR.this [ (JR.local "repeated") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_createEvent_3 : JR.Method
jm_createEvent_3 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "sourceId", "I" ), ( "key", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_6 [ (JR.local "anyType"), (JR.local "sourceId"), (JR.int 0), (JR.int 0), (JR.local "key"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setSource_1" JR.this [ (JR.local "anyType") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setRepeatEvents_1 : JR.Method
jm_setRepeatEvents_1 jheap jthis jargs =
    JR.method [ ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "repeated" "Z" JR.this (JR.local "repeated")) ])
        (jregister jheap)
        jthis
        jargs


jm_hasRepeatEvents_0 : JR.Method
jm_hasRepeatEvents_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "repeated") ])
        (jregister jheap)
        jthis
        jargs


jm_getKey_0 : JR.Method
jm_getKey_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "key") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "\nKey: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getKey_0" JR.this []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getOriginalKey_0 : JR.Method
jm_getOriginalKey_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "originalKey") ])
        (jregister jheap)
        jthis
        jargs


jm_setOriginalKey_1 : JR.Method
jm_setOriginalKey_1 jheap jthis jargs =
    JR.method [ ( "originalKey", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "originalKey" "I" JR.this (JR.local "originalKey")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameActionKey_0 : JR.Method
jm_getGameActionKey_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "gameActionKey") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameActionKey_1 : JR.Method
jm_setGameActionKey_1 jheap jthis jargs =
    JR.method [ ( "gameActionKey", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameActionKey" "I" JR.this (JR.local "gameActionKey")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "sourceId") ])
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

