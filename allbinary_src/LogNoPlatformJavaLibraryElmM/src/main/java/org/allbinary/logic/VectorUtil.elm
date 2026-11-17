module VectorUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic
-}

import JR



jclass : String
jclass =
    "VectorUtil"


jchain : List String
jchain =
    [ "VectorUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getSize_1", jm_getSize_1 )
        , ( "elementAt_2", jm_elementAt_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getSize_1", jm_getSize_1 ), ( "jm_elementAt_2", jm_elementAt_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "VectorUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_1 : JR.Method
jm_getSize_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "I"
        (JR.run [ 
                    JR.declare "vector" "" (JR.local "anyType"), 
                    JR.return (JR.invoke "size_0" (JR.local "vector") []) ])
        (jregister jheap)
        jthis
        jargs


jm_elementAt_2 : JR.Method
jm_elementAt_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "vector" "" (JR.local "anyType"), 
                    JR.return (JR.invoke "elementAt_1" (JR.local "vector") [ (JR.local "index") ]) ])
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

