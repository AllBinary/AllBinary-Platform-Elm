module Org.Allbinary.Game.Layer.Identification.GroupLayerManagerListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.identification
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Layer.Event.LayerManagerEventHandler as LayerManagerEventHandler
import Org.Allbinary.Layer.Event.LayerManagerEventListener as LayerManagerEventListener
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GroupLayerManagerListener"


jchain : List String
jchain =
    [ "GroupLayerManagerListener" ]
        ++ LayerManagerEventListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerManagerEventListener.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "getGroupSizeFromInterface_1", jm_getGroupSizeFromInterface_1 )
        , ( "getGroupSize_1", jm_getGroupSize_1 )
        , ( "getList_1", jm_getList_1 )
        , ( "getListById_1", jm_getListById_1 )
        , ( "getGroupSizeById_1", jm_getGroupSizeById_1 )
        , ( "areAllOtherGroupsEmpty_1", jm_areAllOtherGroupsEmpty_1 )
        , ( "isIdInList_2", jm_isIdInList_2 )
        , ( "areAllOtherGroupsLessThan_2", jm_areAllOtherGroupsLessThan_2 )
        , ( "init_1", jm_init_1 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onCreateLayerManagerEvent_1", jm_onCreateLayerManagerEvent_1 )
        , ( "onDeleteLayerManagerEvent_1", jm_onDeleteLayerManagerEvent_1 )
        , ( "log_0", jm_log_0 ) ]
        LayerManagerEventListener.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GroupLayerManagerListener"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_getGroupSizeFromInterface_1", jm_getGroupSizeFromInterface_1 ), ( "jm_getGroupSize_1", jm_getGroupSize_1 ), ( "jm_getList_1", jm_getList_1 ), ( "jm_getListById_1", jm_getListById_1 ), ( "jm_getGroupSizeById_1", jm_getGroupSizeById_1 ), ( "jm_areAllOtherGroupsEmpty_1", jm_areAllOtherGroupsEmpty_1 ), ( "jm_isIdInList_2", jm_isIdInList_2 ), ( "jm_areAllOtherGroupsLessThan_2", jm_areAllOtherGroupsLessThan_2 ), ( "jm_init_1", jm_init_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onCreateLayerManagerEvent_1", jm_onCreateLayerManagerEvent_1 ), ( "jm_onDeleteLayerManagerEvent_1", jm_onDeleteLayerManagerEvent_1 ), ( "jm_log_0", jm_log_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "GroupLayerManagerListener" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerManagerEventListener.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "addListener_1" (JR.callStatic LayerManagerEventHandler.jm_getInstance_0 []) [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "groupList" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68907 -> (JR.setLocal "index" "I" (JR.lit jwN68907))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "groupList" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "clear_0" (JR.local "groupList") []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getGroupSizeFromInterface_1 : JR.Method
jm_getGroupSizeFromInterface_1 jheap jthis jargs =
    JR.method [ ( "groupInterfaceCompositeInterface", "" ) ] "I"
        (JR.run [ 
                    JR.declare "groupInterfaceArray" "" (JR.invoke "getGroupInterface_0" (JR.local "groupInterfaceCompositeInterface") []), 
                    JR.return (JR.invoke "getGroupSize_1" JR.this [ (JR.aget (JR.local "groupInterfaceArray") (JR.int 0)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGroupSize_1 : JR.Method
jm_getGroupSize_1 jheap jthis jargs =
    JR.method [ ( "groupInterface", "" ) ] "I"
        (JR.run [ 
                    JR.declare "id" "I" (JR.cast "I" (JR.invoke "getGroupId_0" (JR.local "groupInterface") [])), 
                    JR.return (JR.invoke "getGroupSizeById_1" JR.this [ (JR.local "id") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_1 : JR.Method
jm_getList_1 jheap jthis jargs =
    JR.method [ ( "groupInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "id" "I" (JR.cast "I" (JR.invoke "getGroupId_0" (JR.local "groupInterface") [])), 
                    JR.return (JR.invoke "getListById_1" JR.this [ (JR.local "id") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getListById_1 : JR.Method
jm_getListById_1 jheap jthis jargs =
    JR.method [ ( "groupId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "groupList" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "groupId")), 
                    JR.return (JR.local "groupList") ])
        (jregister jheap)
        jthis
        jargs


jm_getGroupSizeById_1 : JR.Method
jm_getGroupSizeById_1 jheap jthis jargs =
    JR.method [ ( "groupId", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "groupList" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "groupId")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "groupList") []), 
                    JR.return (JR.local "size") ])
        (jregister jheap)
        jthis
        jargs


jm_areAllOtherGroupsEmpty_1 : JR.Method
jm_areAllOtherGroupsEmpty_1 jheap jthis jargs =
    JR.method [ ( "groupInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "id" "I" (JR.cast "I" (JR.invoke "getGroupId_0" (JR.local "groupInterface") [])), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70060 -> (JR.setLocal "index" "I" (JR.lit jwN70060))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "id") (JR.local "index")) (JR.run [ 
                            JR.declare "groupSize" "I" (JR.invoke "getGroupSizeById_1" JR.this [ (JR.local "index") ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "groupSize") (JR.int 0)) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Group Size: ") ]) [ (JR.local "groupSize") ]) []), JR.this, (JR.str "areAllOtherGroupsEmpty") ]), 
                                JR.return (JR.bool False) ]) identity ]) identity ]) ], 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isIdInList_2 : JR.Method
jm_isIdInList_2 jheap jthis jargs =
    JR.method [ ( "id", "I" ), ( "excludeGroupList", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "excludeGroupList") []), 
                    JR.declare "groupInterfaceArray" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "groupInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "groupId" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70632 -> (JR.setLocal "index" "I" (JR.lit jwN70632))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "groupInterfaceArray" "" (JR.aget (JR.field "objectArray" (JR.local "excludeGroupList")) (JR.local "index"))), 
                        JR.declare "size2" "I" (JR.alength (JR.local "groupInterfaceArray")), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN70557 -> (JR.setLocal "index2" "I" (JR.lit jwN70557))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "groupInterface" "" (JR.aget (JR.local "groupInterfaceArray") (JR.local "index2"))), 
                            JR.exec (JR.setLocal "groupId" "I" (JR.cast "I" (JR.invoke "getGroupId_0" (JR.local "groupInterface") []))), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "groupId") (JR.local "id")) (JR.run [ 
                                JR.return (JR.bool True) ]) identity ]) ] ]) ], 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_areAllOtherGroupsLessThan_2 : JR.Method
