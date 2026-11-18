module Org.Allbinary.Logic.Util.Event.AllBinaryEventObject exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.event
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "AllBinaryEventObject"


jchain : List String
jchain =
    [ "AllBinaryEventObject" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "source", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getSource_0", jm_getSource_0 )
        , ( "setSource_1", jm_setSource_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryEventObject"
        [ ( "jm_getSource_0", jm_getSource_0 ), ( "jm_setSource_1", jm_setSource_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_EVENT", jstatic_NULL_EVENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_EVENT : JR.M
jstatic_NULL_EVENT s =
    JR.static "AllBinaryEventObject" jclinit "NULL_EVENT"
        (JR.new jnew_1 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "source" "" JR.this (JR.local "anyType")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getSource_0 : JR.Method
jm_getSource_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "source") ])
        (jregister jheap)
        jthis
        jargs


jm_setSource_1 : JR.Method
jm_setSource_1 jheap jthis jargs =
    JR.method [ ( "source", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "source" "" JR.this (JR.local "source")) ])
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

