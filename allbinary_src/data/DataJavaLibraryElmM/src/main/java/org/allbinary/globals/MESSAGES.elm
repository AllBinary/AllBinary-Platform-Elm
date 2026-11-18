module Org.Allbinary.Globals.MESSAGES exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.globals
-}

import JR



jclass : String
jclass =
    "MESSAGES"


jchain : List String
jchain =
    [ "MESSAGES" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MESSAGES"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_CONTACTADMIN", jstatic_CONTACTADMIN ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_CONTACTADMIN : JR.M
jstatic_CONTACTADMIN s =
    JR.static "MESSAGES" jclinit "CONTACTADMIN"
        (JR.str "Please contact the administrator.")
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

