module Org.Allbinary.Business.Init.InitInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Logic.Java.Bool.BooleanUtil as BooleanUtil
import Org.Allbinary.Business.Init.InitInfoEntity as InitInfoEntity
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "InitInfo"


jchain : List String
jchain =
    [ "InitInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TESTING", JR.defaultOf "" ), ( "MAINPATH", JR.defaultOf "" ), ( "TESTHTMLPATH", JR.defaultOf "" ), ( "testing", JR.defaultOf "" ), ( "mainPath", JR.defaultOf "" ), ( "testHtmlPath", JR.defaultOf "" ), ( "hasRead", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "set_0", jm_set_0 )
        , ( "set_1", jm_set_1 )
        , ( "get_0", jm_get_0 )
        , ( "setHasRead_1", jm_setHasRead_1 )
        , ( "updateIfNeeded_0", jm_updateIfNeeded_0 )
        , ( "isTesting_0", jm_isTesting_0 )
        , ( "getTesting_0", jm_getTesting_0 )
        , ( "getTestHtmlPath_0", jm_getTestHtmlPath_0 )
        , ( "getMainPath_0", jm_getMainPath_0 )
        , ( "setTesting_1", jm_setTesting_1 )
        , ( "setTestHtmlPath_1", jm_setTestHtmlPath_1 )
        , ( "setMainPath_1", jm_setMainPath_1 )
        , ( "isMainPathValid_1", jm_isMainPathValid_1 )
        , ( "isTestHtmlPathValid_1", jm_isTestHtmlPathValid_1 )
        , ( "isTestingValid_1", jm_isTestingValid_1 )
        , ( "toHashMap_0", jm_toHashMap_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitInfo"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_set_0", jm_set_0 ), ( "jm_set_1", jm_set_1 ), ( "jm_get_0", jm_get_0 ), ( "jm_setHasRead_1", jm_setHasRead_1 ), ( "jm_updateIfNeeded_0", jm_updateIfNeeded_0 ), ( "jm_isTesting_0", jm_isTesting_0 ), ( "jm_getTesting_0", jm_getTesting_0 ), ( "jm_getTestHtmlPath_0", jm_getTestHtmlPath_0 ), ( "jm_getMainPath_0", jm_getMainPath_0 ), ( "jm_setTesting_1", jm_setTesting_1 ), ( "jm_setTestHtmlPath_1", jm_setTestHtmlPath_1 ), ( "jm_setMainPath_1", jm_setMainPath_1 ), ( "jm_isMainPathValid_1", jm_isMainPathValid_1 ), ( "jm_isTestHtmlPathValid_1", jm_isTestHtmlPathValid_1 ), ( "jm_isTestingValid_1", jm_isTestingValid_1 ), ( "jm_toHashMap_0", jm_toHashMap_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InitInfo" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TESTING" "" JR.this (JR.str "TESTING")),
                JR.exec (JR.setField "MAINPATH" "" JR.this (JR.str "MAINPATH")),
                JR.exec (JR.setField "TESTHTMLPATH" "" JR.this (JR.str "TESTHTMLPATH")),
                JR.exec (JR.setField "testing" "" JR.this JR.null),
                JR.exec (JR.setField "mainPath" "" JR.this JR.null),
                JR.exec (JR.setField "testHtmlPath" "" JR.this JR.null),
                JR.exec (JR.setField "hasRead" "Z" JR.this (JR.bool False)),
                identity,
                identity ])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_set_0 : JR.Method
