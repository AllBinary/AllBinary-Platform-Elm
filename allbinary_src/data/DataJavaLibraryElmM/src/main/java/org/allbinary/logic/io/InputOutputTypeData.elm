module Org.Allbinary.Logic.Io.InputOutputTypeData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR



jclass : String
jclass =
    "InputOutputTypeData"


jchain : List String
jchain =
    [ "InputOutputTypeData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "FILE", JR.defaultOf "" ), ( "RESPONSE", JR.defaultOf "" ), ( "DB", JR.defaultOf "" ), ( "JSP", JR.defaultOf "" ), ( "JSP_FRAGMENT", JR.defaultOf "" ), ( "PHP", JR.defaultOf "" ), ( "ASP", JR.defaultOf "" ), ( "PL", JR.defaultOf "" ), ( "DEFAULT", JR.defaultOf "" ), ( "DEFAULT_FRAGMENT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputOutputTypeData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InputOutputTypeData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "INPUT_OUTPUT_TYPE_NAME")),
                JR.exec (JR.setField "FILE" "" JR.this (JR.str "INPUT_OUTPUT_TYPE_FILE")),
                JR.exec (JR.setField "RESPONSE" "" JR.this (JR.str "INPUT_OUTPUT_TYPE_RESPONSE")),
                JR.exec (JR.setField "DB" "" JR.this (JR.str "INPUT_OUTPUT_TYPE_DB")),
                JR.exec (JR.setField "JSP" "" JR.this (JR.str "jsp")),
                JR.exec (JR.setField "JSP_FRAGMENT" "" JR.this (JR.str "jspf")),
                JR.exec (JR.setField "PHP" "" JR.this (JR.str "php")),
                JR.exec (JR.setField "ASP" "" JR.this (JR.str "asp")),
                JR.exec (JR.setField "PL" "" JR.this (JR.str "pl")),
                JR.exec (JR.setField "DEFAULT" "" JR.this (JR.thisField "JSP")),
                JR.exec (JR.setField "DEFAULT_FRAGMENT" "" JR.this (JR.thisField "JSP_FRAGMENT")),
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

