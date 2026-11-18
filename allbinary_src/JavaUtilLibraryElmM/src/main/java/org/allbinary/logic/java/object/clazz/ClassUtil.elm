module Org.Allbinary.Logic.Java.AnyType.Clazz.ClassUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.anyType.clazz
-}

import JR



jclass : String
jclass =
    "ClassUtil"


jchain : List String
jchain =
    [ "ClassUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "viewAll_2", jm_viewAll_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ClassUtil"
        [ ( "jm_viewAll_2", jm_viewAll_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_viewAll_2 : JR.Method
jm_viewAll_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "lineBreak", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "anyType") JR.null) (JR.run [ 
                        JR.return (JR.callStatic jm_viewAll_2 [ (JR.getClass (JR.local "anyType")), (JR.local "lineBreak") ]) ]) (JR.run [ 
                    JR.return (JR.str "Object Null") ]) ])
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

