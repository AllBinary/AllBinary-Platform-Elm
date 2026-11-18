module Org.Allbinary.Logic.Io.DataOutputStreamFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.AbDataOutputStream as AbDataOutputStream
import Org.Allbinary.Logic.Io.AbFileOutputStream as AbFileOutputStream
import Org.Allbinary.Logic.Io.FileStreamFactory as FileStreamFactory


jclass : String
jclass =
    "DataOutputStreamFactory"


jchain : List String
jchain =
    [ "DataOutputStreamFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceForAbFile_1", jm_getInstanceForAbFile_1 )
        , ( "getInstance_2", jm_getInstance_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DataOutputStreamFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceForAbFile_1", jm_getInstanceForAbFile_1 ), ( "jm_getInstance_2", jm_getInstance_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DataOutputStreamFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_getInstanceForAbFile_1 : JR.Method
jm_getInstanceForAbFile_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.declare "idFileOutputStream" "" (JR.callStatic AbFileOutputStream.jm_createFromAbFile_1 [ (JR.local "file") ]), 
                    JR.declare "idOutData" "" (JR.new AbDataOutputStream.jnew_1 [ (JR.local "idFileOutputStream") ]), 
                    JR.return (JR.local "idOutData") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "filePath", "" ), ( "fileName", "" ) ] ""
        (JR.run [ 
                    JR.declare "fileStreamFactory" "" (JR.callStatic FileStreamFactory.jm_getInstance_0 []), 
                    JR.declare "fileOutputStream" "" (JR.invoke "getFileOutputStreamInstance_2" (JR.local "fileStreamFactory") [ (JR.local "filePath"), (JR.local "fileName") ]), 
                    JR.declare "idOutData" "" (JR.new AbDataOutputStream.jnew_1 [ (JR.local "fileOutputStream") ]), 
                    JR.return (JR.local "idOutData") ])
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

