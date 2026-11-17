module PATH_GLOBALS exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.globals
-}

import JR
import AbPathData
import CommonStrings
import StringMaker


jclass : String
jclass =
    "PATH_GLOBALS"


jchain : List String
jchain =
    [ "PATH_GLOBALS" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "DATA_PATH", JR.defaultOf "" ), ( "INIT_PATH", JR.defaultOf "" ), ( "VIEWS_PATH", JR.defaultOf "" ), ( "LOG_PATH", JR.defaultOf "" ), ( "BACKUP_PATH", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PATH_GLOBALS"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PATH_GLOBALS" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "abPathData" "" (JR.callStatic AbPathData.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "data") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.local "abPathData")) ]), 
                    JR.exec (JR.setField "DATA_PATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "DATA_PATH") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INIT" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.local "abPathData")) ]), 
                    JR.exec (JR.setField "INIT_PATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "DATA_PATH") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "log") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.local "abPathData")) ]), 
                    JR.exec (JR.setField "LOG_PATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "DATA_PATH") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "backup") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.local "abPathData")) ]), 
                    JR.exec (JR.setField "BACKUP_PATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "INIT_PATH") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "views") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.local "abPathData")) ]), 
                    JR.exec (JR.setField "VIEWS_PATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])) ]) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

