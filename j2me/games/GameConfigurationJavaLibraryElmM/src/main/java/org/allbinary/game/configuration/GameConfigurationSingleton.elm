module Org.Allbinary.Game.Configuration.GameConfigurationSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "GameConfigurationSingleton"


jchain : List String
jchain =
    [ "GameConfigurationSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ), ( "hashtable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceByName_1", jm_getInstanceByName_1 )
        , ( "getOptionsBasicArrayList_0", jm_getOptionsBasicArrayList_0 )
        , ( "add_1", jm_add_1 )
        , ( "getHashtable_0", jm_getHashtable_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameConfigurationSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceByName_1", jm_getInstanceByName_1 ), ( "jm_getOptionsBasicArrayList_0", jm_getOptionsBasicArrayList_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_getHashtable_0", jm_getHashtable_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "GameConfigurationSingleton" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])), 
                    JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])) ]) ])
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceByName_1 : JR.Method
jm_getInstanceByName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "get_1" (JR.thisField "hashtable") [ (JR.local "name") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getOptionsBasicArrayList_0 : JR.Method
jm_getOptionsBasicArrayList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "gameConfiguration", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "gameConfiguration") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getHashtable_0 : JR.Method
jm_getHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hashtable") ])
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

