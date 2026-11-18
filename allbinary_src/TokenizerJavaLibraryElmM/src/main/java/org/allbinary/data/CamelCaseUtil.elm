module Org.Allbinary.Data.CamelCaseUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonSeps as CommonSeps
import JCharacter
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil
import Org.Allbinary.Logic.String.Tokens.Tokenizer as Tokenizer


jclass : String
jclass =
    "CamelCaseUtil"


jchain : List String
jchain =
    [ "CamelCaseUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonSeps", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getAsCamelCase_2", jm_getAsCamelCase_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CamelCaseUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getAsCamelCase_2", jm_getAsCamelCase_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CamelCaseUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
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


jm_getAsCamelCase_2 : JR.Method
jm_getAsCamelCase_2 jheap jthis jargs =
    JR.method [ ( "string", "" ), ( "stringBuilder", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuilder") []) ]), 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "tokenizer" "" (JR.new Tokenizer.jnew_1 [ (JR.field "UNDERSCORE" (JR.thisField "commonSeps")) ]), 
                    JR.exec (JR.invoke "getTokensFromString_2" (JR.local "tokenizer") [ (JR.local "string"), (JR.local "list") ]), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "word" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN67516 -> (JR.setLocal "i" "I" (JR.lit jwN67516))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "word" "" (JR.invoke "get_1" (JR.local "list") [ (JR.local "i") ])), 
                        JR.exec (JR.setLocal "word" "" (JR.cond (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.local "word") ]) (JR.local "word") (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "appendchar_1" (JR.new StringMaker.jnew_0 []) [ (JR.callStatic JCharacter.jm_toUpperCase_1 [ (JR.invoke "charAt_1" (JR.local "word") [ (JR.int 0) ]) ]) ]) [ (JR.invoke "toLowerCase_0" (JR.invoke "substring_1" (JR.local "word") [ (JR.int 1) ]) []) ]) []))), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuilder") [ (JR.local "word") ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuilder") []) ])
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

