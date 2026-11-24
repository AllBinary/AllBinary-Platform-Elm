module Org.Allbinary.Logic.Io.File.Directory.SubDirectory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.directory
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Io.File.Directory.Directory as Directory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "SubDirectory"


jchain : List String
jchain =
    [ "SubDirectory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "directory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "search_2", jm_search_2 )
        , ( "search_1", jm_search_1 )
        , ( "toString_1", jm_toString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SubDirectory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_search_2", jm_search_2 ), ( "jm_search_1", jm_search_1 ), ( "jm_toString_1", jm_toString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SubDirectory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "directory" "" JR.this (JR.callStatic Directory.jm_getInstance_0 [])),
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


jm_search_2 : JR.Method
jm_search_2 jheap jthis jargs =
    JR.method [ ( "fileFilter", "" ), ( "file", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "search_3" (JR.thisField "directory") [ (JR.local "fileFilter"), (JR.local "file"), (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_search_1 : JR.Method
jm_search_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "search_2" (JR.thisField "directory") [ (JR.local "file"), (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_1 : JR.Method
jm_toString_1 jheap jthis jargs =
    JR.method [ ( "files", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "NEW_LINE" "" (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "files") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67847 -> (JR.setLocal "index" "I" (JR.lit jwN67847))) JR.increment) ]) (JR.run [ 
                        JR.declare "file" "" (JR.invoke "get_1" (JR.local "files") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "file") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "NEW_LINE") ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

