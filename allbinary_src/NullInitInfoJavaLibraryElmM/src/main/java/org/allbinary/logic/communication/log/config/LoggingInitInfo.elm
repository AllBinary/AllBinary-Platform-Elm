module Org.Allbinary.Logic.Communication.Log.Config.LoggingInitInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log.config
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "LoggingInitInfo"


jchain : List String
jchain =
    [ "LoggingInitInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "write_0", jm_write_0 )
        , ( "read_0", jm_read_0 )
        , ( "setHasRead_1", jm_setHasRead_1 )
        , ( "updateIfNeeded_0", jm_updateIfNeeded_0 )
        , ( "isValid_0", jm_isValid_0 )
        , ( "set_1", jm_set_1 )
        , ( "get_0", jm_get_0 )
        , ( "getTypeList_0", jm_getTypeList_0 )
        , ( "getNumberOfLogConfigs_0", jm_getNumberOfLogConfigs_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LoggingInitInfo"
        [ ( "jm_write_0", jm_write_0 ), ( "jm_read_0", jm_read_0 ), ( "jm_setHasRead_1", jm_setHasRead_1 ), ( "jm_updateIfNeeded_0", jm_updateIfNeeded_0 ), ( "jm_isValid_0", jm_isValid_0 ), ( "jm_set_1", jm_set_1 ), ( "jm_get_0", jm_get_0 ), ( "jm_getTypeList_0", jm_getTypeList_0 ), ( "jm_getNumberOfLogConfigs_0", jm_getNumberOfLogConfigs_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_logConfigInfoList", jstatic_logConfigInfoList ), ( "jstatic_hasRead", jstatic_hasRead ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_logConfigInfoList : JR.M
jstatic_logConfigInfoList s =
    JR.static "LoggingInitInfo" jclinit "logConfigInfoList"
        JR.null
        s


jstatic_hasRead : JR.M
jstatic_hasRead s =
    JR.static "LoggingInitInfo" jclinit "hasRead"
        (JR.bool False)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_write_0 : JR.Method
jm_write_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setStatic "LoggingInitInfo.hasRead" "Z" (JR.bool False)) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_read_0 : JR.Method
jm_read_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try identity [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_setHasRead_1 : JR.Method
jm_setHasRead_1 jheap jthis jargs =
    JR.method [ ( "value", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "LoggingInitInfo.hasRead" "Z" (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_updateIfNeeded_0 : JR.Method
jm_updateIfNeeded_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ jstatic_hasRead) (JR.run [ 
                        JR.exec (JR.callStatic jm_read_0 []), 
                        JR.exec (JR.setStatic "LoggingInitInfo.hasRead" "Z" (JR.bool True)), 
                        JR.ifElse (JR.map2 JR.equals jstatic_logConfigInfoList JR.null) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Read Failed") ]) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isValid_0 : JR.Method
jm_isValid_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "logConfigInfoList", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "LoggingInitInfo.logConfigInfoList" "" (JR.local "logConfigInfoList")) ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic jm_updateIfNeeded_0 []), 
                    JR.return jstatic_logConfigInfoList ])
        (jregister jheap)
        jthis
        jargs


jm_getTypeList_0 : JR.Method
jm_getTypeList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic jm_updateIfNeeded_0 []), 
                    JR.declare "allLogTypeVector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" jstatic_logConfigInfoList []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67376 -> (JR.setLocal "index" "I" (JR.lit jwN67376))) JR.increment) ]) (JR.run [ 
                        JR.declare "logConfigInfo" "" (JR.aget (JR.field "objectArray" jstatic_logConfigInfoList) (JR.local "index")), 
                        JR.declare "logTypeVector" "" (JR.invoke "getTypeVector_0" (JR.local "logConfigInfo") []), 
                        JR.ifElse (JR.invoke "isEnabled_0" (JR.local "logConfigInfo") []) (JR.run [ 
                            JR.exec (JR.invoke "addAllList_1" (JR.local "allLogTypeVector") [ (JR.local "logTypeVector") ]) ]) identity ]) ], 
                    JR.return (JR.local "allLogTypeVector") ])
        (jregister jheap)
        jthis
        jargs


jm_getNumberOfLogConfigs_0 : JR.Method
jm_getNumberOfLogConfigs_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" jstatic_logConfigInfoList []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return JR.null ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.str "Error") ]) ) ] identity ])
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

