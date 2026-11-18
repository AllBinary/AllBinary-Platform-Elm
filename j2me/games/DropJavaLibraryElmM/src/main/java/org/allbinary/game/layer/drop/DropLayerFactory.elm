module Org.Allbinary.Game.Layer.Drop.DropLayerFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.drop
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil


jclass : String
jclass =
    "DropLayerFactory"


jchain : List String
jchain =
    [ "DropLayerFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ), ( "basicArrayListUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "clear_0", jm_clear_0 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "getRandomInstance_0", jm_getRandomInstance_0 )
        , ( "add_1", jm_add_1 )
        , ( "getList_0", jm_getList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DropLayerFactory"
        [ ( "jm_clear_0", jm_clear_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_getRandomInstance_0", jm_getRandomInstance_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_DROP_LAYER_FACTORY", jstatic_DROP_LAYER_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_DROP_LAYER_FACTORY : JR.M
jstatic_DROP_LAYER_FACTORY s =
    JR.static "DropLayerFactory" jclinit "DROP_LAYER_FACTORY"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "basicArrayListUtil" "" JR.this (JR.callStatic BasicArrayListUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_DROP_LAYER_FACTORY ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getRandomInstance_0 : JR.Method
jm_getRandomInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getRandom_1" (JR.thisField "basicArrayListUtil") [ (JR.thisField "list") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "layerInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "layerInterfaceFactoryInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
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