jm_areAllOtherGroupsLessThan_2 jheap jthis jargs =
    JR.method [ ( "excludeGroupList", "" ), ( "maxSize", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70984 -> (JR.setLocal "index" "I" (JR.lit jwN70984))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isIdInList_2" JR.this [ (JR.local "index"), (JR.local "excludeGroupList") ])) (JR.run [ 
                            JR.declare "groupSize" "I" (JR.invoke "getGroupSizeById_1" JR.this [ (JR.local "index") ]), 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.local "groupSize") (JR.local "maxSize")) (JR.run [ 
                                JR.return (JR.bool False) ]) identity ]) identity ]) ], 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "total", "I" ) ] ""
        (JR.run [ 
                    JR.while (JR.map2 JR.lessEquals (JR.invoke "size_0" (JR.thisField "list") []) (JR.map2 JR.add (JR.local "total") (JR.int 1))) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.new BasicArrayListD.jnew_0 []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onCreateLayerManagerEvent_1 : JR.Method
jm_onCreateLayerManagerEvent_1 jheap jthis jargs =
    JR.method [ ( "layerManagerEvent", "" ) ] ""
        (JR.run [ 
                    JR.declare "layerInterface" "" (JR.invoke "getLayerInterface_0" (JR.local "layerManagerEvent") []), 
                    JR.declare "groupInterfaceArray" "" (JR.invoke "getGroupInterface_0" (JR.local "layerInterface") []), 
                    JR.declare "size" "I" (JR.alength (JR.local "groupInterfaceArray")), 
                    JR.declare "id" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "groupList" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71904 -> (JR.setLocal "index" "I" (JR.lit jwN71904))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "id" "I" (JR.cast "I" (JR.invoke "getGroupId_0" (JR.aget (JR.local "groupInterfaceArray") (JR.local "index")) []))), 
                        JR.exec (JR.setLocal "groupList" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "id"))), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "groupList") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "id: ") ]) [ (JR.local "id") ]) []), JR.this, (JR.str "onCreateLayerManagerEvent") ]) ]) identity, 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.local "groupList") [ (JR.local "layerInterface") ])) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "groupList") [ (JR.local "layerInterface") ]) ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_onDeleteLayerManagerEvent_1 : JR.Method
jm_onDeleteLayerManagerEvent_1 jheap jthis jargs =
    JR.method [ ( "layerManagerEvent", "" ) ] ""
        (JR.run [ 
                    JR.declare "layerInterface" "" (JR.invoke "getLayerInterface_0" (JR.local "layerManagerEvent") []), 
                    JR.declare "groupInterfaceArray" "" (JR.invoke "getGroupInterface_0" (JR.local "layerInterface") []), 
                    JR.declare "size" "I" (JR.alength (JR.local "groupInterfaceArray")), 
                    JR.declare "id" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "groupList" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72405 -> (JR.setLocal "index" "I" (JR.lit jwN72405))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "id" "I" (JR.cast "I" (JR.invoke "getGroupId_0" (JR.aget (JR.local "groupInterfaceArray") (JR.local "index")) []))), 
                        JR.exec (JR.setLocal "groupList" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "id"))), 
                        JR.exec (JR.invoke "remove_1" (JR.local "groupList") [ (JR.local "layerInterface") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_log_0 : JR.Method
jm_log_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "GROUP" "" (JR.str "Group: "), 
                    JR.declare "SPACE" "" (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])), 
                    JR.declare "TOTAL_LABEL" "" (JR.field "TOTAL_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN73079 -> (JR.setLocal "index" "I" (JR.lit jwN73079))) JR.decrement) ]) (JR.run [ 
                        JR.declare "groupList" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "GROUP") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SPACE") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "TOTAL_LABEL") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.local "groupList") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SPACE") ]) ]) ], 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "log") ]) ])
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

