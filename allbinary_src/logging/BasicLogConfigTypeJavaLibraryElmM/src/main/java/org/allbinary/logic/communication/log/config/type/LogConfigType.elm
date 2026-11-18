module Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigType exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log.config.type
-}

import JR



jclass : String
jclass =
    "LogConfigType"


jchain : List String
jchain =
    [ "LogConfigType" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "description", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getName_0", jm_getName_0 )
        , ( "getDescription_0", jm_getDescription_0 )
        , ( "setName_1", jm_setName_1 )
        , ( "setDescription_1", jm_setDescription_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogConfigType"
        [ ( "jm_getName_0", jm_getName_0 ), ( "jm_getDescription_0", jm_getDescription_0 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_setDescription_1", jm_setDescription_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "description", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "description" "" JR.this (JR.local "description")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getDescription_0 : JR.Method
jm_getDescription_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "description") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setDescription_1 : JR.Method
jm_setDescription_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "description" "" JR.this (JR.local "value")) ])
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

