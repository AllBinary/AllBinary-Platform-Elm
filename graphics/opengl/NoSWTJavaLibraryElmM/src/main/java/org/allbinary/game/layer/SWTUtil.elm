module Org.Allbinary.Game.Layer.SWTUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR



jclass : String
jclass =
    "SWTUtil"


jchain : List String
jchain =
    [ "SWTUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SWTUtil"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_isSWT", jstatic_isSWT ), ( "jstatic_SWT", jstatic_SWT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_isSWT : JR.M
jstatic_isSWT s =
    JR.static "SWTUtil" jclinit "isSWT"
        (JR.bool False)
        s


jstatic_SWT : JR.M
jstatic_SWT s =
    JR.static "SWTUtil" jclinit "SWT"
        (JR.str "SWT")
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

