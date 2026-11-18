module Org.Allbinary.Game.Configuration.Event.ChangedGameFeatureListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.event
-}

import JR
import Org.Allbinary.Game.Configuration.Event.BaseChangedGameFeatureListener as BaseChangedGameFeatureListener


jclass : String
jclass =
    "ChangedGameFeatureListener"


jchain : List String
jchain =
    [ "ChangedGameFeatureListener" ]
        ++ BaseChangedGameFeatureListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseChangedGameFeatureListener.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isChangedGameConfiguration_1", jm_isChangedGameConfiguration_1 ) ]
        BaseChangedGameFeatureListener.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ChangedGameFeatureListener"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isChangedGameConfiguration_1", jm_isChangedGameConfiguration_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_gameFeatureListener", jstatic_gameFeatureListener ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_gameFeatureListener : JR.M
jstatic_gameFeatureListener s =
    JR.static "ChangedGameFeatureListener" jclinit "gameFeatureListener"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseChangedGameFeatureListener.jinit_0 JR.this []),
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
                    JR.return jstatic_gameFeatureListener ])
        (jregister jheap)
        jthis
        jargs


jm_isChangedGameConfiguration_1 : JR.Method
jm_isChangedGameConfiguration_1 jheap jthis jargs =
    JR.method [ ( "gameConfiguration", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "gameConfiguration") ]) ])
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

