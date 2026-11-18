module Org.Allbinary.Ag.Game.Vector.HealthVectorData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.ag.game.vector
-}

import JR



jclass : String
jclass =
    "HealthVectorData"


jchain : List String
jchain =
    [ "HealthVectorData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HealthVectorData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_points", jstatic_points ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_points : JR.M
jstatic_points s =
    JR.static "HealthVectorData" jclinit "points"
        (JR.arrayOf "" [ (JR.arrayOf "" [ (JR.arrayOf "I" [ (JR.int 2), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 3), (JR.int 2) ]), (JR.arrayOf "I" [ (JR.int 3), (JR.int 2) ]), (JR.arrayOf "I" [ (JR.int 4), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 4), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 5), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 5), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 6), (JR.int 2) ]), (JR.arrayOf "I" [ (JR.int 6), (JR.int 2) ]), (JR.arrayOf "I" [ (JR.int 6), (JR.int 3) ]), (JR.arrayOf "I" [ (JR.int 6), (JR.int 3) ]), (JR.arrayOf "I" [ (JR.int 3), (JR.int 6) ]), (JR.arrayOf "I" [ (JR.int 3), (JR.int 6) ]), (JR.arrayOf "I" [ (JR.int 0), (JR.int 3) ]), (JR.arrayOf "I" [ (JR.int 0), (JR.int 3) ]), (JR.arrayOf "I" [ (JR.int 0), (JR.int 2) ]), (JR.arrayOf "I" [ (JR.int 0), (JR.int 2) ]), (JR.arrayOf "I" [ (JR.int 1), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 1), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 2), (JR.int 1) ]), (JR.arrayOf "I" [ (JR.int 1000), (JR.int 1000) ]) ]) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

