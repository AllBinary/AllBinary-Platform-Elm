module Org.Allbinary.Logic.Io.LineReader exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "LineReader"


jchain : List String
jchain =
    [ "LineReader" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "fileName", JR.defaultOf "" ), ( "string", JR.defaultOf "" ), ( "index", JR.defaultOf "I" ), ( "idFile", JR.defaultOf "" ), ( "idData", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "hasNext_0", jm_hasNext_0 )
        , ( "next_0", jm_next_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LineReader"
        [ ( "jm_hasNext_0", jm_hasNext_0 ), ( "jm_next_0", jm_next_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "fileName", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "index" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "bytes" "" (JR.newArray "B" [ (JR.int 100000) ]), 
                        JR.exec (JR.setField "fileName" "" JR.this (JR.local "fileName")), 
                        JR.exec (JR.setField "idFile" "" JR.this (JR.new AbFileInputStream.jnew_1 [ (JR.local "fileName") ])), 
                        JR.exec (JR.invoke "read_1" (JR.thisField "idFile") [ (JR.local "bytes") ]), 
                        JR.exec (JR.setField "string" "" JR.this (JR.withState JR.newString [ (JR.local "bytes") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "File: ") (JR.local "fileName")), JR.this, (JR.str "LineReader"), (JR.local "e") ]), 
                        identity ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_hasNext_0 : JR.Method
jm_hasNext_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "nextIndex" "I" (JR.invoke "indexOf_2" (JR.thisField "string") [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])), (JR.thisField "index") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "nextIndex") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.return (JR.bool False) ]) identity, 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "hasNext"), (JR.local "e") ]), 
                        identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_next_0 : JR.Method
jm_next_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "nextIndex" "I" (JR.invoke "indexOf_2" (JR.thisField "string") [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])), (JR.thisField "index") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "nextIndex") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "next() should have been called first") ]) ]) identity, 
                        JR.declare "temp" "" (JR.invoke "substring_2" (JR.thisField "string") [ (JR.thisField "index"), (JR.local "nextIndex") ]), 
                        JR.exec (JR.setField "index" "I" JR.this (JR.map2 JR.add (JR.local "nextIndex") (JR.int 1))), 
                        JR.return (JR.local "temp") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "next"), (JR.local "e") ]), 
                        identity, 
                        JR.throw (JR.local "e") ]) ) ] identity ])
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

