module Org.Allbinary.Logic.Io.StreamUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "StreamUtil"


jchain : List String
jchain =
    [ "StreamUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "get_3", jm_get_3 )
        , ( "getByteArray_3", jm_getByteArray_3 )
        , ( "close_1", jm_close_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StreamUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_get_3", jm_get_3 ), ( "jm_getByteArray_3", jm_getByteArray_3 ), ( "jm_close_1", jm_close_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "StreamUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
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


jm_get_3 : JR.Method
jm_get_3 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "outputStream", "" ), ( "buffer", "" ) ] ""
        (JR.run [ 
                    JR.declare "len" "I" (JR.int 0), 
                    JR.while (JR.bool True) (JR.run [ 
                        JR.exec (JR.setLocal "len" "I" (JR.invoke "read_3" (JR.local "inputStream") [ (JR.local "buffer"), (JR.int 0), (JR.alength (JR.local "buffer")) ])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "len") (JR.map JR.neg (JR.int 1))) identity (JR.run [ 
                            JR.break ]), 
                        JR.exec (JR.invoke "write_3" (JR.local "outputStream") [ (JR.local "buffer"), (JR.int 0), (JR.local "len") ]) ]), 
                    JR.return (JR.local "outputStream") ])
        (jregister jheap)
        jthis
        jargs


jm_getByteArray_3 : JR.Method
jm_getByteArray_3 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "outputStream2", "" ), ( "byteArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "outputStream" "" (JR.local "outputStream2"), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "get_3" JR.this [ (JR.local "inputStream"), (JR.local "outputStream"), (JR.local "byteArray") ]), 
                        JR.return (JR.invoke "toByteArray_0" (JR.local "outputStream") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" JR.this [ (JR.local "outputStream") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_1 : JR.Method
jm_close_1 jheap jthis jargs =
    JR.method [ ( "closeable", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "closeable") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "close_0" (JR.local "closeable") []) ]) identity, 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CLOSE" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.bool False) ]) ) ] identity ])
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

