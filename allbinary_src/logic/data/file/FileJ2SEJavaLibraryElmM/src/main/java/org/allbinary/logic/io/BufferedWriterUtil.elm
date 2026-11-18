module Org.Allbinary.Logic.Io.BufferedWriterUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.File.AbFileNativeUtil as AbFileNativeUtil
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BufferedWriterUtil"


jchain : List String
jchain =
    [ "BufferedWriterUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "commonLabels", JR.defaultOf "" ), ( "REMOVING_OLD", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "overwrite_2", jm_overwrite_2 )
        , ( "write_2", jm_write_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BufferedWriterUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_overwrite_2", jm_overwrite_2 ), ( "jm_write_2", jm_write_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BufferedWriterUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonLabels" "" JR.this (JR.callStatic CommonLabels.jm_getInstance_0 [])),
                JR.exec (JR.setField "REMOVING_OLD" "" JR.this (JR.str "Remove old for overwriting: ")),
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


jm_overwrite_2 : JR.Method
jm_overwrite_2 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "data", "" ) ] ""
        (JR.run [ 
                    JR.declare "abFile" "" (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]), 
                    JR.ifElse (JR.invoke "exists_0" (JR.local "abFile") []) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.thisField "REMOVING_OLD") (JR.local "path")), JR.this, (JR.field "CREATE" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "delete_0" (JR.local "abFile") []) ]) (JR.run [ 
                        JR.declare "name" "" (JR.invoke "removeNameFromPath_1" (JR.callStatic AbPathData.jm_getInstance_0 []) [ (JR.local "path") ]), 
                        JR.declare "abFileDirectory" "" (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "name") ]), 
                        JR.ifElse (JR.invoke "exists_0" (JR.local "abFileDirectory") []) identity (JR.run [ 
                            JR.declare "stringBuilder" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuilder") [ (JR.field "CREATE" (JR.thisField "commonStrings")) ]) [ (JR.field "COLON_SEP" (JR.thisField "commonLabels")) ]) [ (JR.local "name") ]) []), JR.this, (JR.field "CREATE" (JR.thisField "commonStrings")) ]), 
                            JR.declare "result" "Z" (JR.invoke "mkdirs_0" (JR.local "abFileDirectory") []), 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuilder") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendboolean_1" (JR.invoke "append_1" (JR.local "stringBuilder") [ (JR.field "RESULT_" (JR.thisField "commonLabels")) ]) [ (JR.local "result") ]) []), JR.this, (JR.field "CREATE" (JR.thisField "commonStrings")) ]) ]) ]), 
                    JR.exec (JR.invoke "write_2" JR.this [ (JR.local "abFile"), (JR.local "data") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_write_2 : JR.Method
jm_write_2 jheap jthis jargs =
    JR.method [ ( "abFile", "" ), ( "data", "" ) ] ""
        (JR.run [ 
                    JR.declare "fileOut" "" (JR.new (JR.namedMethod "BufferedWriter.jnew_1") [ (JR.new (JR.namedMethod "FileWriter.jnew_1") [ (JR.callStatic AbFileNativeUtil.jm_get_1 [ (JR.local "abFile") ]) ]) ]), 
                    JR.exec (JR.invoke "write_3" (JR.local "fileOut") [ (JR.local "data"), (JR.int 0), (JR.invoke "length_0" (JR.local "data") []) ]), 
                    JR.exec (JR.invoke "newLine_0" (JR.local "fileOut") []), 
                    JR.exec (JR.invoke "flush_0" (JR.local "fileOut") []) ])
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

