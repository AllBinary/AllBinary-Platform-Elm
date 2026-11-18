module Org.Allbinary.Logic.Math.Permutations.ComparableObject exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math.permutations
-}

import JR
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "ComparableObject"


jchain : List String
jchain =
    [ "ComparableObject" ]
        ++ [ "Comparable" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "compareTo_1", jm_compareTo_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ComparableObject"
        [ ( "jm_compareTo_1", jm_compareTo_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_compareTo_1 : JR.Method
jm_compareTo_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.local "anyType") ])) (JR.run [ 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.local "anyType") ])) (JR.run [ 
                        JR.return (JR.int 1) ]) identity ]), 
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

