module Org.Allbinary.Logic.Math.PrimitiveIntUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "PrimitiveIntUtil"


jchain : List String
jchain =
    [ "PrimitiveIntUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getArrayInstance_0", jm_getArrayInstance_0 )
        , ( "getTwoDimensionalArrayInstance_0", jm_getTwoDimensionalArrayInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PrimitiveIntUtil"
        [ ( "jm_getArrayInstance_0", jm_getArrayInstance_0 ), ( "jm_getTwoDimensionalArrayInstance_0", jm_getTwoDimensionalArrayInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getArrayInstance_0 : JR.Method
jm_getArrayInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getTwoDimensionalArrayInstance_0 : JR.Method
jm_getTwoDimensionalArrayInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_INT_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
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

