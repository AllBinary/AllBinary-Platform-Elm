module Org.Allbinary.Layer.LayerManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Logic.ABSystemWrapper as ABSystemWrapper
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Thread.SynchObject as SynchObject
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "LayerManager"


jchain : List String
jchain =
    [ "LayerManager" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "systemWrapper", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "layerManagerLogging", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "anyType", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "contains_1", jm_contains_1 )
        , ( "update_1", jm_update_1 )
        , ( "insert_1", jm_insert_1 )
        , ( "append_1", jm_append_1 )
        , ( "appendAt_2", jm_appendAt_2 )
        , ( "remove_1", jm_remove_1 )
        , ( "getLayerAt_1", jm_getLayerAt_1 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "cleanup_0", jm_cleanup_0 )
        , ( "paint_3", jm_paint_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerManager"
        [ ( "jm_contains_1", jm_contains_1 ), ( "jm_update_1", jm_update_1 ), ( "jm_insert_1", jm_insert_1 ), ( "jm_append_1", jm_append_1 ), ( "jm_appendAt_2", jm_appendAt_2 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_getLayerAt_1", jm_getLayerAt_1 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_cleanup_0", jm_cleanup_0 ), ( "jm_paint_3", jm_paint_3 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "layerManagerLogging", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "systemWrapper" "" JR.this (JR.callStatic ABSystemWrapper.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "anyType" "" JR.this (JR.new SynchObject.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.setField "layerManagerLogging" "" JR.this (JR.local "layerManagerLogging")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_contains_1 : JR.Method
jm_contains_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "layerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "had" "Z" (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "layerInterface") ]), 
                    JR.ifElse (JR.local "had") (JR.run [ 
                        JR.declare "nextLayerInterface" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68556 -> (JR.setLocal "index" "I" (JR.lit jwN68556))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "nextLayerInterface" "" (JR.invoke "get_1" (JR.thisField "list") [ (JR.local "index") ])), 
                            JR.ifElse (JR.map2 JR.greater (JR.invoke "getZP_0" (JR.local "layerInterface") []) (JR.invoke "getZP_0" (JR.local "nextLayerInterface") [])) (JR.run [ 
                                JR.exec (JR.invoke "addAt_2" (JR.thisField "list") [ (JR.local "index"), (JR.local "layerInterface") ]), 
                                JR.returnVoid ]) identity ]) ], 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "layerInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_insert_1 : JR.Method
jm_insert_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "nextLayerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68950 -> (JR.setLocal "index" "I" (JR.lit jwN68950))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextLayerInterface" "" (JR.invoke "get_1" (JR.thisField "list") [ (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getZP_0" (JR.local "layerInterface") []) (JR.invoke "getZP_0" (JR.local "nextLayerInterface") [])) (JR.run [ 
                            JR.exec (JR.invoke "appendAt_2" JR.this [ (JR.local "layerInterface"), (JR.local "index") ]), 
                            JR.returnVoid ]) identity ]) ], 
                    JR.exec (JR.invoke "append_1" JR.this [ (JR.local "layerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" (JR.thisField "layerManagerLogging") [ (JR.local "layerInterface") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "layerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_appendAt_2 : JR.Method
jm_appendAt_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "appendAt_2" (JR.thisField "layerManagerLogging") [ (JR.local "layerInterface"), (JR.local "index") ]), 
                    JR.exec (JR.invoke "addAt_2" (JR.thisField "list") [ (JR.local "index"), (JR.local "layerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.exec (JR.invoke "remove_1" (JR.thisField "layerManagerLogging") [ (JR.local "layerInterface") ]), 
                        JR.declare "result" "Z" (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "layerInterface") ]), 
                        JR.exec (JR.invoke "removeResult_3" (JR.thisField "layerManagerLogging") [ JR.this, (JR.local "layerInterface"), (JR.local "result") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLayerAt_1 : JR.Method
jm_getLayerAt_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_cleanup_0 : JR.Method
jm_cleanup_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.exec (JR.invoke "clear_0" (JR.thisField "list") []), 
                        JR.exec (JR.invoke "clear_0" (JR.thisField "layerManagerLogging") []), 
                        JR.exec (JR.invoke "gc_0" (JR.thisField "tsUtil") []), 
                        JR.exec (JR.invoke "gc_0" (JR.thisField "tsUtil") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_3 : JR.Method
jm_paint_3 jheap jthis jargs =
    JR.method [ ( "g", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.declare "comp" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.thisField "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN70071 -> (JR.setLocal "index" "I" (JR.lit jwN70071))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                            JR.exec (JR.setLocal "comp" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index"))), 
                            JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "comp") JR.null) (JR.invoke "isVisible_0" (JR.local "comp") [])) (JR.run [ 
                                JR.exec (JR.invoke "paint_1" (JR.local "comp") [ (JR.local "g") ]) ]) identity ]) ] ]) ])
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

