module DomData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR



jclass : String
jclass =
    "DomData"


jchain : List String
jchain =
    [ "DomData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DomData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_ID", jstatic_ID ), ( "jstatic_CHILD", jstatic_CHILD ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_VALUE", jstatic_VALUE ), ( "jstatic_INDEX", jstatic_INDEX ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "DomData" jclinit "ID"
        (JR.str "id")
        s


jstatic_CHILD : JR.M
jstatic_CHILD s =
    JR.static "DomData" jclinit "CHILD"
        (JR.str "child")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "DomData" jclinit "NAME"
        (JR.str "name")
        s


jstatic_VALUE : JR.M
jstatic_VALUE s =
    JR.static "DomData" jclinit "VALUE"
        (JR.str "value")
        s


jstatic_INDEX : JR.M
jstatic_INDEX s =
    JR.static "DomData" jclinit "INDEX"
        (JR.str "index")
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

