module Org.Allbinary.View.CenterViewPositionFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.view
-}

import JR
import Org.Allbinary.View.CenterStaticViewPositionFactory as CenterStaticViewPositionFactory


jclass : String
jclass =
    "CenterViewPositionFactory"


jchain : List String
jchain =
    [ "CenterViewPositionFactory" ]
        ++ CenterStaticViewPositionFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    CenterStaticViewPositionFactory.jfields ++ []


jvtable =
    JR.vtable
        []
        CenterStaticViewPositionFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CenterViewPositionFactory"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CenterStaticViewPositionFactory.jinit_0 JR.this []),
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

