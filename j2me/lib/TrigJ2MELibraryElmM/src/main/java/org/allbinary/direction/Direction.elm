module Org.Allbinary.Direction.Direction exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.direction
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "Direction"


jchain : List String
jchain =
    [ "Direction" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "otherName", JR.defaultOf "" ), ( "value", JR.defaultOf "I" ), ( "frameFactor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "getValue_0", jm_getValue_0 )
        , ( "getFrameFactor_0", jm_getFrameFactor_0 )
        , ( "getOtherName_0", jm_getOtherName_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Direction"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getValue_0", jm_getValue_0 ), ( "jm_getFrameFactor_0", jm_getFrameFactor_0 ), ( "jm_getOtherName_0", jm_getOtherName_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_directionArray", jstatic_directionArray ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_directionArray : JR.M
jstatic_directionArray s =
    JR.static "Direction" jclinit "directionArray"
        (JR.newArray "" [ (JR.int 13) ])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "otherName", "" ), ( "value", "I" ), ( "frameFactor", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "otherName" "" JR.this (JR.local "otherName")), 
                    JR.exec (JR.setField "value" "I" JR.this (JR.local "value")), 
                    JR.exec (JR.setField "frameFactor" "I" JR.this (JR.local "frameFactor")), 
                    JR.exec (JR.andThen jstatic_directionArray (\jaN66085 -> JR.andThen (JR.local "value") (\jiN66085 -> (JR.aset (JR.lit jaN66085) (JR.lit jiN66085) JR.this)))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "direction", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget jstatic_directionArray (JR.local "direction")) ])
        (jregister jheap)
        jthis
        jargs


jm_getValue_0 : JR.Method
jm_getValue_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "value") ])
        (jregister jheap)
        jthis
        jargs


jm_getFrameFactor_0 : JR.Method
jm_getFrameFactor_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "frameFactor") ])
        (jregister jheap)
        jthis
        jargs


jm_getOtherName_0 : JR.Method
jm_getOtherName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "otherName") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Direction: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Or: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getOtherName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Value: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "value") ]), 
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

