module Org.Allbinary.Logic.Io.File.FileUtil2 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Io.File.SimpleFileUtil as SimpleFileUtil
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil


jclass : String
jclass =
    "FileUtil2"


jchain : List String
jchain =
    [ "FileUtil2" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "streamUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "loadFileAsList_3", jm_loadFileAsList_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileUtil2"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_loadFileAsList_3", jm_loadFileAsList_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileUtil2" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "streamUtil" "" JR.this (JR.callStatic StreamUtil.jm_getInstance_0 [])),
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


jm_loadFileAsList_3 : JR.Method
jm_loadFileAsList_3 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "max", "I" ), ( "byteArray1", "" ) ] ""
        (JR.run [ 
                    JR.declare "inputStream" "" JR.null, 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "inputStream" "" (JR.callStatic AbFileInputStream.jm_createFromAbFile_1 [ (JR.local "file") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.return (JR.invoke "loadFileAsList_3" (JR.callStatic SimpleFileUtil.jm_getInstance_0 []) [ (JR.local "inputStream"), (JR.local "max"), (JR.local "byteArray1") ]) ])
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

