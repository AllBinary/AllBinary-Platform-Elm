module Org.Allbinary.Layer.Relationship.MiddleRelativeLayerRelationship exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer.relationship
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Layer.Relationship.RelativeLayerRelationship as RelativeLayerRelationship


jclass : String
jclass =
    "MiddleRelativeLayerRelationship"


jchain : List String
jchain =
    [ "MiddleRelativeLayerRelationship" ]
        ++ RelativeLayerRelationship.jchain


jfields : List ( String, JR.JValue )
jfields =
    RelativeLayerRelationship.jfields ++ []


jvtable =
    JR.vtable
        []
        RelativeLayerRelationship.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MiddleRelativeLayerRelationship"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RelativeLayerRelationship.jinit_3 JR.this [ (JR.local "layer"), (JR.invoke "createXY_2" (JR.callStatic PointFactory.jm_getInstance_0 []) [ (JR.invoke "getHalfWidth_0" (JR.local "layer") []), (JR.invoke "getHalfHeight_0" (JR.local "layer") []) ]), (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

