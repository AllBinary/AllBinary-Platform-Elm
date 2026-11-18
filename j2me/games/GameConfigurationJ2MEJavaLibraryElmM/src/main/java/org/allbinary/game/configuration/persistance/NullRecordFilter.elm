module Org.Allbinary.Game.Configuration.Persistance.NullRecordFilter exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR
import Javax.Microedition.Rms.RecordFilter as RecordFilter


jclass : String
jclass =
    "NullRecordFilter"


jchain : List String
jchain =
    [ "NullRecordFilter" ]
        ++ RecordFilter.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "matches_1", jm_matches_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullRecordFilter"
        [ ( "jm_matches_1", jm_matches_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_RECORD_FILTER", jstatic_NULL_RECORD_FILTER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_RECORD_FILTER : JR.M
jstatic_NULL_RECORD_FILTER s =
    JR.static "NullRecordFilter" jclinit "NULL_RECORD_FILTER"
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


jm_matches_1 : JR.Method
jm_matches_1 jheap jthis jargs =
    JR.method [ ( "candidate", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
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

