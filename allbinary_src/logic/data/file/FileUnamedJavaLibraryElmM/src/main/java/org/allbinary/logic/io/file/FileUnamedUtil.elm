module Org.Allbinary.Logic.Io.File.FileUnamedUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps


jclass : String
jclass =
    "FileUnamedUtil"


jchain : List String
jchain =
    [ "FileUnamedUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonSeps", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_1", jm_process_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileUnamedUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileUnamedUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
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


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        (JR.run [ 
                    JR.declare "simplifiedString" "" (JR.invoke "toLowerCase_0" (JR.local "string") []), 
                    JR.exec (JR.setLocal "simplifiedString" "" (JR.invoke "replace_2" (JR.local "simplifiedString") [ (JR.field "SPACE" (JR.thisField "commonSeps")), (JR.field "UNDERSCORE" (JR.thisField "commonSeps")) ])), 
                    JR.exec (JR.setLocal "simplifiedString" "" (JR.invoke "replace_2" (JR.local "simplifiedString") [ (JR.field "DASH" (JR.thisField "commonSeps")), (JR.field "UNDERSCORE" (JR.thisField "commonSeps")) ])), 
                    JR.return (JR.local "simplifiedString") ])
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

