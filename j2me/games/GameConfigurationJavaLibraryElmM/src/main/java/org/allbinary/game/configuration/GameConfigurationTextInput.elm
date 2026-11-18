module Org.Allbinary.Game.Configuration.GameConfigurationTextInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameConfigurationTextInput"


jchain : List String
jchain =
    [ "GameConfigurationTextInput" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "label", JR.defaultOf "" ), ( "text", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_1", jm_update_1 )
        , ( "setText_1", jm_setText_1 )
        , ( "getText_0", jm_getText_0 )
        , ( "setLabel_1", jm_setLabel_1 )
        , ( "getLabel_0", jm_getLabel_0 )
        , ( "getHashtable_0", jm_getHashtable_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameConfigurationTextInput"
        [ ( "jm_update_1", jm_update_1 ), ( "jm_setText_1", jm_setText_1 ), ( "jm_getText_0", jm_getText_0 ), ( "jm_setLabel_1", jm_setLabel_1 ), ( "jm_getLabel_0", jm_getLabel_0 ), ( "jm_getHashtable_0", jm_getHashtable_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_hashtable", jstatic_hashtable ), ( "jstatic_SIMULATOR_IP", jstatic_SIMULATOR_IP ), ( "jstatic_SIMULATOR_PORT", jstatic_SIMULATOR_PORT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_hashtable : JR.M
jstatic_hashtable s =
    JR.static "GameConfigurationTextInput" jclinit "hashtable"
        (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])
        s


jstatic_SIMULATOR_IP : JR.M
jstatic_SIMULATOR_IP s =
    JR.static "GameConfigurationTextInput" jclinit "SIMULATOR_IP"
        (JR.new jnew_2 [ (JR.str "IP: "), (JR.str "192.168.1.3") ])
        s


jstatic_SIMULATOR_PORT : JR.M
jstatic_SIMULATOR_PORT s =
    JR.static "GameConfigurationTextInput" jclinit "SIMULATOR_PORT"
        (JR.new jnew_2 [ (JR.str "Port: "), (JR.str "8010") ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "label", "" ), ( "text", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "label" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "text" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.local "text") ]), 
                    JR.exec (JR.invoke "setLabel_1" JR.this [ (JR.local "label") ]), 
                    JR.exec (JR.invoke "put_2" jstatic_hashtable [ (JR.invoke "getLabel_0" JR.this []), JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "textField", "" ) ] ""
        (JR.run [ 
                    JR.declare "anyType" "" (JR.invoke "getLabel_0" (JR.local "textField") []), 
                    JR.declare "gameConfigurationTextInput" "" (JR.invoke "get_1" jstatic_hashtable [ (JR.local "anyType") ]), 
                    JR.exec (JR.invoke "setText_1" (JR.local "gameConfigurationTextInput") [ (JR.invoke "getString_0" (JR.local "textField") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setText_1 : JR.Method
jm_setText_1 jheap jthis jargs =
    JR.method [ ( "text", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "text" "" JR.this (JR.local "text")) ])
        (jregister jheap)
        jthis
        jargs


jm_getText_0 : JR.Method
jm_getText_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "text") ])
        (jregister jheap)
        jthis
        jargs


jm_setLabel_1 : JR.Method
jm_setLabel_1 jheap jthis jargs =
    JR.method [ ( "label", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "label" "" JR.this (JR.local "label")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLabel_0 : JR.Method
jm_getLabel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "label") ])
        (jregister jheap)
        jthis
        jargs


jm_getHashtable_0 : JR.Method
jm_getHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_hashtable ])
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

