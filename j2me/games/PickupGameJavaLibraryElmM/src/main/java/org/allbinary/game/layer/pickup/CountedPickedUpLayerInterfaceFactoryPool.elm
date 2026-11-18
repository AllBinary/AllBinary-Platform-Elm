module Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactoryPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "CountedPickedUpLayerInterfaceFactoryPool"


jchain : List String
jchain =
    [ "CountedPickedUpLayerInterfaceFactoryPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getList_0", jm_getList_0 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CountedPickedUpLayerInterfaceFactoryPool"
        [ ( "jm_getList_0", jm_getList_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "CountedPickedUpLayerInterfaceFactoryPool" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "CountedPickedUpLayerInterfaceFactoryPool.SINGLETON" "" (JR.new jnew_0 [])) ])
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

