module Org.Allbinary.Graphics.Color.BasicColorArrayIndexer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil


jclass : String
jclass =
    "BasicColorArrayIndexer"


jchain : List String
jchain =
    [ "BasicColorArrayIndexer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "basicColorArray", JR.defaultOf "" ), ( "circularIndexUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "next_0", jm_next_0 )
        , ( "get_0", jm_get_0 )
        , ( "getBasicColorArray_0", jm_getBasicColorArray_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicColorArrayIndexer"
        [ ( "jm_next_0", jm_next_0 ), ( "jm_get_0", jm_get_0 ), ( "jm_getBasicColorArray_0", jm_getBasicColorArray_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicColorArray", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "basicColorArray" "" JR.this (JR.local "basicColorArray")), 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.alength (JR.thisField "basicColorArray")) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_next_0 : JR.Method
jm_next_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "basicColorArray") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorArray_0 : JR.Method
jm_getBasicColorArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColorArray") ])
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

