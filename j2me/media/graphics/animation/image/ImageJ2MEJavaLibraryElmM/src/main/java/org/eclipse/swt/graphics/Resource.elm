module Org.Eclipse.Swt.Graphics.Resource exposing (..)

{-| Generated Code Do Not Modify package org.eclipse.swt.graphics
-}

import JR



jclass : String
jclass =
    "Resource"


jchain : List String
jchain =
    [ "Resource" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "dispose_0", jm_dispose_0 )
        , ( "isDisposed_0", jm_isDisposed_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Resource"
        [ ( "jm_dispose_0", jm_dispose_0 ), ( "jm_isDisposed_0", jm_isDisposed_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_dispose_0 : JR.Method
jm_dispose_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isDisposed_0 : JR.Method
jm_isDisposed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

