module Org.Allbinary.Logic.Io.Path.AbPath exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.path
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Io.File.FilePathData as FilePathData
import Org.Allbinary.Logic.Io.File.FilePathUtil as FilePathUtil
import Org.Allbinary.Logic.Io.Path.PathUtil as PathUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil


jclass : String
jclass =
    "AbPath"


jchain : List String
jchain =
    [ "AbPath" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonSeps", JR.defaultOf "" ), ( "abPathData", JR.defaultOf "" ), ( "abPathUtil", JR.defaultOf "" ), ( "EMPTY_STRING", JR.defaultOf "" ), ( "schema", JR.defaultOf "" ), ( "path", JR.defaultOf "" ), ( "nameP", JR.defaultOf "" ), ( "hasSchemaP", JR.defaultOf "Z" ), ( "numberOfSeps", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createAbPath_0", jm_createAbPath_0 )
        , ( "init_0", jm_init_0 )
        , ( "getSchema_1", jm_getSchema_1 )
        , ( "hasSchema_0", jm_hasSchema_0 )
        , ( "getPathFromPath_1", jm_getPathFromPath_1 )
        , ( "setName_1", jm_setName_1 )
        , ( "getName_0", jm_getName_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "toFileSystemString_0", jm_toFileSystemString_0 )
        , ( "getPath_0", jm_getPath_0 )
        , ( "setPath_1", jm_setPath_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbPath"
        [ ( "jm_createAbPath_0", jm_createAbPath_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_getSchema_1", jm_getSchema_1 ), ( "jm_hasSchema_0", jm_hasSchema_0 ), ( "jm_getPathFromPath_1", jm_getPathFromPath_1 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_toFileSystemString_0", jm_toFileSystemString_0 ), ( "jm_getPath_0", jm_getPath_0 ), ( "jm_setPath_1", jm_setPath_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NETWORK_SEP", jstatic_NETWORK_SEP ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NETWORK_SEP : JR.M
jstatic_NETWORK_SEP s =
    JR.static "AbPath" jclinit "NETWORK_SEP"
        (JR.str ":/")
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "aPath", "" ), ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
                JR.exec (JR.setField "abPathData" "" JR.this (JR.callStatic AbPathData.jm_getInstance_0 [])),
                JR.exec (JR.setField "abPathUtil" "" JR.this (JR.callStatic PathUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "EMPTY_STRING" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "schema" "" JR.this (JR.thisField "EMPTY_STRING")),
                JR.exec (JR.setField "path" "" JR.this (JR.thisField "EMPTY_STRING")),
                JR.exec (JR.setField "nameP" "" JR.this (JR.thisField "EMPTY_STRING")),
                JR.exec (JR.setField "hasSchemaP" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "numberOfSeps" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.local "aPath") ])) (JR.run [ 
                        JR.exec (JR.setField "schema" "" JR.this (JR.invoke "getSchema_1" JR.this [ (JR.local "aPath") ])), 
                        JR.exec (JR.setField "nameP" "" JR.this (JR.local "name")), 
                        JR.exec (JR.setField "path" "" JR.this (JR.invoke "adjustEnd_1" (JR.thisField "abPathUtil") [ (JR.invoke "adjust_1" (JR.thisField "abPathUtil") [ (JR.invoke "getPathFromPath_1" JR.this [ (JR.local "aPath") ]) ]) ])) ]) (JR.run [ 
                        JR.exec (JR.invoke "init_0" JR.this []), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.local "name") ])) (JR.run [ 
                            JR.exec (JR.setField "nameP" "" JR.this (JR.local "name")) ]) identity ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_createAbPath_0 : JR.Method
jm_createAbPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "EMPTY_STRING" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                        JR.return (JR.new jnew_2 [ (JR.local "EMPTY_STRING"), (JR.local "EMPTY_STRING") ]) ]) [ ( [ "Exception" ], "ex", (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "schema" "" JR.this (JR.thisField "EMPTY_STRING")), 
                    JR.exec (JR.invoke "setPath_1" JR.this [ (JR.field "SEPARATOR" (JR.thisField "abPathData")) ]), 
                    JR.exec (JR.setField "nameP" "" JR.this (JR.thisField "EMPTY_STRING")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSchema_1 : JR.Method
jm_getSchema_1 jheap jthis jargs =
    JR.method [ ( "aPath", "" ) ] ""
        (JR.run [ 
                    JR.declare "beginIndex" "I" (JR.invoke "indexOf_1" (JR.local "aPath") [ (JR.field "COLON" (JR.thisField "commonSeps")) ]), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "beginIndex") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setField "hasSchemaP" "Z" JR.this (JR.bool True)), 
                        JR.return (JR.invoke "substring_2" (JR.local "aPath") [ (JR.int 0), (JR.local "beginIndex") ]) ]) identity, 
                    JR.exec (JR.setField "hasSchemaP" "Z" JR.this (JR.bool False)), 
                    JR.return (JR.thisField "EMPTY_STRING") ])
        (jregister jheap)
        jthis
        jargs


