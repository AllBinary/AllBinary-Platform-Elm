module Org.Allbinary.Logic.System.Loader.AbeClassLoader exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.loader
-}

import JR
import Org.Allbinary.Logic.System.Security.AbCryptUtil as AbCryptUtil
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.Logic.Communication.Log.LogBuffer as LogBuffer
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogFactory as LogFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS


jclass : String
jclass =
    "AbeClassLoader"


jchain : List String
jchain =
    [ "AbeClassLoader" ]
        ++ [ "ClassLoader" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ [ ( "logUtil", JR.defaultOf "" ), ( "abCryptUtil", JR.defaultOf "" ), ( "LOAD_CLASS", JR.defaultOf "" ), ( "ENCRYPTED_EXTENSION", JR.defaultOf "" ), ( "key", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "findLoadedClass1_1", jm_findLoadedClass1_1 )
        , ( "loadClass_1", jm_loadClass_1 )
        , ( "loadClass_2", jm_loadClass_2 )
        , ( "loadClassBytesFromFile_1", jm_loadClassBytesFromFile_1 )
        , ( "oldLoadClass_2", jm_oldLoadClass_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeClassLoader"
        [ ( "jm_findLoadedClass1_1", jm_findLoadedClass1_1 ), ( "jm_loadClass_1", jm_loadClass_1 ), ( "jm_loadClass_2", jm_loadClass_2 ), ( "jm_loadClassBytesFromFile_1", jm_loadClassBytesFromFile_1 ), ( "jm_oldLoadClass_2", jm_oldLoadClass_2 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_classes", jstatic_classes ), ( "jstatic_PATH", jstatic_PATH ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_classes : JR.M
jstatic_classes s =
    JR.static "AbeClassLoader" jclinit "classes"
        (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])
        s


jstatic_PATH : JR.M
jstatic_PATH s =
    JR.static "AbeClassLoader" jclinit "PATH"
        (JR.lit (JR.defaultOf ""))
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "parent", "" ), ( "key", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "ClassLoader.jinit_1") JR.this [ (JR.local "parent") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "abCryptUtil" "" JR.this (JR.callStatic AbCryptUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "LOAD_CLASS" "" JR.this (JR.str "loadClass")),
                JR.exec (JR.setField "ENCRYPTED_EXTENSION" "" JR.this (JR.concat (JR.field "EXTENSION_SEP" (JR.callStatic AbPathData.jm_getInstance_0 [])) (JR.str "abc"))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "key" "" JR.this (JR.local "key")), 
                    JR.exec (JR.setStatic "AbeClassLoader.PATH" "" (JR.concat (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) (JR.str "WEB-INF/classes/"))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_findLoadedClass1_1 : JR.Method
jm_findLoadedClass1_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "get_1" jstatic_classes [ (JR.local "name") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_loadClass_1 : JR.Method
jm_loadClass_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "loadClass_2" JR.this [ (JR.local "name"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_loadClass_2 : JR.Method
jm_loadClass_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "resolve", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "loadedWith" "" (JR.str "findLoadedClass1"), 
                    JR.declare "logBuffer" "" (JR.new LogBuffer.jnew_0 []), 
                    JR.try (JR.run [ 
                        JR.declare "myClass" "" (JR.invoke "findLoadedClass1_1" JR.this [ (JR.local "name") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "myClass") JR.null) (JR.run [ 
                            JR.try (JR.run [ 
                                JR.exec (JR.setLocal "loadedWith" "" (JR.str "super.loadClass")), 
                                JR.declare "normalClass" "" (JR.callVia JR.noMethods "loadClass_2" JR.this [ (JR.local "name"), (JR.local "resolve") ]), 
                                JR.ifElse (JR.map2 JR.notEquals (JR.local "normalClass") JR.null) (JR.run [ 
                                    JR.return (JR.local "normalClass") ]) identity ]) [ ( [ "ClassNotFoundException" ], "e", (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "logBuffer") [ (JR.callStatic LogFactory.jm_getInstance_4 [ (JR.concat (JR.concat (JR.concat (JR.str "Failed to Load Class: ") (JR.local "name")) (JR.str "\nwith: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS"), (JR.local "e") ]) ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "logBuffer") [ (JR.callStatic LogFactory.jm_getInstance_4 [ (JR.concat (JR.concat (JR.concat (JR.str "Failed to Load Class: ") (JR.local "name")) (JR.str "\nwith: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS"), (JR.local "e") ]) ]) ]) ), ( [ "NoClassDefFoundError" ], "e", (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "logBuffer") [ (JR.callStatic LogFactory.jm_getInstanceF_3 [ (JR.concat (JR.concat (JR.concat (JR.str "NoClassDefFoundError Failed Loaded Class: ") (JR.local "name")) (JR.str "\nwith: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS") ]) ]) ]) ) ] identity, 
                            JR.declare "classBytes" "" (JR.invoke "loadClassBytesFromFile_1" JR.this [ (JR.local "name") ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "classBytes") JR.null) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "ClassNotFoundException" [ "Exception" ]) [ (JR.concat (JR.concat (JR.concat (JR.str "My Bytes not loaded for: ") (JR.local "name")) (JR.str "\nwith: ")) (JR.str "loadClassBytes")) ]) ]) identity, 
                            JR.exec (JR.setLocal "myClass" "" (JR.invoke "defineClass_4" JR.this [ (JR.local "name"), (JR.local "classBytes"), (JR.int 0), (JR.alength (JR.local "classBytes")) ])), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "myClass") JR.null) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "ClassNotFoundException" [ "Exception" ]) [ (JR.concat (JR.concat (JR.concat (JR.str "My Class Not Defineable for: ") (JR.local "name")) (JR.str "\nwith: ")) (JR.str "loadClassBytes")) ]) ]) identity, 
                            JR.exec (JR.invoke "put_2" jstatic_classes [ (JR.local "name"), (JR.local "myClass") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "logBuffer") [ (JR.callStatic LogFactory.jm_getInstanceF_3 [ (JR.concat (JR.concat (JR.concat (JR.str "Already Loaded: ") (JR.local "name")) (JR.str "\nwith: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS") ]) ]) ]), 
                        JR.exec (JR.invoke "resolveClass_1" JR.this [ (JR.local "myClass") ]), 
                        JR.return (JR.local "myClass") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "logAll_0" (JR.local "logBuffer") []), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.str "Failure loading: ") (JR.local "name")) (JR.str "\nwith: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_loadClassBytesFromFile_1 : JR.Method
jm_loadClassBytesFromFile_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.declare "in" "" JR.null, 
                    JR.declare "cname" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "cname" "" (JR.concat (JR.concat jstatic_PATH (JR.invoke "replace_2" (JR.local "name") [ (JR.char 46), (JR.field "SEPARATORCHAR" (JR.callStatic AbPathData.jm_getInstance_0 [])) ])) (JR.thisField "ENCRYPTED_EXTENSION"))), 
                        JR.exec (JR.setLocal "in" "" (JR.new (JR.namedMethod "FileInputStream.jnew_1") [ (JR.local "cname") ])), 
                        JR.declare "decrypted" "" (JR.invoke "decrypt_2" (JR.thisField "abCryptUtil") [ (JR.local "in"), (JR.thisField "key") ]), 
                        JR.return (JR.local "decrypted") ]) [ ( [ "IOException" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.str "(Before LogBuffer Output) Failure loading Encrypted: ") (JR.local "name")) (JR.str " File: ")) (JR.local "cname")), (JR.str "AbeClassLoader"), (JR.str "loadClassBytes"), (JR.local "e") ]) ]) identity, 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "in") ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "loadedWith" "" (JR.str "loadClassBytes"), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "(Before LogBuffer Output) Failed to Loaded Class: ") (JR.local "name")) (JR.str " File: ")) (JR.local "cname")) (JR.str "\nwith: ")) (JR.local "loadedWith")), JR.this, (JR.str "loadClassBytes"), (JR.local "e") ]) ]) identity ]) ), ( [ "NoClassDefFoundError" ], "e", (JR.run [ 
                        JR.declare "loadedWith" "" (JR.str "loadClassBytes"), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "(Before LogBuffer Output) NoClassDefFoundError Failed Loaded Class: ") (JR.local "name")) (JR.str " File: ")) (JR.local "cname")) (JR.str "\nwith: ")) (JR.local "loadedWith")), JR.this, (JR.str "loadClassBytes") ]) ]) identity ]) ) ] identity, 
                    JR.return JR.null ])
        (jregister jheap)
        jthis
        jargs


