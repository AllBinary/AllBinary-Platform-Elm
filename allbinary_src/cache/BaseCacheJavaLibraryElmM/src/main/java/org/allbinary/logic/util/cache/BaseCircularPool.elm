module Org.Allbinary.Logic.Util.Cache.BaseCircularPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "BaseCircularPool"


jchain : List String
jchain =
    [ "BaseCircularPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "circularIndexUtil", JR.defaultOf "" ), ( "OBJECT_ARRAY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNextInstance_0", jm_getNextInstance_0 )
        , ( "init_1", jm_init_1 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseCircularPool"
        [ ( "jm_getNextInstance_0", jm_getNextInstance_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "circularIndexUtil" "" JR.this CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL),
                JR.exec (JR.setField "OBJECT_ARRAY" "" JR.this (JR.field "NULL_OBJECT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getNextInstance_0 : JR.Method
jm_getNextInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "anyType" "" (JR.aget (JR.thisField "OBJECT_ARRAY") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []), 
                    JR.return (JR.local "anyType") ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "allBinaryObjectFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setIndex_1" (JR.thisField "circularIndexUtil") [ (JR.int 0) ]), 
                    JR.declare "size" "I" (JR.invoke "getSize_0" (JR.thisField "circularIndexUtil") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66373 -> (JR.setLocal "index" "I" (JR.lit jwN66373))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "OBJECT_ARRAY") (\jaN66277 -> JR.andThen (JR.local "index") (\jiN66277 -> (JR.aset (JR.lit jaN66277) (JR.lit jiN66277) (JR.invoke "getInstance_0" (JR.local "allBinaryObjectFactoryInterface") []))))) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "OBJECT_ARRAY") (JR.local "index")) ])
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

