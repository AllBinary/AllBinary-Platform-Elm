module Org.Allbinary.Globals.FREEBLISKET_PATH_GLOBALS exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.globals
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.Globals.PATH_GLOBALS as PATH_GLOBALS
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "FREEBLISKET_PATH_GLOBALS"


jchain : List String
jchain =
    [ "FREEBLISKET_PATH_GLOBALS" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INSTALLPATH", JR.defaultOf "" ), ( "XSLPATH", JR.defaultOf "" ), ( "TEMPLATEPATH", JR.defaultOf "" ), ( "STYLEPATH", JR.defaultOf "" ), ( "THEMEPATH", JR.defaultOf "" ), ( "DBINITPATH", JR.defaultOf "" ), ( "LINEDATAPATH", JR.defaultOf "" ), ( "CONFIGURATIONPATH", JR.defaultOf "" ), ( "USERCONFIGURATIONPATH", JR.defaultOf "" ), ( "CONTEXTCONFIGURATIONPATH", JR.defaultOf "" ), ( "LICENSEERRORPAGE", JR.defaultOf "" ), ( "ERRORPAGE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FREEBLISKET_PATH_GLOBALS"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FREEBLISKET_PATH_GLOBALS" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TEMPLATEPATH" "" JR.this (JR.concat (JR.str "template") (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])))),
                JR.exec (JR.setField "STYLEPATH" "" JR.this (JR.concat (JR.concat (JR.thisField "TEMPLATEPATH") (JR.str "style")) (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])))),
                JR.exec (JR.setField "THEMEPATH" "" JR.this (JR.concat (JR.concat (JR.thisField "STYLEPATH") (JR.str "theme")) (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])))),
                JR.exec (JR.setField "DBINITPATH" "" JR.this (JR.concat (JR.concat (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 [])) (JR.str "db")) (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])))),
                JR.exec (JR.setField "LINEDATAPATH" "" JR.this (JR.concat (JR.concat (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 [])) (JR.str "lineData")) (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])))),
                JR.exec (JR.setField "LICENSEERRORPAGE" "" JR.this (JR.str "LicensingError.jsp")),
                JR.exec (JR.setField "ERRORPAGE" "" JR.this (JR.str "Error.jsp")),
                identity,
                (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "install") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "INSTALLPATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "views") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "XSLPATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "XSLPATH") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "configuration") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "CONFIGURATIONPATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "CONFIGURATIONPATH") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "user") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "USERCONFIGURATIONPATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "CONFIGURATIONPATH") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "context") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "CONTEXTCONFIGURATIONPATH" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]) ]) ])
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

