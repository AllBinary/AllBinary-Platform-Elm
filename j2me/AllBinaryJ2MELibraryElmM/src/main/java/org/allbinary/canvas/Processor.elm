module Org.Allbinary.Canvas.Processor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR



jclass : String
jclass =
    "Processor"


jchain : List String
jchain =
    [ "Processor" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_0", jm_process_0 )
        , ( "processt_1", jm_processt_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Processor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_0", jm_process_0 ), ( "jm_processt_1", jm_processt_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "Processor" jclinit "SINGLETON"
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processt_1 : JR.Method
jm_processt_1 jheap jthis jargs =
    JR.method [ ( "timeDelta", "J" ) ] ""
        identity
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