jm_set_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "initInfoEntity" "" (JR.new InitInfoEntity.jnew_0 []), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "created entity"), (JR.str "InitInfo"), (JR.str "set()") ]) ]) identity, 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "is_0" (JR.local "initInfoEntity") [])) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "adding"), (JR.str "InitInfo"), (JR.str "set()") ]) ]) identity, 
                            JR.exec (JR.invoke "add_0" (JR.local "initInfoEntity") []) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "update"), (JR.str "InitInfo"), (JR.str "set()") ]) ]) identity, 
                            JR.exec (JR.invoke "update_0" (JR.local "initInfoEntity") []) ]), 
                        JR.exec (JR.setField "hasRead" "Z" JR.this (JR.bool False)) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "error"), (JR.str "InitInfo"), (JR.str "set()"), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "hashMap", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setField "testing" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.thisField "TESTING") ])), 
                        JR.exec (JR.setField "mainPath" "" JR.this (JR.new AbPath.jnew_2 [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.thisField "MAINPATH") ]), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])), 
                        JR.exec (JR.setField "testHtmlPath" "" JR.this (JR.new AbPath.jnew_2 [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.thisField "TESTHTMLPATH") ]), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "error"), (JR.str "InitInfo"), (JR.str "set()"), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setField "testing" "" JR.this JR.null), 
                        JR.exec (JR.setField "mainPath" "" JR.this JR.null), 
                        JR.exec (JR.setField "testHtmlPath" "" JR.this JR.null), 
                        JR.declare "initInfoEntity" "" (JR.new InitInfoEntity.jnew_0 []), 
                        JR.exec (JR.invoke "get_0" (JR.local "initInfoEntity") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "error"), (JR.str "InitInfo"), (JR.str "set()"), (JR.local "e") ]) ]) identity, 
                        JR.returnVoid ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_setHasRead_1 : JR.Method
jm_setHasRead_1 jheap jthis jargs =
    JR.method [ ( "value", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "hasRead" "Z" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_updateIfNeeded_0 : JR.Method
jm_updateIfNeeded_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.thisField "hasRead")) (JR.run [ 
                            JR.exec (JR.setField "hasRead" "Z" JR.this (JR.bool True)), 
                            JR.exec (JR.invoke "get_0" JR.this []) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "error"), (JR.str "InitInfo"), (JR.str "updateIfNeeded()"), (JR.local "e") ]) ]) identity, 
                        JR.returnVoid ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_isTesting_0 : JR.Method
jm_isTesting_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                        JR.return (JR.invoke "getFromString_1" (JR.callStatic BooleanUtil.jm_getInstance_0 []) [ (JR.thisField "testing") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "error"), (JR.str "InitInfo"), (JR.str "updateIfNeeded()"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getTesting_0 : JR.Method
jm_getTesting_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.return (JR.thisField "testing") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHtmlPath_0 : JR.Method
jm_getTestHtmlPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "testHtmlPath") JR.null) (JR.run [ 
                        JR.return (JR.invoke "toString_0" (JR.thisField "testHtmlPath") []) ]) (JR.run [ 
                        JR.return JR.null ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getMainPath_0 : JR.Method
jm_getMainPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "mainPath") JR.null) (JR.run [ 
                        JR.return (JR.invoke "toString_0" (JR.thisField "mainPath") []) ]) (JR.run [ 
                        JR.return JR.null ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setTesting_1 : JR.Method
jm_setTesting_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "testing" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setTestHtmlPath_1 : JR.Method
jm_setTestHtmlPath_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "testHtmlPath" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setMainPath_1 : JR.Method
jm_setMainPath_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "mainPath" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_isMainPathValid_1 : JR.Method
jm_isMainPathValid_1 jheap jthis jargs =
    JR.method [ ( "abPath", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isTestHtmlPathValid_1 : JR.Method
jm_isTestHtmlPathValid_1 jheap jthis jargs =
    JR.method [ ( "abPath", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isTestingValid_1 : JR.Method
jm_isTestingValid_1 jheap jthis jargs =
    JR.method [ ( "testing", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isStringBoolean_1" (JR.callStatic BooleanUtil.jm_getInstance_0 []) [ (JR.local "testing") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toHashMap_0 : JR.Method
jm_toHashMap_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "hashMap" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.thisField "TESTING"), (JR.invoke "getTesting_0" JR.this []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.thisField "MAINPATH"), (JR.invoke "getMainPath_0" JR.this []) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.thisField "TESTHTMLPATH"), (JR.invoke "getTestHtmlPath_0" JR.this []) ]), 
                    JR.return (JR.local "hashMap") ])
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

