module Org.Allbinary.Layer.AllBinaryLayerFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Layer.AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterface
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.View.ViewPosition as ViewPosition


jclass : String
jclass =
    "AllBinaryLayerFactory"


jchain : List String
jchain =
    [ "AllBinaryLayerFactory" ]
        ++ AllBinaryLayerFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "rectangle", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryLayerFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.local "rectangle")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new AllBinaryLayer.jnew_3 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.thisField "rectangle"), (JR.callStatic ViewPosition.jm_getInstanceD_0 []) ]) ])
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

