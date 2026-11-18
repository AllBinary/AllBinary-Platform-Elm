module Org.Allbinary.Logic.Communication.Log.Config.LoggingInitInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log.config
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbFileLocalInputStream as AbFileLocalInputStream
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Data.Tree.Dom.Document.DomDocumentHelper as DomDocumentHelper
import Org.Allbinary.Data.Tree.Dom.DomSearchHelper as DomSearchHelper
import Org.Allbinary.Logic.Communication.Log.Config.LogConfig as LogConfig
import Org.Allbinary.Logic.Communication.Log.Config.LogConfigData as LogConfigData
import Org.Allbinary.Logic.Communication.Log.Config.LogConfigsData as LogConfigsData
import Org.Allbinary.Globals.PATH_GLOBALS as PATH_GLOBALS
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS
import Org.Allbinary.Data.Tree.Dom.Document.XmlDocumentHelper as XmlDocumentHelper


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
        [ ( "getDoc_0", jm_getDoc_0 )
        , ( "write_0", jm_write_0 )
        , ( "read_0", jm_read_0 )
        , ( "setHasRead_1", jm_setHasRead_1 )
        , ( "updateIfNeeded_0", jm_updateIfNeeded_0 )
        , ( "isValid_0", jm_isValid_0 )
        , ( "set_1", jm_set_1 )
        , ( "get_0", jm_get_0 )
        , ( "getTypeNameList_0", jm_getTypeNameList_0 )
        , ( "getTypeList_0", jm_getTypeList_0 )
        , ( "getNumberOfLogConfigs_0", jm_getNumberOfLogConfigs_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LoggingInitInfo"
        [ ( "jm_getDoc_0", jm_getDoc_0 ), ( "jm_write_0", jm_write_0 ), ( "jm_read_0", jm_read_0 ), ( "jm_setHasRead_1", jm_setHasRead_1 ), ( "jm_updateIfNeeded_0", jm_updateIfNeeded_0 ), ( "jm_isValid_0", jm_isValid_0 ), ( "jm_set_1", jm_set_1 ), ( "jm_get_0", jm_get_0 ), ( "jm_getTypeNameList_0", jm_getTypeNameList_0 ), ( "jm_getTypeList_0", jm_getTypeList_0 ), ( "jm_getNumberOfLogConfigs_0", jm_getNumberOfLogConfigs_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_INITFILENAME", jstatic_INITFILENAME ), ( "jstatic_PACKAGE", jstatic_PACKAGE ), ( "jstatic_logConfigInfoList", jstatic_logConfigInfoList ), ( "jstatic_hasRead", jstatic_hasRead ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INITFILENAME : JR.M
jstatic_INITFILENAME s =
    JR.static "LoggingInitInfo" jclinit "INITFILENAME"
        (JR.str "logConfig.xml")
        s


jstatic_PACKAGE : JR.M
jstatic_PACKAGE s =
    JR.static "LoggingInitInfo" jclinit "PACKAGE"
        (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 []))
        s


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


jm_getDoc_0 : JR.Method
jm_getDoc_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "path" "" (JR.concat (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) jstatic_PACKAGE), 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.local "path"), jstatic_INITFILENAME ]), 
                    JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                    JR.declare "document" "" (JR.callStatic DomDocumentHelper.jm_create_1 [ (JR.new AbFileLocalInputStream.jnew_1 [ (JR.local "file") ]) ]), 
                    JR.return (JR.local "document") ])
        (jregister jheap)
        jthis
        jargs


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
                    JR.try (JR.run [ 
                        JR.declare "document" "" (JR.callStatic jm_getDoc_0 []), 
                        JR.declare "logConfigsNodeList" "" (JR.invoke "getElementsByTagName_1" (JR.local "document") [ (JR.field "NAME" (JR.callStatic LogConfigsData.jm_getInstance_0 [])) ]), 
                        JR.declare "logConfigsNode" "" (JR.invoke "item_1" (JR.local "logConfigsNodeList") [ (JR.int 0) ]), 
                        JR.declare "logConfigNodeVector" "" (JR.callStatic DomSearchHelper.jm_getAllNodes_2 [ (JR.field "NAME" (JR.callStatic LogConfigData.jm_getInstance_0 [])), (JR.invoke "getChildNodes_0" (JR.local "logConfigsNode") []) ]), 
                        JR.exec (JR.setStatic "LoggingInitInfo.logConfigInfoList" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "logConfigNodeVector") []), 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN69104 -> (JR.setLocal "i" "I" (JR.lit jwN69104))) JR.increment) ]) (JR.run [ 
                            JR.declare "node" "" (JR.invoke "get_1" (JR.local "logConfigNodeVector") [ (JR.local "i") ]), 
                            JR.declare "logConfigInfo" "" (JR.new LogConfig.jnew_1 [ (JR.local "node") ]), 
                            JR.exec (JR.invoke "add_1" jstatic_logConfigInfoList [ (JR.local "logConfigInfo") ]) ]) ] ]) [ ( [ "Exception" ], "e", (JR.run [ 
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
    JR.method [ ( "logConfigInfoVector", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "LoggingInitInfo.logConfigInfoList" "" (JR.local "logConfigInfoVector")) ])
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


jm_getTypeNameList_0 : JR.Method
jm_getTypeNameList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic jm_updateIfNeeded_0 []), 
                    JR.declare "allLogTypeVector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" jstatic_logConfigInfoList []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70084 -> (JR.setLocal "index" "I" (JR.lit jwN70084))) JR.increment) ]) (JR.run [ 
                        JR.declare "logConfigInfo" "" (JR.aget (JR.field "objectArray" jstatic_logConfigInfoList) (JR.local "index")), 
                        JR.declare "logTypeVector" "" (JR.invoke "getTypeVector_0" (JR.local "logConfigInfo") []), 
                        JR.ifElse (JR.invoke "isEnabled_0" (JR.local "logConfigInfo") []) (JR.run [ 
                            JR.exec (JR.invoke "addAllList_1" (JR.local "allLogTypeVector") [ (JR.local "logTypeVector") ]) ]) identity ]) ], 
                    JR.return (JR.local "allLogTypeVector") ])
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
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70525 -> (JR.setLocal "index" "I" (JR.lit jwN70525))) JR.increment) ]) (JR.run [ 
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
                        JR.declare "document" "" (JR.callStatic jm_getDoc_0 []), 
                        JR.return (JR.callStatic XmlDocumentHelper.jm_toString_1 [ (JR.local "document") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
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

