module Org.Allbinary.Game.Combat.Destroy.DestroyedLayerProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.destroy
-}

import JR
import Org.Allbinary.Layer.BasicLayerProcessor as BasicLayerProcessor
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyEventCircularStaticPool as DestroyEventCircularStaticPool
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEventHandler as DestroyedEventHandler


jclass : String
jclass =
    "DestroyedLayerProcessor"


jchain : List String
jchain =
    [ "DestroyedLayerProcessor" ]
        ++ BasicLayerProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicLayerProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "process_1", jm_process_1 ) ]
        BasicLayerProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DestroyedLayerProcessor"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_DESTROYED_LAYER_PROCESSOR", jstatic_DESTROYED_LAYER_PROCESSOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_DESTROYED_LAYER_PROCESSOR : JR.M
jstatic_DESTROYED_LAYER_PROCESSOR s =
    JR.static "DestroyedLayerProcessor" jclinit "DESTROYED_LAYER_PROCESSOR"
        BasicLayerProcessor.jstatic_NULL_LAYER_PROCESSOR
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicLayerProcessor.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR" "" (JR.new jnew_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_DESTROYED_LAYER_PROCESSOR ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getList_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "destroyedEventHandler" "" (JR.callStatic DestroyedEventHandler.jm_getInstance_0 []), 
                    JR.declare "destroyEventCircularStaticPool" "" (JR.callStatic DestroyEventCircularStaticPool.jm_getInstance_0 []), 
                    JR.declare "destroyedEvent" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "layerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71534 -> (JR.setLocal "index" "I" (JR.lit jwN71534))) JR.increment) ]) (JR.run [ 
                        JR.declare "layerInterfaceCanBeNull" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "layerInterfaceCanBeNull") JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "layerInterface" "" (JR.local "layerInterfaceCanBeNull")), 
                            JR.exec (JR.invoke "remove_1" (JR.local "allBinaryLayerManager") [ (JR.local "layerInterface") ]), 
                            JR.exec (JR.setLocal "destroyedEvent" "" (JR.invoke "getInstanceForLayer_1" (JR.local "destroyEventCircularStaticPool") [ (JR.local "layerInterface") ])), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.local "destroyedEventHandler") [ (JR.local "destroyedEvent") ]) ]) (JR.run [ 
                            JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []) ]) ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.local "list") []) ])
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

