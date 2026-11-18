module Org.Allbinary.Graphics.GPointCircularPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Logic.Util.Cache.BaseCircularPool as BaseCircularPool
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Graphics.CustomGPoint as CustomGPoint


jclass : String
jclass =
    "GPointCircularPool"


jchain : List String
jchain =
    [ "GPointCircularPool" ]
        ++ BaseCircularPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseCircularPool.jfields ++ []


jvtable =
    JR.vtable
        []
        BaseCircularPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GPointCircularPool"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseCircularPool.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.local "size") ])), 
                    JR.exec (JR.setField "OBJECT_ARRAY" "" JR.this (JR.newArray "" [ (JR.local "size") ])), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66174 -> (JR.setLocal "index" "I" (JR.lit jwN66174))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "OBJECT_ARRAY") (\jaN66058 -> JR.andThen (JR.local "index") (\jiN66058 -> (JR.aset (JR.lit jaN66058) (JR.lit jiN66058) (JR.callStatic CustomGPoint.jm_getInstance3_2 [ (JR.int 0), (JR.int 0) ]))))) ]) ] ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

