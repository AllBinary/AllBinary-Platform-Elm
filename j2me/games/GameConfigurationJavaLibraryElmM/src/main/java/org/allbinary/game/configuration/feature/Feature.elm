module Org.Allbinary.Game.Configuration.Feature.Feature exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Event.ChangedGameFeatureListener as ChangedGameFeatureListener
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "Feature"


jchain : List String
jchain =
    [ "Feature" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "add_2", jm_add_2 )
        , ( "toString_0", jm_toString_0 )
        , ( "getName_0", jm_getName_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Feature"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_add_2", jm_add_2 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_hashtable", jstatic_hashtable ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_hashtable : JR.M
jstatic_hashtable s =
    JR.static "Feature" jclinit "hashtable"
        (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.callStatic jm_add_2 [ (JR.local "name"), JR.this ]), 
                    JR.exec (JR.invoke "add_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "get_1" jstatic_hashtable [ (JR.local "name") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_2 : JR.Method
jm_add_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "put_2" jstatic_hashtable [ (JR.local "name"), (JR.local "gameFeature") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" JR.this []) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

