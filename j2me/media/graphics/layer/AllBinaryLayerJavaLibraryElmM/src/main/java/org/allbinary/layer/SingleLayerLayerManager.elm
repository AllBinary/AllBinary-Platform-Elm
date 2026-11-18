module Org.Allbinary.Layer.SingleLayerLayerManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Layer.LayerManager as LayerManager
import Org.Allbinary.Layer.LayerManagerNoDebug as LayerManagerNoDebug


jclass : String
jclass =
    "SingleLayerLayerManager"


jchain : List String
jchain =
    [ "SingleLayerLayerManager" ]
        ++ LayerManager.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerManager.jfields ++ []


jvtable =
    JR.vtable
        []
        LayerManager.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SingleLayerLayerManager"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerManager.jinit_1 JR.this [ (JR.callStatic LayerManagerNoDebug.jm_getInstance_0 []) ]),
                identity,
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

