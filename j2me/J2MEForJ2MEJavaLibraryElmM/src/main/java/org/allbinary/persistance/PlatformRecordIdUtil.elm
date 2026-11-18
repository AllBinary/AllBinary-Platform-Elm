module Org.Allbinary.Persistance.PlatformRecordIdUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.persistance
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "PlatformRecordIdUtil"


jchain : List String
jchain =
    [ "PlatformRecordIdUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PLATFORM_SHORT_NAME", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRecordId_2", jm_getRecordId_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformRecordIdUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRecordId_2", jm_getRecordId_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PlatformRecordIdUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PLATFORM_SHORT_NAME" "" JR.this (JR.str "JME")),
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


jm_getRecordId_2 : JR.Method
jm_getRecordId_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "baseRecordId", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "toShortString_0" (JR.local "abeClientInformation") []) ]) [ (JR.field "UNDERSCORE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "PLATFORM_SHORT_NAME") ]) [ (JR.local "baseRecordId") ]) []) ])
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

