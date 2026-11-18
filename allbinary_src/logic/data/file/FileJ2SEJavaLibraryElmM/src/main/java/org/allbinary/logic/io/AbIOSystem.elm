module Org.Allbinary.Logic.Io.AbIOSystem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR



jclass : String
jclass =
    "AbIOSystem"


jchain : List String
jchain =
    [ "AbIOSystem" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "type", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getType_0", jm_getType_0 )
        , ( "isType_1", jm_isType_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbIOSystem"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jm_isType_1", jm_isType_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbIOSystem" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "type" "" JR.this (JR.str "java.io")),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "type") ])
        (jregister jheap)
        jthis
        jargs


jm_isType_1 : JR.Method
jm_isType_1 jheap jthis jargs =
    JR.method [ ( "type", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.thisField "type") [ (JR.local "type") ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
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

