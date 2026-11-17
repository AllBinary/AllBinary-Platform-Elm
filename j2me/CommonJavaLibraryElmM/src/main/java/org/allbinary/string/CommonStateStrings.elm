module CommonStateStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.string
-}

import JR



jclass : String
jclass =
    "CommonStateStrings"


jchain : List String
jchain =
    [ "CommonStateStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "CONTEXT", JR.defaultOf "" ), ( "FINISH", JR.defaultOf "" ), ( "CREATE", JR.defaultOf "" ), ( "START", JR.defaultOf "" ), ( "RESTART", JR.defaultOf "" ), ( "RESUME", JR.defaultOf "" ), ( "PAUSE", JR.defaultOf "" ), ( "STOP", JR.defaultOf "" ), ( "DESTROY", JR.defaultOf "" ), ( "BIND", JR.defaultOf "" ), ( "ON_SAVE_INSTANCE_STATE", JR.defaultOf "" ), ( "ON_START_COMMAND", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommonStateStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CommonStateStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "CONTEXT" "" JR.this (JR.str "Context: ")),
                JR.exec (JR.setField "FINISH" "" JR.this (JR.str "finish")),
                JR.exec (JR.setField "CREATE" "" JR.this (JR.str "onCreate")),
                JR.exec (JR.setField "START" "" JR.this (JR.str "onStart")),
                JR.exec (JR.setField "RESTART" "" JR.this (JR.str "onRestart")),
                JR.exec (JR.setField "RESUME" "" JR.this (JR.str "onResume")),
                JR.exec (JR.setField "PAUSE" "" JR.this (JR.str "onPause")),
                JR.exec (JR.setField "STOP" "" JR.this (JR.str "onStop")),
                JR.exec (JR.setField "DESTROY" "" JR.this (JR.str "onDestroy")),
                JR.exec (JR.setField "BIND" "" JR.this (JR.str "onBind")),
                JR.exec (JR.setField "ON_SAVE_INSTANCE_STATE" "" JR.this (JR.str "onSaveInstanceState")),
                JR.exec (JR.setField "ON_START_COMMAND" "" JR.this (JR.str "onStartCommand")),
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

