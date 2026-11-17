module CommonLabels exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.string
-}

import JR



jclass : String
jclass =
    "CommonLabels"


jchain : List String
jchain =
    [ "CommonLabels" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "WIDTH_LABEL", JR.defaultOf "" ), ( "HEIGHT_LABEL", JR.defaultOf "" ), ( "END_LABEL", JR.defaultOf "" ), ( "TOTAL_LABEL", JR.defaultOf "" ), ( "INDEX_LABEL", JR.defaultOf "" ), ( "START_LABEL", JR.defaultOf "" ), ( "COMMAND_LABEL", JR.defaultOf "" ), ( "NAME_LABEL", JR.defaultOf "" ), ( "START", JR.defaultOf "" ), ( "ELAPSED", JR.defaultOf "" ), ( "CURRENT", JR.defaultOf "" ), ( "NEXT", JR.defaultOf "" ), ( "ITEM_LABEL", JR.defaultOf "" ), ( "RESULT_", JR.defaultOf "" ), ( "COLON_SEP", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommonLabels"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CommonLabels" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "WIDTH_LABEL" "" JR.this (JR.str " Width: ")),
                JR.exec (JR.setField "HEIGHT_LABEL" "" JR.this (JR.str " Height: ")),
                JR.exec (JR.setField "END_LABEL" "" JR.this (JR.str "End: ")),
                JR.exec (JR.setField "TOTAL_LABEL" "" JR.this (JR.str "Total: ")),
                JR.exec (JR.setField "INDEX_LABEL" "" JR.this (JR.str "index: ")),
                JR.exec (JR.setField "START_LABEL" "" JR.this (JR.str "Start: ")),
                JR.exec (JR.setField "COMMAND_LABEL" "" JR.this (JR.str "Command: ")),
                JR.exec (JR.setField "NAME_LABEL" "" JR.this (JR.str "Name: ")),
                JR.exec (JR.setField "START" "" JR.this (JR.thisField "START_LABEL")),
                JR.exec (JR.setField "ELAPSED" "" JR.this (JR.str " Elapsed: ")),
                JR.exec (JR.setField "CURRENT" "" JR.this (JR.str " Current: ")),
                JR.exec (JR.setField "NEXT" "" JR.this (JR.str "Next")),
                JR.exec (JR.setField "ITEM_LABEL" "" JR.this (JR.str "Item: ")),
                JR.exec (JR.setField "RESULT_" "" JR.this (JR.str "Result: ")),
                JR.exec (JR.setField "COLON_SEP" "" JR.this (JR.str ": ")),
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

