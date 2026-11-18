module Org.Allbinary.Game.Layer.Resources.OnDemandResources exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.resources
-}

import JR
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "OnDemandResources"


jchain : List String
jchain =
    [ "OnDemandResources" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "waitFor_0", jm_waitFor_0 )
        , ( "init_0", jm_init_0 )
        , ( "initAt_5", jm_initAt_5 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OnDemandResources"
        [ ( "jm_waitFor_0", jm_waitFor_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_initAt_5", jm_initAt_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_ON_DEMAND_RESOURCES", jstatic_NULL_ON_DEMAND_RESOURCES ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ON_DEMAND_RESOURCES : JR.M
jstatic_NULL_ON_DEMAND_RESOURCES s =
    JR.static "OnDemandResources" jclinit "NULL_ON_DEMAND_RESOURCES"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_waitFor_0 : JR.Method
jm_waitFor_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_initAt_5 : JR.Method
jm_initAt_5 jheap jthis jargs =
    JR.method [ ( "imageCache", "" ), ( "resourceAnimationInterfaceFactoryInterfaceFactory", "" ), ( "portion", "I" ), ( "loadingString", "" ), ( "index", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

