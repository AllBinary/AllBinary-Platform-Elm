module Org.Allbinary.Game.Configuration.Persistance.PersistanceStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR



jclass : String
jclass =
    "PersistanceStrings"


jchain : List String
jchain =
    [ "PersistanceStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SAVING", JR.defaultOf "" ), ( "NUMBER_OF_RECORDS", JR.defaultOf "" ), ( "LOADING_ID", JR.defaultOf "" ), ( "LOAD_ALL", JR.defaultOf "" ), ( "DELETING_WITH_ID", JR.defaultOf "" ), ( "CLOSING_RECORDSTORE", JR.defaultOf "" ), ( "NOT_SAVING", JR.defaultOf "" ), ( "ERROR_LOADING", JR.defaultOf "" ), ( "ERROR_LOADING_ID", JR.defaultOf "" ), ( "ID", JR.defaultOf "" ), ( "GAME_ACTION_INPUT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PersistanceStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PersistanceStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SAVING" "" JR.this (JR.str "Saving: ")),
                JR.exec (JR.setField "NUMBER_OF_RECORDS" "" JR.this (JR.str "Number of records: ")),
                JR.exec (JR.setField "LOADING_ID" "" JR.this (JR.str "Loading data with id: ")),
                JR.exec (JR.setField "LOAD_ALL" "" JR.this (JR.str "loadAll")),
                JR.exec (JR.setField "DELETING_WITH_ID" "" JR.this (JR.str "Deleting data with id: ")),
                JR.exec (JR.setField "CLOSING_RECORDSTORE" "" JR.this (JR.str "Closing RecordStore")),
                JR.exec (JR.setField "NOT_SAVING" "" JR.this (JR.str "Not Saving: ")),
                JR.exec (JR.setField "ERROR_LOADING" "" JR.this (JR.str "Error Loading gameActionInput: ")),
                JR.exec (JR.setField "ERROR_LOADING_ID" "" JR.this (JR.str "Error Loading id: ")),
                JR.exec (JR.setField "ID" "" JR.this (JR.str " id: ")),
                JR.exec (JR.setField "GAME_ACTION_INPUT" "" JR.this (JR.str " GameActionInput: ")),
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

