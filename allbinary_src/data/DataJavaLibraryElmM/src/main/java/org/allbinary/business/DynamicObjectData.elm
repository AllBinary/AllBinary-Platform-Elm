module Org.Allbinary.Business.DynamicObjectData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business
-}

import JR



jclass : String
jclass =
    "DynamicObjectData"


jchain : List String
jchain =
    [ "DynamicObjectData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DynamicObjectData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "DynamicObjectData" jclinit "NAME"
        (JR.str "DYNAMICCOMPONENT_NAME")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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

