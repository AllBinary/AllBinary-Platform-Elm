module Org.Allbinary.Logic.Io.Path.AbFilePath exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.path
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.Logic.Io.Path.PathUtil as PathUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "AbFilePath"


jchain : List String
jchain =
    [ "AbFilePath" ]
        ++ AbPath.jchain


jfields : List ( String, JR.JValue )
jfields =
    AbPath.jfields ++ []


jvtable =
    JR.vtable
        []
        AbPath.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbFilePath"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "aPath", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AbPath.jinit_2 JR.this [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]),
                identity,
                (JR.run [ 
                    JR.declare "pathData" "" (JR.callStatic AbPathData.jm_getInstance_0 []), 
                    JR.declare "abPathUtil" "" (JR.callStatic PathUtil.jm_getInstance_0 []), 
                    JR.exec (JR.setField "schema" "" JR.this (JR.invoke "getSchema_1" JR.this [ (JR.local "aPath") ])), 
                    JR.exec (JR.invoke "setName_1" JR.this [ (JR.invoke "getNameFromPath_1" (JR.local "pathData") [ (JR.local "aPath") ]) ]), 
                    JR.exec (JR.invoke "setPath_1" JR.this [ (JR.invoke "adjust_1" (JR.local "abPathUtil") [ (JR.invoke "getPathFromPath_1" JR.this [ (JR.invoke "toString_0" (JR.invoke "removeNameFromPath_1" (JR.local "abPathUtil") [ (JR.local "aPath") ]) []) ]) ]) ]) ]) ])
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