jm_oldLoadClass_2 : JR.Method
jm_oldLoadClass_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "resolve", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "loadedWith" "" (JR.str "findLoadedClass1"), 
                    JR.try (JR.run [ 
                        JR.declare "myClass" "" (JR.invoke "findLoadedClass1_1" JR.this [ (JR.local "name") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "myClass") JR.null) (JR.run [ 
                            JR.try (JR.run [ 
                                JR.exec (JR.setLocal "loadedWith" "" (JR.str "super.loadClass")), 
                                JR.declare "normalClass" "" (JR.callVia JR.noMethods "loadClass_2" JR.this [ (JR.local "name"), (JR.local "resolve") ]), 
                                JR.ifElse (JR.map2 JR.notEquals (JR.local "normalClass") JR.null) (JR.run [ 
                                    JR.return (JR.local "normalClass") ]) identity ]) [ ( [ "ClassNotFoundException" ], "e", (JR.run [ 
                                JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.str "Failed Loaded Class: ") (JR.local "name")) (JR.str " with: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS") ]) ]) identity ]) ), ( [ "Exception" ], "e", (JR.run [ 
                                JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.str "Failed Loaded Class: ") (JR.local "name")) (JR.str " with: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS") ]) ]) identity ]) ), ( [ "NoClassDefFoundError" ], "e", (JR.run [ 
                                JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.str "Failed Loaded Class: ") (JR.local "name")) (JR.str " with: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS") ]) ]) identity ]) ) ] identity, 
                            JR.exec (JR.setLocal "loadedWith" "" (JR.str "loadClassBytes")), 
                            JR.declare "classBytes" "" (JR.invoke "loadClassBytesFromFile_1" JR.this [ (JR.local "name") ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "classBytes") JR.null) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "ClassNotFoundException" [ "Exception" ]) [ (JR.concat (JR.str "Bytes not loaded for: ") (JR.local "name")) ]) ]) identity, 
                            JR.exec (JR.setLocal "myClass" "" (JR.invoke "defineClass_4" JR.this [ (JR.local "name"), (JR.local "classBytes"), (JR.int 0), (JR.alength (JR.local "classBytes")) ])), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "myClass") JR.null) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "ClassNotFoundException" [ "Exception" ]) [ (JR.concat (JR.str "Class Not Defineable for: ") (JR.local "name")) ]) ]) identity, 
                            JR.exec (JR.invoke "put_2" jstatic_classes [ (JR.local "name"), (JR.local "myClass") ]) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.concat (JR.str "Already Loaded: ") (JR.local "name")) (JR.str " with: ")) (JR.local "loadedWith")), JR.this, (JR.thisField "LOAD_CLASS") ]) ]) identity ]), 
                        JR.exec (JR.invoke "resolveClass_1" JR.this [ (JR.local "myClass") ]), 
                        JR.return (JR.local "myClass") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "Failure loading: ") (JR.local "name")), (JR.str "AbeClassLoader"), (JR.thisField "LOAD_CLASS"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
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

