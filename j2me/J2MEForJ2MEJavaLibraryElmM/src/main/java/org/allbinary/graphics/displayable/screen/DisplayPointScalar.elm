module Org.Allbinary.Graphics.Displayable.Screen.DisplayPointScalar exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR



jclass : String
jclass =
    "DisplayPointScalar"


jchain : List String
jchain =
    [ "DisplayPointScalar" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "processX_1", jm_processX_1 )
        , ( "processY_1", jm_processY_1 )
        , ( "process_1", jm_process_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DisplayPointScalar"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_processX_1", jm_processX_1 ), ( "jm_processY_1", jm_processY_1 ), ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DisplayPointScalar" jclinit "instance"
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


jm_processX_1 : JR.Method
jm_processX_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.local "value") ])
        (jregister jheap)
        jthis
        jargs


jm_processY_1 : JR.Method
jm_processY_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.local "value") ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "point", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.local "point") ])
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

