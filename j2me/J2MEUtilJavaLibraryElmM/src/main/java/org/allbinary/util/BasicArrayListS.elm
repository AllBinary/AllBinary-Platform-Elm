module Org.Allbinary.Util.BasicArrayListS exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import Org.Allbinary.Util.BasicArrayList as BasicArrayList
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BasicArrayListS"


jchain : List String
jchain =
    [ "BasicArrayListS" ]
        ++ BasicArrayList.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicArrayList.jfields ++ []


jvtable =
    JR.vtable
        []
        BasicArrayList.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicArrayListS"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicArrayList.jinit_1 JR.this [ (JR.field "NULL_OBJECT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "size") (JR.int 0)) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "IllegalArgumentException" [ "RuntimeException", "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Init Size Exception: ") ]) [ (JR.local "size") ]) []) ]) ]) identity, 
                    JR.exec (JR.setField "objectArray" "" JR.this (JR.newArray "" [ (JR.local "size") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

