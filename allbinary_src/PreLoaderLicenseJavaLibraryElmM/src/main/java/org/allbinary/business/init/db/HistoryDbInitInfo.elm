module Org.Allbinary.Business.Init.Db.HistoryDbInitInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init.db
-}

import JR
import Org.Allbinary.Business.Init.Db.DbInitInfo as DbInitInfo


jclass : String
jclass =
    "HistoryDbInitInfo"


jchain : List String
jchain =
    [ "HistoryDbInitInfo" ]
        ++ DbInitInfo.jchain


jfields : List ( String, JR.JValue )
jfields =
    DbInitInfo.jfields ++ []


jvtable =
    JR.vtable
        []
        DbInitInfo.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HistoryDbInitInfo"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_INITFILE", jstatic_INITFILE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INITFILE : JR.M
jstatic_INITFILE s =
    JR.static "HistoryDbInitInfo" jclinit "INITFILE"
        (JR.str "historydbinitdata.dat")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect DbInitInfo.jinit_2 JR.this [ jstatic_INITFILE, (JR.bool True) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "read", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect DbInitInfo.jinit_2 JR.this [ jstatic_INITFILE, (JR.local "read") ]),
                identity,
                identity ])
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

