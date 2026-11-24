module Org.Allbinary.Logic.String.StringValidationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "StringValidationUtil"


jchain : List String
jchain =
    [ "StringValidationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "stringUtil", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "containsSpaces_1", jm_containsSpaces_1 )
        , ( "isNumber_1", jm_isNumber_1 )
        , ( "isNumberFromChar_1", jm_isNumberFromChar_1 )
        , ( "isValidRequired_3", jm_isValidRequired_3 )
        , ( "isValidRequiredNumber_3", jm_isValidRequiredNumber_3 )
        , ( "isValidNotRequired_3", jm_isValidNotRequired_3 )
        , ( "isValidNotRequiredNumber_3", jm_isValidNotRequiredNumber_3 )
        , ( "isEmpty_1", jm_isEmpty_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StringValidationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_containsSpaces_1", jm_containsSpaces_1 ), ( "jm_isNumber_1", jm_isNumber_1 ), ( "jm_isNumberFromChar_1", jm_isNumberFromChar_1 ), ( "jm_isValidRequired_3", jm_isValidRequired_3 ), ( "jm_isValidRequiredNumber_3", jm_isValidRequiredNumber_3 ), ( "jm_isValidNotRequired_3", jm_isValidNotRequired_3 ), ( "jm_isValidNotRequiredNumber_3", jm_isValidNotRequiredNumber_3 ), ( "jm_isEmpty_1", jm_isEmpty_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "StringValidationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "stringUtil" "" JR.this (JR.callStatic StringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
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


jm_containsSpaces_1 : JR.Method
jm_containsSpaces_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.local "value") [ (JR.char 32) ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isNumber_1 : JR.Method
jm_isNumber_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "numberOfDecimalPoints" "I" (JR.int 0), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.invoke "length_0" (JR.local "value") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66507 -> (JR.setLocal "index" "I" (JR.lit jwN66507))) JR.increment) ]) (JR.run [ 
                        JR.declare "digit" "C" (JR.invoke "charAt_1" (JR.local "value") [ (JR.local "index") ]), 
                        JR.ifElse (JR.and (JR.map JR.not_ (JR.invoke "isNumberFromChar_1" JR.this [ (JR.local "digit") ])) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 46))) (JR.run [ 
                            JR.return (JR.bool False) ]) identity, 
                        JR.ifElse (JR.map2 JR.equals (JR.local "digit") (JR.char 46)) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "numberOfDecimalPoints") (\jwN66395 -> (JR.setLocal "numberOfDecimalPoints" "I" (JR.lit jwN66395))) JR.increment), 
                            JR.ifElse (JR.map2 JR.greater (JR.local "numberOfDecimalPoints") (JR.int 1)) (JR.run [ 
                                JR.return (JR.bool False) ]) identity ]) identity ]) ], 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isNumberFromChar_1 : JR.Method
jm_isNumberFromChar_1 jheap jthis jargs =
    JR.method [ ( "digit", "C" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.and (JR.and (JR.and (JR.and (JR.and (JR.and (JR.and (JR.and (JR.and (JR.map2 JR.notEquals (JR.local "digit") (JR.char 48)) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 49))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 50))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 51))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 52))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 53))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 54))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 55))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 56))) (JR.map2 JR.notEquals (JR.local "digit") (JR.char 57))) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isValidRequired_3 : JR.Method
jm_isValidRequired_3 jheap jthis jargs =
    JR.method [ ( "value", "" ), ( "min", "I" ), ( "max", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.less (JR.invoke "length_0" (JR.local "value") []) (JR.local "min")) (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "value") []) (JR.local "max"))) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isValidRequiredNumber_3 : JR.Method
jm_isValidRequiredNumber_3 jheap jthis jargs =
    JR.method [ ( "value", "" ), ( "min", "I" ), ( "max", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.or (JR.invoke "isEmpty_1" JR.this [ (JR.local "value") ]) (JR.map2 JR.less (JR.invoke "length_0" (JR.local "value") []) (JR.local "min"))) (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "value") []) (JR.local "max"))) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isNumber_1" JR.this [ (JR.local "value") ])) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isValidNotRequired_3 : JR.Method
jm_isValidNotRequired_3 jheap jthis jargs =
    JR.method [ ( "value", "" ), ( "min", "I" ), ( "max", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "value") []) (JR.int 0)) (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.less (JR.invoke "length_0" (JR.local "value") []) (JR.local "min")) (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "value") []) (JR.local "max"))) (JR.run [ 
                            JR.return (JR.bool False) ]) identity ]) identity, 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isValidNotRequiredNumber_3 : JR.Method
jm_isValidNotRequiredNumber_3 jheap jthis jargs =
    JR.method [ ( "value", "" ), ( "min", "I" ), ( "max", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "value") []) (JR.int 0)) (JR.run [ 
                        JR.ifElse (JR.or (JR.or (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.local "value"), (JR.field "NULL_STRING" (JR.thisField "stringUtil")) ]) (JR.int 0)) (JR.map2 JR.less (JR.invoke "length_0" (JR.local "value") []) (JR.local "min"))) (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "value") []) (JR.local "max"))) (JR.run [ 
                            JR.return (JR.bool False) ]) identity, 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isNumber_1" JR.this [ (JR.local "value") ])) (JR.run [ 
                            JR.return (JR.bool False) ]) identity ]) identity, 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isEmpty_1 : JR.Method
jm_isEmpty_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.local "string"), (JR.field "NULL_STRING" (JR.thisField "stringUtil")) ]) (JR.int 0)) (JR.map2 JR.notEquals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.local "string"), (JR.field "EMPTY_STRING" (JR.thisField "stringUtil")) ]) (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
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

