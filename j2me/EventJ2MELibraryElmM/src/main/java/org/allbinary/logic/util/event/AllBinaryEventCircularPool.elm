module Org.Allbinary.Logic.Util.Event.AllBinaryEventCircularPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.event
-}

import JR
import Org.Allbinary.Logic.Util.Cache.BaseCircularPool as BaseCircularPool
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil


jclass : String
jclass =
    "AllBinaryEventCircularPool"


jchain : List String
jchain =
    [ "AllBinaryEventCircularPool" ]
        ++ BaseCircularPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseCircularPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "initAllBinaryEventCircularPool_1", jm_initAllBinaryEventCircularPool_1 ) ]
        BaseCircularPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryEventCircularPool"
        [ ( "jm_initAllBinaryEventCircularPool_1", jm_initAllBinaryEventCircularPool_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "max", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseCircularPool.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "OBJECT_ARRAY" "" JR.this (JR.newArray "" [ (JR.local "max") ])), 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.local "max") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_initAllBinaryEventCircularPool_1 : JR.Method
jm_initAllBinaryEventCircularPool_1 jheap jthis jargs =
    JR.method [ ( "allBinaryEventObjectFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setIndex_1" (JR.thisField "circularIndexUtil") [ (JR.int 0) ]), 
                    JR.declare "size" "I" (JR.invoke "getSize_0" (JR.thisField "circularIndexUtil") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66163 -> (JR.setLocal "index" "I" (JR.lit jwN66163))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "OBJECT_ARRAY") (\jaN66067 -> JR.andThen (JR.local "index") (\jiN66067 -> (JR.aset (JR.lit jaN66067) (JR.lit jiN66067) (JR.invoke "getInstance_0" (JR.local "allBinaryEventObjectFactoryInterface") []))))) ]) ] ])
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

