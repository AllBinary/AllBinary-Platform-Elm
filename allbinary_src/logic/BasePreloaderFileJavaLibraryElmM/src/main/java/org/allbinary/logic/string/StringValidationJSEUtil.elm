module Org.Allbinary.Logic.String.StringValidationJSEUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string
-}

import JR
import JCharacter


jclass : String
jclass =
    "StringValidationJSEUtil"


jchain : List String
jchain =
    [ "StringValidationJSEUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "isBlank_1", jm_isBlank_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StringValidationJSEUtil"
        [ ( "jm_isBlank_1", jm_isBlank_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isBlank_1 : JR.Method
jm_isBlank_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "len" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "len")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN65831 -> (JR.setLocal "i" "I" (JR.lit jwN65831))) JR.increment) ]) (JR.run [ 
                        JR.declare "c" "C" (JR.invoke "charAt_1" (JR.local "string") [ (JR.local "i") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.callStatic JCharacter.jm_isWhitespace_1 [ (JR.local "c") ]) (JR.bool False)) (JR.run [ 
                            JR.return (JR.bool False) ]) identity ]) ], 
                    JR.return (JR.bool True) ])
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

