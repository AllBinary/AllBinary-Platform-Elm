module Org.Allbinary.Data.Tables.TableDataFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tables
-}

import JR
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import JInteger


jclass : String
jclass =
    "TableDataFactory"


jchain : List String
jchain =
    [ "TableDataFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INTEGER_MAX_VALUE_STRING", JR.defaultOf "" ), ( "ZERO_STRING", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TableDataFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TableDataFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "INTEGER_MAX_VALUE_STRING" "" JR.this (JR.callStatic JInteger.jm_toString_1 [ JInteger.jstatic_MAX_VALUE ])),
                JR.exec (JR.setField "ZERO_STRING" "" JR.this (JR.field "ZERO" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []))),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

