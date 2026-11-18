module Org.Allbinary.Graphics.Form.ScrollSelectionFormHorizontalDx exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.ItemIndexDx as ItemIndexDx


jclass : String
jclass =
    "ScrollSelectionFormHorizontalDx"


jchain : List String
jchain =
    [ "ScrollSelectionFormHorizontalDx" ]
        ++ ItemIndexDx.jchain


jfields : List ( String, JR.JValue )
jfields =
    ItemIndexDx.jfields ++ [ ( "scrollSelectionForm", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getDx_4", jm_getDx_4 ) ]
        ItemIndexDx.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScrollSelectionFormHorizontalDx"
        [ ( "jm_getDx_4", jm_getDx_4 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "scrollSelectionForm", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ItemIndexDx.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "scrollSelectionForm" "" JR.this (JR.local "scrollSelectionForm")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getDx_4 : JR.Method
jm_getDx_4 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSelectedIndexForPointHorizontalDx_4" (JR.thisField "scrollSelectionForm") [ (JR.local "index"), (JR.local "item"), (JR.local "dx"), (JR.local "dy") ]) ])
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

