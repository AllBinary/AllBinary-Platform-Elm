module Org.Allbinary.Game.Input.GameInputProcessorUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameInputProcessor as GameInputProcessor
import Org.Allbinary.Game.Input.InputFactory as InputFactory


jclass : String
jclass =
    "GameInputProcessorUtil"


jchain : List String
jchain =
    [ "GameInputProcessorUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputProcessorUtil"
        [ ( "jm_init_1", jm_init_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "inputProcessorArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "noInputProcessor" "" (JR.callStatic GameInputProcessor.jm_getInstance_0 []), 
                    JR.declare "total" "I" (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "total")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66394 -> (JR.setLocal "index" "I" (JR.lit jwN66394))) JR.increment) ]) (JR.run [ 
                        JR.declare "inputProcessorCanBeNull" "" (JR.aget (JR.local "inputProcessorArray") (JR.local "index")), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "inputProcessorCanBeNull") JR.null) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN66306 -> JR.andThen (JR.local "index") (\jiN66306 -> (JR.aset (JR.lit jaN66306) (JR.lit jiN66306) (JR.local "noInputProcessor"))))) ]) identity ]) ] ])
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

