module Org.Allbinary.Logic.Io.Path.AbPathData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.path
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Io.File.FilePathData as FilePathData
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "AbPathData"


jchain : List String
jchain =
    [ "AbPathData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EXTENSION_SEP", JR.defaultOf "" ), ( "SEPARATORCHAR", JR.defaultOf "C" ), ( "SEPARATOR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getExtensionIndex_1", jm_getExtensionIndex_1 )
        , ( "getExtensionWithDot_1", jm_getExtensionWithDot_1 )
        , ( "getExtension_1", jm_getExtension_1 )
        , ( "getNameFromPath_1", jm_getNameFromPath_1 )
        , ( "removeNameFromPath_1", jm_removeNameFromPath_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbPathData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getExtensionIndex_1", jm_getExtensionIndex_1 ), ( "jm_getExtensionWithDot_1", jm_getExtensionWithDot_1 ), ( "jm_getExtension_1", jm_getExtension_1 ), ( "jm_getNameFromPath_1", jm_getNameFromPath_1 ), ( "jm_removeNameFromPath_1", jm_removeNameFromPath_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbPathData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EXTENSION_SEP" "" JR.this (JR.field "PERIOD" (JR.callStatic CommonSeps.jm_getInstance_0 []))),
                JR.exec (JR.setField "SEPARATORCHAR" "C" JR.this (JR.char 47)),
                JR.exec (JR.setField "SEPARATOR" "" JR.this (JR.field "FORWARD_SLASH" (JR.callStatic CommonSeps.jm_getInstance_0 []))),
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


jm_getExtensionIndex_1 : JR.Method
jm_getExtensionIndex_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] "I"
        (JR.run [ 
                    JR.declare "indexOfFileExtensionDelmiter" "I" (JR.invoke "lastIndexOf_1" (JR.local "filePath") [ (JR.thisField "EXTENSION_SEP") ]), 
                    JR.declare "indexOfLatDelimiter" "I" (JR.invoke "lastIndexOf_1" (JR.local "filePath") [ (JR.thisField "SEPARATORCHAR") ]), 
                    JR.ifElse (JR.map2 JR.less (JR.local "indexOfFileExtensionDelmiter") (JR.int 0)) (JR.run [ 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "indexOfFileExtensionDelmiter") (JR.local "indexOfLatDelimiter")) (JR.run [ 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) identity, 
                    JR.return (JR.local "indexOfFileExtensionDelmiter") ])
        (jregister jheap)
        jthis
        jargs


jm_getExtensionWithDot_1 : JR.Method
jm_getExtensionWithDot_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        (JR.run [ 
                    JR.declare "indexOfFileExtensionDelmiter" "I" (JR.invoke "getExtensionIndex_1" JR.this [ (JR.local "filePath") ]), 
                    JR.declare "extension" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "indexOfFileExtensionDelmiter") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "extension" "" (JR.invoke "substring_1" (JR.local "filePath") [ (JR.local "indexOfFileExtensionDelmiter") ])) ]) identity, 
                    JR.return (JR.local "extension") ])
        (jregister jheap)
        jthis
        jargs


jm_getExtension_1 : JR.Method
jm_getExtension_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        (JR.run [ 
                    JR.declare "indexOfFileExtensionDelmiter" "I" (JR.invoke "getExtensionIndex_1" JR.this [ (JR.local "filePath") ]), 
                    JR.declare "extension" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "indexOfFileExtensionDelmiter") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "extension" "" (JR.invoke "substring_1" (JR.local "filePath") [ (JR.map2 JR.add (JR.local "indexOfFileExtensionDelmiter") (JR.int 1)) ])) ]) identity, 
                    JR.return (JR.local "extension") ])
        (jregister jheap)
        jthis
        jargs


jm_getNameFromPath_1 : JR.Method
jm_getNameFromPath_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.declare "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "path") [ (JR.thisField "SEPARATORCHAR") ]), 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "path") [ (JR.field "SEPARATORCHAR" (JR.callStatic FilePathData.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                        JR.return (JR.local "path") ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "length_0" (JR.local "path") []) (JR.map2 JR.add (JR.local "endIndex") (JR.int 1))) (JR.run [ 
                        JR.declare "categoryName" "" (JR.invoke "substring_2" (JR.local "path") [ (JR.int 0), (JR.local "endIndex") ]), 
                        JR.return (JR.invoke "getNameFromPath_1" JR.this [ (JR.local "categoryName") ]) ]) (JR.run [ 
                        JR.declare "categoryName" "" (JR.invoke "substring_1" (JR.local "path") [ (JR.map2 JR.add (JR.local "endIndex") (JR.int 1)) ]), 
                        JR.return (JR.local "categoryName") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeNameFromPath_1 : JR.Method
jm_removeNameFromPath_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.declare "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "path") [ (JR.thisField "SEPARATORCHAR") ]), 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "path") [ (JR.field "SEPARATORCHAR" (JR.callStatic FilePathData.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "length_0" (JR.local "path") []) (JR.map2 JR.add (JR.local "endIndex") (JR.int 1))) (JR.run [ 
                        JR.return (JR.invoke "removeNameFromPath_1" JR.this [ (JR.invoke "substring_2" (JR.local "path") [ (JR.int 0), (JR.map2 JR.sub (JR.local "endIndex") (JR.int 1)) ]) ]) ]) (JR.run [ 
                        JR.declare "pathWithoutName" "" (JR.invoke "substring_2" (JR.local "path") [ (JR.int 0), (JR.local "endIndex") ]), 
                        JR.return (JR.local "pathWithoutName") ]) ])
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

