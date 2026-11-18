module Org.Allbinary.Layer.AllBinaryLayerManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Layer.LayerManager as LayerManager
import Org.Allbinary.Layer.Event.LayerManagerEvent as LayerManagerEvent
import Org.Allbinary.Layer.Event.LayerManagerEventHandler as LayerManagerEventHandler
import Org.Allbinary.Layer.LayerManagerNoDebug as LayerManagerNoDebug


jclass : String
jclass =
    "AllBinaryLayerManager"


jchain : List String
jchain =
    [ "AllBinaryLayerManager" ]
        ++ LayerManager.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerManager.jfields ++ [ ( "layerManagerEventHandler", JR.defaultOf "" ), ( "createLayerManagerEvent", JR.defaultOf "" ), ( "deleteLayerManagerEvent", JR.defaultOf "" ), ( "basicLayerProcessorArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getLayerProcessorArray_0", jm_getLayerProcessorArray_0 )
        , ( "setLayerProcessorArray_1", jm_setLayerProcessorArray_1 )
        , ( "log_0", jm_log_0 )
        , ( "append_1", jm_append_1 )
        , ( "appendAt_2", jm_appendAt_2 )
        , ( "appendProcessors_1", jm_appendProcessors_1 )
        , ( "remove_1", jm_remove_1 )
        , ( "process_0", jm_process_0 )
        , ( "cleanup_0", jm_cleanup_0 ) ]
        LayerManager.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryLayerManager"
        [ ( "jm_getLayerProcessorArray_0", jm_getLayerProcessorArray_0 ), ( "jm_setLayerProcessorArray_1", jm_setLayerProcessorArray_1 ), ( "jm_log_0", jm_log_0 ), ( "jm_append_1", jm_append_1 ), ( "jm_appendAt_2", jm_appendAt_2 ), ( "jm_appendProcessors_1", jm_appendProcessors_1 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_process_0", jm_process_0 ), ( "jm_cleanup_0", jm_cleanup_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerManager.jinit_1 JR.this [ (JR.callStatic LayerManagerNoDebug.jm_getInstance_0 []) ]),
                JR.exec (JR.setField "layerManagerEventHandler" "" JR.this (JR.callStatic LayerManagerEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "createLayerManagerEvent" "" JR.this (JR.new LayerManagerEvent.jnew_2 [ JR.this, (JR.field "CREATE" (JR.thisField "layerManagerEventHandler")) ])),
                JR.exec (JR.setField "deleteLayerManagerEvent" "" JR.this (JR.new LayerManagerEvent.jnew_2 [ JR.this, (JR.field "DELETE" (JR.thisField "layerManagerEventHandler")) ])),
                JR.exec (JR.setField "basicLayerProcessorArray" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getLayerProcessorArray_0 : JR.Method
jm_getLayerProcessorArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicLayerProcessorArray") ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerProcessorArray_1 : JR.Method
jm_setLayerProcessorArray_1 jheap jthis jargs =
    JR.method [ ( "layerProcessorArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicLayerProcessorArray" "" JR.this (JR.local "layerProcessorArray")) ])
        (jregister jheap)
        jthis
        jargs


jm_log_0 : JR.Method
jm_log_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "basicLayerProcessorArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68308 -> (JR.setLocal "index" "I" (JR.lit jwN68308))) JR.increment) ]) (JR.run [ 
                        JR.declare "layerProcessorInterface" "" (JR.aget (JR.thisField "basicLayerProcessorArray") (JR.local "index")) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" JR.this [ (JR.local "layerInterface") ])) (JR.run [ 
                        JR.exec (JR.invoke "appendProcessors_1" JR.this [ (JR.local "layerInterface") ]), 
                        JR.exec (JR.callVia LayerManager.jvtable "append_1" JR.this [ (JR.local "layerInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_appendAt_2 : JR.Method
jm_appendAt_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" JR.this [ (JR.local "layerInterface") ])) (JR.run [ 
                        JR.exec (JR.invoke "appendProcessors_1" JR.this [ (JR.local "layerInterface") ]), 
                        JR.exec (JR.callVia LayerManager.jvtable "appendAt_2" JR.this [ (JR.local "layerInterface"), (JR.local "index") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_appendProcessors_1 : JR.Method
jm_appendProcessors_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLayerInterface_1" (JR.thisField "createLayerManagerEvent") [ (JR.local "layerInterface") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "layerManagerEventHandler") [ (JR.thisField "createLayerManagerEvent") ]), 
                    JR.declare "layerProcessorInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "basicLayerProcessorArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN68949 -> (JR.setLocal "index" "I" (JR.lit jwN68949))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerProcessorInterface" "" (JR.aget (JR.thisField "basicLayerProcessorArray") (JR.local "index"))), 
                        JR.ifElse (JR.invoke "isProcessorLayer_1" (JR.local "layerProcessorInterface") [ (JR.local "layerInterface") ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.invoke "getLayerManager_0" (JR.local "layerProcessorInterface") []) [ (JR.local "layerInterface") ]) ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLayerInterface_1" (JR.thisField "deleteLayerManagerEvent") [ (JR.local "layerInterface") ]), 
                    JR.exec (JR.invoke "fireDeleteEvent_1" (JR.thisField "layerManagerEventHandler") [ (JR.thisField "deleteLayerManagerEvent") ]), 
                    JR.declare "layerProcessorInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "basicLayerProcessorArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN69275 -> (JR.setLocal "index" "I" (JR.lit jwN69275))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerProcessorInterface" "" (JR.aget (JR.thisField "basicLayerProcessorArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "remove_1" (JR.invoke "getLayerManager_0" (JR.local "layerProcessorInterface") []) [ (JR.local "layerInterface") ]) ]) ], 
                    JR.exec (JR.callVia LayerManager.jvtable "remove_1" JR.this [ (JR.local "layerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "layerProcessorInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "basicLayerProcessorArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69641 -> (JR.setLocal "index" "I" (JR.lit jwN69641))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerProcessorInterface" "" (JR.aget (JR.thisField "basicLayerProcessorArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "process_1" (JR.local "layerProcessorInterface") [ JR.this ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_cleanup_0 : JR.Method
jm_cleanup_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "layerProcessorInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "basicLayerProcessorArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69892 -> (JR.setLocal "index" "I" (JR.lit jwN69892))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerProcessorInterface" "" (JR.aget (JR.thisField "basicLayerProcessorArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "cleanup_0" (JR.invoke "getLayerManager_0" (JR.local "layerProcessorInterface") []) []) ]) ], 
                    JR.exec (JR.callVia LayerManager.jvtable "cleanup_0" JR.this []) ])
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

