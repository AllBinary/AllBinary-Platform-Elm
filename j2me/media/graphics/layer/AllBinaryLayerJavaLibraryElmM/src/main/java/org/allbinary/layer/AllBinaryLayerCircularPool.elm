module Org.Allbinary.Layer.AllBinaryLayerCircularPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Logic.Util.Cache.BaseCircularPool as BaseCircularPool
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil


jclass : String
jclass =
    "AllBinaryLayerCircularPool"


jchain : List String
jchain =
    [ "AllBinaryLayerCircularPool" ]
        ++ BaseCircularPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseCircularPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "initAllBinaryLayerCircularPool_2", jm_initAllBinaryLayerCircularPool_2 ) ]
        BaseCircularPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryLayerCircularPool"
        [ ( "jm_initAllBinaryLayerCircularPool_2", jm_initAllBinaryLayerCircularPool_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseCircularPool.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_initAllBinaryLayerCircularPool_2 : JR.Method
jm_initAllBinaryLayerCircularPool_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerFactoryInterface", "" ), ( "total", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.local "total") ])), 
                    JR.exec (JR.setField "OBJECT_ARRAY" "" JR.this (JR.newArray "" [ (JR.local "total") ])), 
                    JR.run [ JR.declare "localIndex" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "localIndex") (JR.local "total")) (JR.run [ JR.exec (JR.postUpdate (JR.local "localIndex") (\jwN66596 -> (JR.setLocal "localIndex" "I" (JR.lit jwN66596))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "OBJECT_ARRAY") (\jaN66500 -> JR.andThen (JR.local "localIndex") (\jiN66500 -> (JR.aset (JR.lit jaN66500) (JR.lit jiN66500) (JR.invoke "getInstance_0" (JR.local "allbinaryLayerFactoryInterface") []))))) ]) ] ])
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

