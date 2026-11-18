module Org.Allbinary.Logic.Control.Workflow.WorkFlowData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.control.workflow
-}

import JR



jclass : String
jclass =
    "WorkFlowData"


jchain : List String
jchain =
    [ "WorkFlowData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "WORKFLOWS", JR.defaultOf "" ), ( "WORKFLOW", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ), ( "DATA", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WorkFlowData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "WorkFlowData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "WORKFLOWS" "" JR.this (JR.str "WORKFLOWS")),
                JR.exec (JR.setField "WORKFLOW" "" JR.this (JR.str "WORKFLOW")),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "WORKFLOW_NAME")),
                JR.exec (JR.setField "DATA" "" JR.this (JR.str "WORKFLOW_DATA")),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

