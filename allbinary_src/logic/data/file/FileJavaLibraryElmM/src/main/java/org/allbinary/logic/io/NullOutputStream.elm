module Org.Allbinary.Logic.Io.NullOutputStream exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR



jclass : String
jclass =
    "NullOutputStream"


jchain : List String
jchain =
    [ "NullOutputStream" ]
        ++ [ "OutputStream" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ []


jvtable =
    JR.vtable
        [ ( "write_1", jm_write_1 )
        , ( "write_3", jm_write_3 )
        , ( "close_0", jm_close_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullOutputStream"
        [ ( "jm_write_1", jm_write_1 ), ( "jm_write_3", jm_write_3 ), ( "jm_close_0", jm_close_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_OUTPUT_STREAM", jstatic_NULL_OUTPUT_STREAM ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_OUTPUT_STREAM : JR.M
jstatic_NULL_OUTPUT_STREAM s =
    JR.static "NullOutputStream" jclinit "NULL_OUTPUT_STREAM"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "OutputStream.jinit_0") JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_write_1 : JR.Method
jm_write_1 jheap jthis jargs =
    JR.method [ ( "b", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_write_3 : JR.Method
jm_write_3 jheap jthis jargs =
    JR.method [ ( "b", "" ), ( "off", "I" ), ( "len", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

