module Org.Allbinary.Graphics.Displayable.Screen.AboutCommandProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR



jclass : String
jclass =
    "AboutCommandProcessor"


jchain : List String
jchain =
    [ "AboutCommandProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_3", jm_process_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AboutCommandProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_3", jm_process_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AboutCommandProcessor" jclinit "instance"
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


jm_process_3 : JR.Method
jm_process_3 jheap jthis jargs =
    JR.method [ ( "midletCommandListener", "" ), ( "command", "" ), ( "canvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "commandAction_2" (JR.local "midletCommandListener") [ (JR.local "command"), (JR.local "canvas") ]) ])
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

