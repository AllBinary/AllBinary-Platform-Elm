module Org.Allbinary.Logic.Io.BufferedLineReader exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFileNativeUtil as AbFileNativeUtil


jclass : String
jclass =
    "BufferedLineReader"


jchain : List String
jchain =
    [ "BufferedLineReader" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "tmpIn", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "readUpToLines_1", jm_readUpToLines_1 )
        , ( "readLine_0", jm_readLine_0 )
        , ( "ready_0", jm_ready_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "getCurrent_0", jm_getCurrent_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BufferedLineReader"
        [ ( "jm_readUpToLines_1", jm_readUpToLines_1 ), ( "jm_readLine_0", jm_readLine_0 ), ( "jm_ready_0", jm_ready_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_getCurrent_0", jm_getCurrent_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "tmpIn" "" JR.this (JR.new (JR.namedMethod "BufferedReader.jnew_1") [ (JR.new (JR.namedMethod "FileReader.jnew_1") [ (JR.callStatic AbFileNativeUtil.jm_get_1 [ (JR.local "file") ]) ]) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_readUpToLines_1 : JR.Method
jm_readUpToLines_1 jheap jthis jargs =
    JR.method [ ( "readAheadIndex", "J" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_readLine_0 : JR.Method
jm_readLine_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "readLine_0" (JR.thisField "tmpIn") []) ])
        (jregister jheap)
        jthis
        jargs


jm_ready_0 : JR.Method
jm_ready_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "ready_0" (JR.thisField "tmpIn") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrent_0 : JR.Method
jm_getCurrent_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

