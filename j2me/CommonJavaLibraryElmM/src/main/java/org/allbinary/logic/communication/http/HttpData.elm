module HttpData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.http
-}

import JR
import CommonSeps


jclass : String
jclass =
    "HttpData"


jchain : List String
jchain =
    [ "HttpData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EQUALS", JR.defaultOf "" ), ( "PARAM_SEP", JR.defaultOf "" ), ( "URL_PARAM_SEP", JR.defaultOf "" ), ( "URL_LABEL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HttpData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HttpData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "URL_LABEL" "" JR.this (JR.str "Url: ")),
                identity,
                (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.setField "EQUALS" "" JR.this (JR.field "EQUALS" (JR.local "commonSeps"))), 
                    JR.exec (JR.setField "PARAM_SEP" "" JR.this (JR.field "AMPERSAND" (JR.local "commonSeps"))), 
                    JR.exec (JR.setField "URL_PARAM_SEP" "" JR.this (JR.field "QUESTION" (JR.local "commonSeps"))) ]) ])
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

