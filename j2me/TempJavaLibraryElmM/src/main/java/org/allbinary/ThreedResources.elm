module Org.Allbinary.ThreedResources exposing (..)

{-| Generated Code Do Not Modify package org.allbinary
-}

import JR



jclass : String
jclass =
    "ThreedResources"


jchain : List String
jchain =
    [ "ThreedResources" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getThreedResources_0", jm_getThreedResources_0 )
        , ( "add_0", jm_add_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ThreedResources"
        [ ( "jm_getThreedResources_0", jm_getThreedResources_0 ), ( "jm_add_0", jm_add_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_threedResources", jstatic_threedResources ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_threedResources : JR.M
jstatic_threedResources s =
    JR.static "ThreedResources" jclinit "threedResources"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getThreedResources_0 : JR.Method
jm_getThreedResources_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_threedResources ])
        (jregister jheap)
        jthis
        jargs


jm_add_0 : JR.Method
jm_add_0 jheap jthis jargs =
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

