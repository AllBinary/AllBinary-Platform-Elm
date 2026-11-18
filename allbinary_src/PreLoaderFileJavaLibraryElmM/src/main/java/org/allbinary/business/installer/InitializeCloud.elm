module Org.Allbinary.Business.Installer.InitializeCloud exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.installer
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbIOSystem as AbIOSystem
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Logic.Io.File.Directory.Directory as Directory
import Org.Allbinary.Logic.Io.File.FileUtil as FileUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Globals.PATH_GLOBALS as PATH_GLOBALS
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS


jclass : String
jclass =
    "InitializeCloud"


jchain : List String
jchain =
    [ "InitializeCloud" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "initialize_5", jm_initialize_5 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitializeCloud"
        [ ( "jm_initialize_5", jm_initialize_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_CLOUD", jstatic_CLOUD ), ( "jstatic_CLOUD_UPDATE", jstatic_CLOUD_UPDATE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_CLOUD : JR.M
jstatic_CLOUD s =
    JR.static "InitializeCloud" jclinit "CLOUD"
        (JR.str "cloud/")
        s


jstatic_CLOUD_UPDATE : JR.M
jstatic_CLOUD_UPDATE s =
    JR.static "InitializeCloud" jclinit "CLOUD_UPDATE"
        (JR.str "cloudupdate/")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_initialize_5 : JR.Method
jm_initialize_5 jheap jthis jargs =
    JR.method [ ( "cloud", "" ), ( "overwriteNewer", "Z" ), ( "overwriteAll", "Z" ), ( "current", "I" ), ( "total", "I" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.invoke "isType_1" (JR.callStatic AbIOSystem.jm_getInstance_0 []) [ (JR.str "com.vobject.appengine.java.io") ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "cloud") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "DATA_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 [])) ]), 
                            JR.declare "path" "" (JR.new AbPath.jnew_2 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]), 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) ]), 
                            JR.declare "realPath" "" (JR.new AbPath.jnew_2 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]), 
                            JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "path") ]), 
                            JR.declare "fileBasicArrayList" "" (JR.invoke "search_2" (JR.callStatic Directory.jm_getInstance_0 []) [ (JR.local "file"), (JR.bool True) ]), 
                            JR.declare "size" "I" (JR.invoke "size_0" (JR.local "fileBasicArrayList") []), 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Searched: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toFileSystemString_0" (JR.local "path") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " BasicArrayList: ") ]), 
                            JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "size") ]), 
                            JR.declare "portion" "I" (JR.map2 JR.add (JR.map2 JR.div (JR.local "size") (JR.local "total")) (JR.int 1)), 
                            JR.declare "start" "I" (JR.map2 JR.mul (JR.local "portion") (JR.local "current")), 
                            JR.declare "end" "I" (JR.map2 JR.add (JR.local "start") (JR.local "portion")), 
                            JR.ifElse (JR.map2 JR.greater (JR.local "end") (JR.local "size")) (JR.run [ 
                                JR.exec (JR.setLocal "end" "I" (JR.local "size")) ]) identity, 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Section: ") ]), 
                            JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "start") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " - ") ]), 
                            JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "end") ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "initialize()") ]), 
                            JR.declare "nextFile" "" (JR.lit (JR.defaultOf "")), 
                            JR.run [ JR.declare "index" "I" (JR.local "start"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "end")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70244 -> (JR.setLocal "index" "I" (JR.lit jwN70244))) JR.increment) ]) (JR.run [ 
                                JR.exec (JR.setLocal "nextFile" "" (JR.invoke "get_1" (JR.local "fileBasicArrayList") [ (JR.local "index") ])), 
                                JR.ifElse (JR.invoke "isDirectory_0" (JR.local "nextFile") []) identity (JR.run [ 
                                    JR.exec (JR.invoke "copyToCloud_6" (JR.callStatic FileUtil.jm_getInstance_0 []) [ (JR.local "nextFile"), (JR.local "path"), (JR.local "realPath"), (JR.local "cloud"), (JR.local "overwriteNewer"), (JR.local "overwriteAll") ]) ]) ]) ], 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Copied Files To Cloud"), JR.this, (JR.str "initialize()") ]) ]) identity, 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Unable to copy installer files into cloud"), JR.this, (JR.str "initialize()"), (JR.local "e") ]), 
                        JR.return (JR.bool False) ]) ) ] identity ])
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

