module Org.Allbinary.J2SEUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary
-}

import JR



jclass : String
jclass =
    "J2SEUtil"


jchain : List String
jchain =
    [ "J2SEUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getHashMapAsArray_1", jm_getHashMapAsArray_1 )
        , ( "getMapAsArray_1", jm_getMapAsArray_1 )
        , ( "getSetAsArray_1", jm_getSetAsArray_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "J2SEUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getHashMapAsArray_1", jm_getHashMapAsArray_1 ), ( "jm_getMapAsArray_1", jm_getMapAsArray_1 ), ( "jm_getSetAsArray_1", jm_getSetAsArray_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "J2SEUtil" jclinit "instance"
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


jm_getHashMapAsArray_1 : JR.Method
jm_getHashMapAsArray_1 jheap jthis jargs =
    JR.method [ ( "hashMap", "" ) ] ""
        (JR.run [ 
                    JR.declare "objectArray" "" (JR.invoke "toArray_0" (JR.invoke "keySet_0" (JR.local "hashMap") []) []), 
                    JR.return (JR.local "objectArray") ])
        (jregister jheap)
        jthis
        jargs


jm_getMapAsArray_1 : JR.Method
jm_getMapAsArray_1 jheap jthis jargs =
    JR.method [ ( "map", "" ) ] ""
        (JR.run [ 
                    JR.declare "objectArray" "" (JR.invoke "toArray_0" (JR.invoke "keySet_0" (JR.local "map") []) []), 
                    JR.return (JR.local "objectArray") ])
        (jregister jheap)
        jthis
        jargs


jm_getSetAsArray_1 : JR.Method
jm_getSetAsArray_1 jheap jthis jargs =
    JR.method [ ( "set", "" ) ] ""
        (JR.run [ 
                    JR.declare "objectArray" "" (JR.invoke "toArray_0" (JR.local "set") []), 
                    JR.return (JR.local "objectArray") ])
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

