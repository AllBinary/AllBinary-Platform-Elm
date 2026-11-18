module Org.Allbinary.Game.Tracking.TrackingEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.tracking
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Game.Tracking.TrackingEventHandler as TrackingEventHandler


jclass : String
jclass =
    "TrackingEvent"


jchain : List String
jchain =
    [ "TrackingEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "layerInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "getLayerInterface_0", jm_getLayerInterface_0 )
        , ( "setLayerInterface_1", jm_setLayerInterface_1 )
        , ( "setLayerInterfaceForCircularStaticPool_1", jm_setLayerInterfaceForCircularStaticPool_1 )
        , ( "toString_0", jm_toString_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TrackingEvent"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_getLayerInterface_0", jm_getLayerInterface_0 ), ( "jm_setLayerInterface_1", jm_setLayerInterface_1 ), ( "jm_setLayerInterfaceForCircularStaticPool_1", jm_setLayerInterfaceForCircularStaticPool_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "allBinaryLayerInterface") ]),
                JR.exec (JR.setField "layerInterface" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "allBinaryLayerInterface") (JR.callStatic TrackingEventHandler.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.invoke "setLayerInterface_1" JR.this [ (JR.local "allBinaryLayerInterface") ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setSource_1" JR.this [ (JR.local "anyType") ]) ])
        (jregister jheap)
        jthis
        jargs


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


jm_setLayerInterfaceForCircularStaticPool_1 : JR.Method
jm_setLayerInterfaceForCircularStaticPool_1 jheap jthis jargs =
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
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "TrackingEvent: \n") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "LayerInterface: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "layerInterface") []) ]), 
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

