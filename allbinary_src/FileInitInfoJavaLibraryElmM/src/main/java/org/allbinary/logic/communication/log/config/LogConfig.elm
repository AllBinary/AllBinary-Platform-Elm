module Org.Allbinary.Logic.Communication.Log.Config.LogConfig exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log.config
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbFileLocalInputStream as AbFileLocalInputStream
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Java.Bool.BooleanUtil as BooleanUtil
import Org.Allbinary.Data.Tree.Dom.Document.DomDocumentHelper as DomDocumentHelper
import Org.Allbinary.Data.Tree.Dom.DomNodeHelper as DomNodeHelper
import Org.Allbinary.Data.Tree.Dom.DomSearchHelper as DomSearchHelper
import Org.Allbinary.Business.Entry.EntryData as EntryData
import Org.Allbinary.Logic.Communication.Log.Config.LogConfigData as LogConfigData
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeData as LogConfigTypeData
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypesData as LogConfigTypesData
import Org.Allbinary.Globals.PATH_GLOBALS as PATH_GLOBALS
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS


jclass : String
jclass =
    "LogConfig"


jchain : List String
jchain =
    [ "LogConfig" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "isEnabled", JR.defaultOf "Z" ), ( "name", JR.defaultOf "" ), ( "description", JR.defaultOf "" ), ( "path", JR.defaultOf "" ), ( "fileName", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getName_0", jm_getName_0 )
        , ( "isEnabled_0", jm_isEnabled_0 )
        , ( "enable_0", jm_enable_0 )
        , ( "disable_0", jm_disable_0 )
        , ( "getDescription_0", jm_getDescription_0 )
        , ( "getFileName_0", jm_getFileName_0 )
        , ( "setName_1", jm_setName_1 )
        , ( "setDescription_1", jm_setDescription_1 )
        , ( "setPath_1", jm_setPath_1 )
        , ( "setFileName_1", jm_setFileName_1 )
        , ( "getDoc_0", jm_getDoc_0 )
        , ( "getTypeVector_0", jm_getTypeVector_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogConfig"
        [ ( "jm_getName_0", jm_getName_0 ), ( "jm_isEnabled_0", jm_isEnabled_0 ), ( "jm_enable_0", jm_enable_0 ), ( "jm_disable_0", jm_disable_0 ), ( "jm_getDescription_0", jm_getDescription_0 ), ( "jm_getFileName_0", jm_getFileName_0 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_setDescription_1", jm_setDescription_1 ), ( "jm_setPath_1", jm_setPath_1 ), ( "jm_setFileName_1", jm_setFileName_1 ), ( "jm_getDoc_0", jm_getDoc_0 ), ( "jm_getTypeVector_0", jm_getTypeVector_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "aName", "" ), ( "aDescription", "" ), ( "aPath", "" ), ( "aFileName", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "isEnabled" "Z" JR.this (JR.bool False)), 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "aName")), 
                    JR.exec (JR.setField "description" "" JR.this (JR.local "aDescription")), 
                    JR.exec (JR.setField "path" "" JR.this (JR.local "aPath")), 
                    JR.exec (JR.setField "fileName" "" JR.this (JR.local "aFileName")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "node", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "enabledValueNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "ENABLE" (JR.callStatic EntryData.jm_getInstance_0 [])), (JR.invoke "getChildNodes_0" (JR.local "node") []) ]), 
                    JR.declare "isEnabledString" "" (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "enabledValueNode") ]), 
                    JR.exec (JR.setField "isEnabled" "Z" JR.this (JR.invoke "getFromString_1" (JR.callStatic BooleanUtil.jm_getInstance_0 []) [ (JR.local "isEnabledString") ])), 
                    JR.declare "logConfigData" "" (JR.callStatic LogConfigData.jm_getInstance_0 []), 
                    JR.declare "nameValueNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "NAME" (JR.local "logConfigData")), (JR.invoke "getChildNodes_0" (JR.local "node") []) ]), 
                    JR.exec (JR.setField "name" "" JR.this (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "nameValueNode") ])), 
                    JR.declare "descriptionValueNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "DESCRIPTION" (JR.local "logConfigData")), (JR.invoke "getChildNodes_0" (JR.local "node") []) ]), 
                    JR.exec (JR.setField "description" "" JR.this (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "descriptionValueNode") ])), 
                    JR.declare "fileValueNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "FILE" (JR.local "logConfigData")), (JR.invoke "getChildNodes_0" (JR.local "node") []) ]), 
                    JR.exec (JR.setField "fileName" "" JR.this (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "fileValueNode") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_isEnabled_0 : JR.Method
jm_isEnabled_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "isEnabled") ])
        (jregister jheap)
        jthis
        jargs


jm_enable_0 : JR.Method
jm_enable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "isEnabled" "Z" JR.this (JR.bool True)) ])
        (jregister jheap)
        jthis
        jargs


jm_disable_0 : JR.Method
jm_disable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "isEnabled" "Z" JR.this (JR.bool False)) ])
        (jregister jheap)
        jthis
        jargs


jm_getDescription_0 : JR.Method
jm_getDescription_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "description") ])
        (jregister jheap)
        jthis
        jargs


jm_getFileName_0 : JR.Method
jm_getFileName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "fileName") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setDescription_1 : JR.Method
jm_setDescription_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "description" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setPath_1 : JR.Method
jm_setPath_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "path" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setFileName_1 : JR.Method
jm_setFileName_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "fileName" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDoc_0 : JR.Method
jm_getDoc_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getFileName_0" JR.this []) ]), 
                    JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]), 
                    JR.declare "document" "" (JR.callStatic DomDocumentHelper.jm_create_1 [ (JR.new AbFileLocalInputStream.jnew_1 [ (JR.local "file") ]) ]), 
                    JR.return (JR.local "document") ])
        (jregister jheap)
        jthis
        jargs


jm_getTypeVector_0 : JR.Method
jm_getTypeVector_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "logKeyVector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "document" "" (JR.invoke "getDoc_0" JR.this []), 
                    JR.declare "logConfigTypesNodeList" "" (JR.invoke "getElementsByTagName_1" (JR.local "document") [ (JR.field "NAME" (JR.callStatic LogConfigTypesData.jm_getInstance_0 [])) ]), 
                    JR.declare "logConfigTypesNode" "" (JR.invoke "item_1" (JR.local "logConfigTypesNodeList") [ (JR.int 0) ]), 
                    JR.declare "logConfigTypeNodeVector" "" (JR.callStatic DomSearchHelper.jm_getAllNodes_2 [ (JR.field "NAME" (JR.callStatic LogConfigTypeData.jm_getInstance_0 [])), (JR.invoke "getChildNodes_0" (JR.local "logConfigTypesNode") []) ]), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "logConfigTypeNodeVector") []), 
                    JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN70468 -> (JR.setLocal "i" "I" (JR.lit jwN70468))) JR.increment) ]) (JR.run [ 
                        JR.declare "node" "" (JR.invoke "get_1" (JR.local "logConfigTypeNodeVector") [ (JR.local "i") ]), 
                        JR.declare "logType" "" (JR.callStatic LogConfigTypes.jm_getInstance_1 [ (JR.local "node") ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "logKeyVector") [ (JR.local "logType") ]) ]) ], 
                    JR.return (JR.local "logKeyVector") ])
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

