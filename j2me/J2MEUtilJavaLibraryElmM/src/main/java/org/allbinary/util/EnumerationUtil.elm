module EnumerationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import BasicArrayListD


jclass : String
jclass =
    "EnumerationUtil"


jchain : List String
jchain =
    [ "EnumerationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "hasMoreElements_1", jm_hasMoreElements_1 )
        , ( "nextElement_1", jm_nextElement_1 )
        , ( "getAsArray_1", jm_getAsArray_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EnumerationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_hasMoreElements_1", jm_hasMoreElements_1 ), ( "jm_nextElement_1", jm_nextElement_1 ), ( "jm_getAsArray_1", jm_getAsArray_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "EnumerationUtil" jclinit "instance"
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


jm_hasMoreElements_1 : JR.Method
jm_hasMoreElements_1 jheap jthis jargs =
    JR.method [ ( "enumeration", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "hasMoreElements_0" (JR.local "enumeration") []) ])
        (jregister jheap)
        jthis
        jargs


jm_nextElement_1 : JR.Method
jm_nextElement_1 jheap jthis jargs =
    JR.method [ ( "enumeration", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "nextElement_0" (JR.local "enumeration") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getAsArray_1 : JR.Method
jm_getAsArray_1 jheap jthis jargs =
    JR.method [ ( "enumeration", "" ) ] ""
        (JR.run [ 
                    JR.declare "basicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.while (JR.invoke "hasMoreElements_1" JR.this [ (JR.local "enumeration") ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.local "basicArrayList") [ (JR.invoke "nextElement_1" JR.this [ (JR.local "enumeration") ]) ]) ]), 
                    JR.return (JR.invoke "toArray_0" (JR.local "basicArrayList") []) ])
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

