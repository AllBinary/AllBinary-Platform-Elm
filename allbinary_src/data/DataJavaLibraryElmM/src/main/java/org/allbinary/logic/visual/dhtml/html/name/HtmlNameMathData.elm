module Org.Allbinary.Logic.Visual.Dhtml.Html.Name.HtmlNameMathData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.dhtml.html.name
-}

import JR



jclass : String
jclass =
    "HtmlNameMathData"


jchain : List String
jchain =
    [ "HtmlNameMathData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EQUALS", JR.defaultOf "" ), ( "PLUS", JR.defaultOf "" ), ( "MINUS", JR.defaultOf "" ), ( "DIVIDE", JR.defaultOf "" ), ( "MULTIPLY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HtmlNameMathData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HtmlNameMathData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EQUALS" "" JR.this (JR.str "_EQUALS_")),
                JR.exec (JR.setField "PLUS" "" JR.this (JR.str "_PLUS_")),
                JR.exec (JR.setField "MINUS" "" JR.this (JR.str "_MINUS_")),
                JR.exec (JR.setField "DIVIDE" "" JR.this (JR.str "_DIVIDE_")),
                JR.exec (JR.setField "MULTIPLY" "" JR.this (JR.str "_MULTIPLY_")),
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

