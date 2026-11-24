module Org.Allbinary.Logic.Math.Permutations.ObjectPermutationVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math.permutations
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import JSystem
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.TsUtil as TsUtil
import Org.Allbinary.Logic.Util.Visitor.Visitor as Visitor


jclass : String
jclass =
    "ObjectPermutationVisitor"


jchain : List String
jchain =
    [ "ObjectPermutationVisitor" ]
        ++ Visitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Visitor.jfields ++ [ ( "data", JR.defaultOf "" ), ( "stringBuilder", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 )
        , ( "print_1", jm_print_1 )
        , ( "print_2", jm_print_2 ) ]
        Visitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ObjectPermutationVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jm_print_1", jm_print_1 ), ( "jm_print_2", jm_print_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "data", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Visitor.jinit_0 JR.this []),
                JR.exec (JR.setField "stringBuilder" "" JR.this (JR.new StringMaker.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "data" "" JR.this (JR.local "data")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                    JR.exec (JR.invoke "print_2" JR.this [ (JR.thisField "data"), (JR.thisField "stringBuilder") ]), 
                    JR.return (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_print_1 : JR.Method
jm_print_1 jheap jthis jargs =
    JR.method [ ( "data", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuilder" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "print_2" JR.this [ (JR.local "data"), (JR.local "stringBuilder") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_print_2 : JR.Method
jm_print_2 jheap jthis jargs =
    JR.method [ ( "data", "" ), ( "stringBuilder", "" ) ] ""
        (JR.run [ 
                    JR.declare "tsUtil" "" (JR.callStatic TsUtil.jm_getInstance_0 []), 
                    JR.declare "size" "I" (JR.alength (JR.local "data")), 
                    JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN67007 -> (JR.setLocal "i" "I" (JR.lit jwN67007))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuilder") [ (JR.invoke "hashCode_1" (JR.local "tsUtil") [ (JR.aget (JR.local "data") (JR.local "i")) ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuilder") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) ], 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "toString_0" (JR.local "stringBuilder") []) ]) ])
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

