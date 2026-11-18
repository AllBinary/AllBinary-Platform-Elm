module Org.Allbinary.Layer.Relationship.RelativeLayerRelationship exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer.relationship
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Graphics.RelativeRelationship as RelativeRelationship


jclass : String
jclass =
    "RelativeLayerRelationship"


jchain : List String
jchain =
    [ "RelativeLayerRelationship" ]
        ++ RelativeRelationship.jchain


jfields : List ( String, JR.JValue )
jfields =
    RelativeRelationship.jfields ++ [ ( "layer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getX_0", jm_getX_0 )
        , ( "getY_0", jm_getY_0 )
        , ( "getZ_0", jm_getZ_0 ) ]
        RelativeRelationship.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RelativeLayerRelationship"
        [ ( "jm_getX_0", jm_getX_0 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_getZ_0", jm_getZ_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "layer", "" ), ( "point", "" ), ( "typesAllowedList", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RelativeRelationship.jinit_2 JR.this [ (JR.local "point"), (JR.local "typesAllowedList") ]),
                JR.exec (JR.setField "layer" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "layer" "" JR.this (JR.local "layer")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.plus (JR.invoke "getXP_0" (JR.thisField "layer") []) (JR.callVia RelativeRelationship.jvtable "getX_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.plus (JR.invoke "getYP_0" (JR.thisField "layer") []) (JR.callVia RelativeRelationship.jvtable "getY_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getZ_0 : JR.Method
jm_getZ_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.plus (JR.invoke "getZP_0" (JR.thisField "layer") []) (JR.callVia RelativeRelationship.jvtable "getZ_0" JR.this [])) ])
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

