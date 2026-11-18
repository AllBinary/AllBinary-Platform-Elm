module Org.Allbinary.Game.Configuration.Persistance.NullRecordComparator exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR
import Javax.Microedition.Rms.RecordComparator as RecordComparator


jclass : String
jclass =
    "NullRecordComparator"


jchain : List String
jchain =
    [ "NullRecordComparator" ]
        ++ RecordComparator.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "compare_2", jm_compare_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullRecordComparator"
        [ ( "jm_compare_2", jm_compare_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_RECORD_COMPARATOR", jstatic_NULL_RECORD_COMPARATOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_RECORD_COMPARATOR : JR.M
jstatic_NULL_RECORD_COMPARATOR s =
    JR.static "NullRecordComparator" jclinit "NULL_RECORD_COMPARATOR"
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


jm_compare_2 : JR.Method
jm_compare_2 jheap jthis jargs =
    JR.method [ ( "rec1", "" ), ( "rec2", "" ) ] "I"
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

