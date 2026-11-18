module Org.Allbinary.Game.Part.PartInterfaceUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part
-}

import JR



jclass : String
jclass =
    "PartInterfaceUtil"


jchain : List String
jchain =
    [ "PartInterfaceUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getZeroArray_0", jm_getZeroArray_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PartInterfaceUtil"
        [ ( "jm_getZeroArray_0", jm_getZeroArray_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "PartInterfaceUtil" jclinit "SINGLETON"
        (JR.newArray "" [ (JR.int 0) ])
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


jm_getZeroArray_0 : JR.Method
jm_getZeroArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
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

