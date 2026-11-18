module Org.Allbinary.Business.Entry.EntryData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.entry
-}

import JR



jclass : String
jclass =
    "EntryData"


jchain : List String
jchain =
    [ "EntryData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ID", JR.defaultOf "" ), ( "ENCRYPTION", JR.defaultOf "" ), ( "TIMECREATED", JR.defaultOf "" ), ( "LASTMODIFIED", JR.defaultOf "" ), ( "DEFAULT", JR.defaultOf "" ), ( "SPECIAL", JR.defaultOf "" ), ( "ENABLE", JR.defaultOf "" ), ( "YES", JR.defaultOf "" ), ( "NO", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EntryData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "EntryData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ID" "" JR.this (JR.str "ENTRY_ID")),
                JR.exec (JR.setField "ENCRYPTION" "" JR.this (JR.str "ENTRY_ENCRYPTION")),
                JR.exec (JR.setField "TIMECREATED" "" JR.this (JR.str "ENTRY_TIMECREATED")),
                JR.exec (JR.setField "LASTMODIFIED" "" JR.this (JR.str "ENTRY_LASTMODIFIED")),
                JR.exec (JR.setField "DEFAULT" "" JR.this (JR.str "ENTRY_DEFAULT")),
                JR.exec (JR.setField "SPECIAL" "" JR.this (JR.str "ENTRY_SPECIAL")),
                JR.exec (JR.setField "ENABLE" "" JR.this (JR.str "ENTRY_ENABLE")),
                JR.exec (JR.setField "YES" "" JR.this (JR.str "Yes")),
                JR.exec (JR.setField "NO" "" JR.this (JR.str "No")),
                identity,
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

