module Org.Allbinary.Layer.LayerManagerLoggingBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR



jclass : String
jclass =
    "LayerManagerLoggingBase"


jchain : List String
jchain =
    [ "LayerManagerLoggingBase" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "append_1", jm_append_1 )
        , ( "appendAt_2", jm_appendAt_2 )
        , ( "remove_1", jm_remove_1 )
        , ( "removeResult_3", jm_removeResult_3 )
        , ( "clear_0", jm_clear_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerManagerLoggingBase"
        [ ( "jm_append_1", jm_append_1 ), ( "jm_appendAt_2", jm_appendAt_2 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_removeResult_3", jm_removeResult_3 ), ( "jm_clear_0", jm_clear_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_appendAt_2 : JR.Method
jm_appendAt_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "index", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_removeResult_3 : JR.Method
jm_removeResult_3 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "layerInterface", "" ), ( "result", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
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

