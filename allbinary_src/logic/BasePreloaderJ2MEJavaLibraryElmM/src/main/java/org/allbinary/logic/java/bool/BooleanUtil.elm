module Org.Allbinary.Logic.Java.Bool.BooleanUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.bool
-}

import JR
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "BooleanUtil"


jchain : List String
jchain =
    [ "BooleanUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "tsUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getFromString_1", jm_getFromString_1 )
        , ( "isStringBoolean_1", jm_isStringBoolean_1 )
        , ( "toStringFromBooleanArray_1", jm_toStringFromBooleanArray_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BooleanUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getFromString_1", jm_getFromString_1 ), ( "jm_isStringBoolean_1", jm_isStringBoolean_1 ), ( "jm_toStringFromBooleanArray_1", jm_toStringFromBooleanArray_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BooleanUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
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


jm_getFromString_1 : JR.Method
jm_getFromString_1 jheap jthis jargs =
    JR.method [ ( "booleanString", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.declare "booleanFactory" "" (JR.callStatic BooleanFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.local "booleanString") ]) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.declare "booleanStringLowerCase" "" (JR.invoke "toLowerCase_0" (JR.local "booleanString") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.local "booleanStringLowerCase"), (JR.field "TRUE_STRING" (JR.local "booleanFactory")) ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.local "booleanStringLowerCase"), (JR.field "FALSE_STRING" (JR.local "booleanFactory")) ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Invalid booleanString - Must be true or false") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isStringBoolean_1 : JR.Method
jm_isStringBoolean_1 jheap jthis jargs =
    JR.method [ ( "booleanString", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "booleanFactory" "" (JR.callStatic BooleanFactory.jm_getInstance_0 []), 
                    JR.declare "booleanStringLowerCase" "" (JR.invoke "toLowerCase_0" (JR.local "booleanString") []), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "booleanStringLowerCase") [ (JR.field "TRUE_STRING" (JR.local "booleanFactory")) ]) (JR.int 0)) (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "booleanStringLowerCase") [ (JR.field "FALSE_STRING" (JR.local "booleanFactory")) ]) (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringFromBooleanArray_1 : JR.Method
jm_toStringFromBooleanArray_1 jheap jthis jargs =
    JR.method [ ( "booleanArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "size" "I" (JR.alength (JR.local "booleanArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67239 -> (JR.setLocal "index" "I" (JR.lit jwN67239))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringMaker") [ (JR.aget (JR.local "booleanArray") (JR.local "index")) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringMaker") []) ])
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

