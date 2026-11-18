module Org.Allbinary.String.CommonSeps exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.string
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "CommonSeps"


jchain : List String
jchain =
    [ "CommonSeps" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NEW_LINE", JR.defaultOf "" ), ( "SEMICOLON", JR.defaultOf "" ), ( "EQUALS", JR.defaultOf "" ), ( "SPACE", JR.defaultOf "" ), ( "COMMA", JR.defaultOf "" ), ( "COLON", JR.defaultOf "" ), ( "PERIOD", JR.defaultOf "" ), ( "UNDERSCORE", JR.defaultOf "" ), ( "COLON_SEP", JR.defaultOf "" ), ( "COMMA_SEP", JR.defaultOf "" ), ( "PARENTHESIS_OPEN", JR.defaultOf "" ), ( "PARENTHESIS_CLOSE", JR.defaultOf "" ), ( "BRACE_OPEN", JR.defaultOf "" ), ( "BRACE_CLOSE", JR.defaultOf "" ), ( "BRACKET_OPEN", JR.defaultOf "" ), ( "BRACKET_CLOSE", JR.defaultOf "" ), ( "DASH", JR.defaultOf "" ), ( "PERCENT", JR.defaultOf "" ), ( "AMPERSAND", JR.defaultOf "" ), ( "FORWARD_SLASH", JR.defaultOf "" ), ( "BACK_SLASH", JR.defaultOf "" ), ( "QUESTION", JR.defaultOf "" ), ( "QUOTE", JR.defaultOf "" ), ( "QUOTE_END", JR.defaultOf "" ), ( "COMMENT", JR.defaultOf "" ), ( "INDENT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommonSeps"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CommonSeps" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NEW_LINE" "" JR.this (JR.str "\n")),
                JR.exec (JR.setField "SEMICOLON" "" JR.this (JR.str ";")),
                JR.exec (JR.setField "EQUALS" "" JR.this (JR.str "=")),
                JR.exec (JR.setField "SPACE" "" JR.this (JR.str " ")),
                JR.exec (JR.setField "COMMA" "" JR.this (JR.str ",")),
                JR.exec (JR.setField "COLON" "" JR.this (JR.str ":")),
                JR.exec (JR.setField "PERIOD" "" JR.this (JR.str ".")),
                JR.exec (JR.setField "UNDERSCORE" "" JR.this (JR.str "_")),
                JR.exec (JR.setField "COLON_SEP" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "COLON") ]) [ (JR.thisField "SPACE") ]) [])),
                JR.exec (JR.setField "COMMA_SEP" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "COMMA") ]) [ (JR.thisField "SPACE") ]) [])),
                JR.exec (JR.setField "PARENTHESIS_OPEN" "" JR.this (JR.str "(")),
                JR.exec (JR.setField "PARENTHESIS_CLOSE" "" JR.this (JR.str ")")),
                JR.exec (JR.setField "BRACE_OPEN" "" JR.this (JR.str "{")),
                JR.exec (JR.setField "BRACE_CLOSE" "" JR.this (JR.str "}")),
                JR.exec (JR.setField "BRACKET_OPEN" "" JR.this (JR.str "[")),
                JR.exec (JR.setField "BRACKET_CLOSE" "" JR.this (JR.str "]")),
                JR.exec (JR.setField "DASH" "" JR.this (JR.str "-")),
                JR.exec (JR.setField "PERCENT" "" JR.this (JR.str "%")),
                JR.exec (JR.setField "AMPERSAND" "" JR.this (JR.str "&")),
                JR.exec (JR.setField "FORWARD_SLASH" "" JR.this (JR.str "/")),
                JR.exec (JR.setField "BACK_SLASH" "" JR.this (JR.str "\\")),
                JR.exec (JR.setField "QUESTION" "" JR.this (JR.str "?")),
                JR.exec (JR.setField "QUOTE" "" JR.this (JR.str "\"")),
                JR.exec (JR.setField "QUOTE_END" "" JR.this (JR.str "\",")),
                JR.exec (JR.setField "COMMENT" "" JR.this (JR.str "//")),
                JR.exec (JR.setField "INDENT" "" JR.this (JR.str "    ")),
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

