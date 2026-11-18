module Org.Allbinary.Game.Displayable.Canvas.TitleResource exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR



jclass : String
jclass =
    "TitleResource"


jchain : List String
jchain =
    [ "TitleResource" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TitleResource"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_RESOURCE_TITLE", jstatic_RESOURCE_TITLE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_RESOURCE_TITLE : JR.M
jstatic_RESOURCE_TITLE s =
    JR.static "TitleResource" jclinit "RESOURCE_TITLE"
        (JR.str "/title_sprite_100_by_100.png")
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

