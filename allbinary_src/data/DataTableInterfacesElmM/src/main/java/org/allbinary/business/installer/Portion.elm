module Org.Allbinary.Business.Installer.Portion exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.installer
-}

import JR



jclass : String
jclass =
    "Portion"


jchain : List String
jchain =
    [ "Portion" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "current", JR.defaultOf "" ), ( "total", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getCurrent_0", jm_getCurrent_0 )
        , ( "getTotal_0", jm_getTotal_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Portion"
        [ ( "jm_getCurrent_0", jm_getCurrent_0 ), ( "jm_getTotal_0", jm_getTotal_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "hashMap", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "current" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.str "current") ])), 
                    JR.exec (JR.setField "total" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.str "total") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getCurrent_0 : JR.Method
jm_getCurrent_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "current") ])
        (jregister jheap)
        jthis
        jargs


jm_getTotal_0 : JR.Method
jm_getTotal_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "total") ])
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

