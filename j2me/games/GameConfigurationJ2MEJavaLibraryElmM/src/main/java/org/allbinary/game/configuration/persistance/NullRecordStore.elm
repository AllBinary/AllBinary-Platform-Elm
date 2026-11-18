module Org.Allbinary.Game.Configuration.Persistance.NullRecordStore exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR
import Javax.Microedition.Rms.RecordStore as RecordStore


jclass : String
jclass =
    "NullRecordStore"


jchain : List String
jchain =
    [ "NullRecordStore" ]
        ++ RecordStore.jchain


jfields : List ( String, JR.JValue )
jfields =
    RecordStore.jfields ++ []


jvtable =
    JR.vtable
        []
        RecordStore.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullRecordStore"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_RECORD_STORE", jstatic_NULL_RECORD_STORE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_RECORD_STORE : JR.M
jstatic_NULL_RECORD_STORE s =
    JR.static "NullRecordStore" jclinit "NULL_RECORD_STORE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect RecordStore.jinit_0 JR.this []),
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

