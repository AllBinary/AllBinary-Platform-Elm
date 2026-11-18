module Org.Allbinary.Logic.Java.AnyType.Clazz.Loader.ClassLoaderUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.anyType.clazz.loader
-}

import JR



jclass : String
jclass =
    "ClassLoaderUtil"


jchain : List String
jchain =
    [ "ClassLoaderUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getName_1", jm_getName_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ClassLoaderUtil"
        [ ( "jm_getName_1", jm_getName_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getName_1 : JR.Method
jm_getName_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.declare "classLoader" "" (JR.invoke "getClassLoader_0" (JR.getClass (JR.local "anyType")) []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "classLoader") JR.null) (JR.run [ 
                        JR.return (JR.concat (JR.str "ClassLoader: ") (JR.invoke "getName_0" (JR.getClass (JR.local "classLoader")) [])) ]) identity, 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Unable to get ClassLoader") ]) ])
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

