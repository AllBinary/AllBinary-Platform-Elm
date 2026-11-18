module Org.Allbinary.Logic.NullUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic
-}

import JR



jclass : String
jclass =
    "NullUtil"


jchain : List String
jchain =
    [ "NullUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NULL_OBJECT", JR.defaultOf "" ), ( "NULL_CLASS", JR.defaultOf "" ), ( "NULL_OBJECT_ARRAY", JR.defaultOf "" ), ( "NULL_CHAR_ARRAY", JR.defaultOf "" ), ( "NULL_BYTE_ARRAY", JR.defaultOf "" ), ( "NULL_SHORT_ARRAY_ARRAY", JR.defaultOf "" ), ( "NULL_INT_ARRAY", JR.defaultOf "" ), ( "NULL_INT_ARRAY_ARRAY", JR.defaultOf "" ), ( "NULL_INT_ARRAY_ARRAY_ARRAY", JR.defaultOf "" ), ( "NULL_FLOAT_ARRAY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NullUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NULL_OBJECT" "" JR.this (JR.new JR.newObject [])),
                JR.exec (JR.setField "NULL_CLASS" "" JR.this (JR.getClass (JR.thisField "NULL_OBJECT"))),
                JR.exec (JR.setField "NULL_OBJECT_ARRAY" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                JR.exec (JR.setField "NULL_CHAR_ARRAY" "" JR.this (JR.newArray "C" [ (JR.int 0) ])),
                JR.exec (JR.setField "NULL_BYTE_ARRAY" "" JR.this (JR.newArray "B" [ (JR.int 0) ])),
                JR.exec (JR.setField "NULL_SHORT_ARRAY_ARRAY" "" JR.this (JR.newArray "S" [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "NULL_INT_ARRAY" "" JR.this (JR.newArray "I" [ (JR.int 0) ])),
                JR.exec (JR.setField "NULL_INT_ARRAY_ARRAY" "" JR.this (JR.newArray "I" [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "NULL_INT_ARRAY_ARRAY_ARRAY" "" JR.this (JR.newArray "I" [ (JR.int 0), (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "NULL_FLOAT_ARRAY" "" JR.this (JR.newArray "F" [ (JR.int 0) ])),
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

