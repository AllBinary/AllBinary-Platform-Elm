module Org.Allbinary.Layer.Event.LayerManagerEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "LayerManagerEvent"


jchain : List String
jchain =
    [ "LayerManagerEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "layerInterface", JR.defaultOf "" ), ( "crud", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getLayerInterface_0", jm_getLayerInterface_0 )
        , ( "setLayerInterface_1", jm_setLayerInterface_1 )
        , ( "toString_0", jm_toString_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerManagerEvent"
        [ ( "jm_getLayerInterface_0", jm_getLayerInterface_0 ), ( "jm_setLayerInterface_1", jm_setLayerInterface_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "crud", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "layerManager") ]),
                JR.exec (JR.setField "layerInterface" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "crud" "" JR.this (JR.local "crud")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getLayerInterface_0 : JR.Method
jm_getLayerInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "layerInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerInterface_1 : JR.Method
jm_setLayerInterface_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "layerInterface" "" JR.this (JR.local "layerInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "LayerManagerEvent: \n") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "LayerInterface: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.invoke "getLayerInterface_0" JR.this []) []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "\nCRUD: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "crud") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

