module Org.Allbinary.Business.Init.WeblisketFinder exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.String.CommonStrings as CommonStrings
import JSystem
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.Io.File.Directory.SubDirectory as SubDirectory


jclass : String
jclass =
    "WeblisketFinder"


jchain : List String
jchain =
    [ "WeblisketFinder" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "subDirectory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "findAll_1", jm_findAll_1 )
        , ( "getInstallationPath_1", jm_getInstallationPath_1 )
        , ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WeblisketFinder"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_findAll_1", jm_findAll_1 ), ( "jm_getInstallationPath_1", jm_getInstallationPath_1 ), ( "jm_main_1", jm_main_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_KEY", jstatic_KEY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "WeblisketFinder" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_KEY : JR.M
jstatic_KEY s =
    JR.static "WeblisketFinder" jclinit "KEY"
        (JR.str "installerdata.dat")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "subDirectory" "" JR.this (JR.callStatic SubDirectory.jm_getInstance_0 [])),
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


jm_findAll_1 : JR.Method
jm_findAll_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "findAll") ]), 
                        JR.return (JR.invoke "search_2" (JR.thisField "subDirectory") [ jstatic_KEY, (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "findAll"), (JR.local "e") ]), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "findAll"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstallationPath_1 : JR.Method
jm_getInstallationPath_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "filePath" "" (JR.invoke "getPath_0" (JR.local "file") []), 
                        JR.declare "end" "I" (JR.invoke "indexOf_1" (JR.local "filePath") [ jstatic_KEY ]), 
                        JR.ifElse (JR.map2 JR.less (JR.local "end") (JR.int 0)) (JR.run [ 
                            JR.return JR.null ]) identity, 
                        JR.return (JR.invoke "substring_2" (JR.local "filePath") [ (JR.int 0), (JR.local "end") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "getInstallationPath"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.declare "vector" "" (JR.invoke "findAll_1" (JR.callStatic jm_getInstance_0 []) [ (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "size_0" (JR.local "vector") []) ]) ])
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

