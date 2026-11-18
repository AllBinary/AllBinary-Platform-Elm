module Org.Allbinary.Logic.Io.NullReader exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR



jclass : String
jclass =
    "NullReader"


jchain : List String
jchain =
    [ "NullReader" ]
        ++ [ "Reader" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ []


jvtable =
    JR.vtable
        [ ( "read_0", jm_read_0 )
        , ( "read_3", jm_read_3 )
        , ( "ready_0", jm_ready_0 )
        , ( "skip_1", jm_skip_1 )
        , ( "close_0", jm_close_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullReader"
        [ ( "jm_read_0", jm_read_0 ), ( "jm_read_3", jm_read_3 ), ( "jm_ready_0", jm_ready_0 ), ( "jm_skip_1", jm_skip_1 ), ( "jm_close_0", jm_close_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_READER", jstatic_NULL_READER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_READER : JR.M
jstatic_NULL_READER s =
    JR.static "NullReader" jclinit "NULL_READER"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "Reader.jinit_0") JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_read_0 : JR.Method
jm_read_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_read_3 : JR.Method
jm_read_3 jheap jthis jargs =
    JR.method [ ( "cbuf", "" ), ( "off", "I" ), ( "len", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_ready_0 : JR.Method
jm_ready_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_skip_1 : JR.Method
jm_skip_1 jheap jthis jargs =
    JR.method [ ( "n", "J" ) ] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
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