jm_hasSchema_0 : JR.Method
jm_hasSchema_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "hasSchemaP") ])
        (jregister jheap)
        jthis
        jargs


jm_getPathFromPath_1 : JR.Method
jm_getPathFromPath_1 jheap jthis jargs =
    JR.method [ ( "aPath", "" ) ] ""
        (JR.run [ 
                    JR.declare "filePathData" "" (JR.callStatic FilePathData.jm_getInstance_0 []), 
                    JR.declare "tempPath" "" (JR.local "aPath"), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "hasSchema_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setLocal "tempPath" "" (JR.invoke "adjustStart_1" (JR.thisField "abPathUtil") [ (JR.local "tempPath") ])) ]) (JR.run [ 
                        JR.declare "beginIndex" "I" (JR.invoke "indexOf_1" (JR.local "tempPath") [ (JR.field "COLON" (JR.thisField "commonSeps")) ]), 
                        JR.ifElse (JR.map2 JR.greaterEquals (JR.local "beginIndex") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "beginIndex") (\jwN68252 -> (JR.setLocal "beginIndex" "I" (JR.lit jwN68252))) JR.increment), 
                            JR.while (JR.or (JR.map2 JR.equals (JR.invoke "charAt_1" (JR.local "tempPath") [ (JR.local "beginIndex") ]) (JR.field "SEPARATORCHAR" (JR.thisField "abPathData"))) (JR.map2 JR.equals (JR.invoke "charAt_1" (JR.local "tempPath") [ (JR.local "beginIndex") ]) (JR.field "SEPARATORCHAR" (JR.local "filePathData")))) (JR.run [ 
                                JR.exec (JR.postUpdate (JR.local "beginIndex") (\jwN68277 -> (JR.setLocal "beginIndex" "I" (JR.lit jwN68277))) JR.increment), 
                                JR.exec (JR.postUpdate (JR.thisField "numberOfSeps") (\jwN68294 -> (JR.setField "numberOfSeps" "I" JR.this (JR.lit jwN68294))) JR.increment), 
                                JR.ifElse (JR.map2 JR.greater (JR.thisField "numberOfSeps") (JR.int 2)) (JR.run [ 
                                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Should Not Have More Than Two Seps") ]) ]) identity ]), 
                            JR.exec (JR.setLocal "tempPath" "" (JR.invoke "substring_2" (JR.local "tempPath") [ (JR.local "beginIndex"), (JR.invoke "length_0" (JR.local "tempPath") []) ])) ]) identity ]), 
                    JR.return (JR.local "tempPath") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "nameP" "" JR.this (JR.local "name")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "nameP") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.ifElse (JR.invoke "hasSchema_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "schema") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_NETWORK_SEP ]) ]) identity, 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "nameP") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toFileSystemString_0 : JR.Method
jm_toFileSystemString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "hasSchema_0" JR.this []) (JR.run [ 
                        JR.declare "filePathData" "" (JR.callStatic FilePathData.jm_getInstance_0 []), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "schema") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COLON" (JR.thisField "commonSeps")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "PATH_START" (JR.local "filePathData")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic FilePathUtil.jm_adjust_1 [ (JR.invoke "getPath_0" JR.this []) ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "nameP") ]), 
                        JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) (JR.run [ 
                        JR.return (JR.concat (JR.callStatic FilePathUtil.jm_adjust_1 [ (JR.invoke "getPath_0" JR.this []) ]) (JR.thisField "nameP")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getPath_0 : JR.Method
jm_getPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "path") ])
        (jregister jheap)
        jthis
        jargs


jm_setPath_1 : JR.Method
jm_setPath_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "path" "" JR.this (JR.local "path")) ])
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

