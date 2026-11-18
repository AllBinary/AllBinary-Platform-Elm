module Org.Allbinary.Init.Init exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.init
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Init.InitInterface as InitInterface


jclass : String
jclass =
    "Init"


jchain : List String
jchain =
    [ "Init" ]
        ++ InitInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Init"
        [ ( "jm_init_0", jm_init_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

