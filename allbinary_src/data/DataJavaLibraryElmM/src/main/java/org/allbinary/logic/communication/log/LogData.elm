module Org.Allbinary.Logic.Communication.Log.LogData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData


jclass : String
jclass =
    "LogData"


jchain : List String
jchain =
    [ "LogData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "MAX", JR.defaultOf "J" ), ( "extension", JR.defaultOf "" ), ( "backupFileExt", JR.defaultOf "" ), ( "ALLBINARY", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ), ( "DESCRIPTION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "MAX" "J" JR.this (JR.long 5000000)),
                JR.exec (JR.setField "extension" "" JR.this (JR.str "log")),
                JR.exec (JR.setField "backupFileExt" "" JR.this (JR.concat (JR.concat (JR.concat (JR.field "EXTENSION_SEP" (JR.callStatic AbPathData.jm_getInstance_0 [])) (JR.str "bak")) (JR.field "EXTENSION_SEP" (JR.callStatic AbPathData.jm_getInstance_0 []))) (JR.str "txt"))),
                JR.exec (JR.setField "ALLBINARY" "" JR.this (JR.str "allbinary")),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "LOG_NAME")),
                JR.exec (JR.setField "DESCRIPTION" "" JR.this (JR.str "LOG_DESCRIPTION")),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

