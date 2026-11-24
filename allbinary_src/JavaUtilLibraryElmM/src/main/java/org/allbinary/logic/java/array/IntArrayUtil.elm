module Org.Allbinary.Logic.Java.Array.IntArrayUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.array
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "IntArrayUtil"


jchain : List String
jchain =
    [ "IntArrayUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "toString_1", jm_toString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IntArrayUtil"
        [ ( "jm_toString_1", jm_toString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_toString_1 : JR.Method
jm_toString_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "array"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN65999 -> (JR.setLocal "index" "I" (JR.lit jwN65999))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.aget (JR.local "array") (JR.local "index")) ]), 
                        JR.ifElse (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "array"))) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str ", ") ]) ]) identity ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

