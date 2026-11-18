module Org.Allbinary.Logic.Io.File.Path.AbPathUtilOld exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.path
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.Logic.Io.File.FilePathData as FilePathData
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil


jclass : String
jclass =
    "AbPathUtilOld"


jchain : List String
jchain =
    [ "AbPathUtilOld" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "abPathData", JR.defaultOf "" ), ( "filePathData", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getExtension_1", jm_getExtension_1 )
        , ( "getWithoutExtension_1", jm_getWithoutExtension_1 )
        , ( "isValid_1", jm_isValid_1 )
        , ( "isValidStart_1", jm_isValidStart_1 )
        , ( "isValidEnd_1", jm_isValidEnd_1 )
        , ( "adjustStart_1", jm_adjustStart_1 )
        , ( "adjustEnd_1", jm_adjustEnd_1 )
        , ( "adjust_1", jm_adjust_1 )
        , ( "getNameFromPath_1", jm_getNameFromPath_1 )
        , ( "removeNameFromPath_1", jm_removeNameFromPath_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbPathUtilOld"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getExtension_1", jm_getExtension_1 ), ( "jm_getWithoutExtension_1", jm_getWithoutExtension_1 ), ( "jm_isValid_1", jm_isValid_1 ), ( "jm_isValidStart_1", jm_isValidStart_1 ), ( "jm_isValidEnd_1", jm_isValidEnd_1 ), ( "jm_adjustStart_1", jm_adjustStart_1 ), ( "jm_adjustEnd_1", jm_adjustEnd_1 ), ( "jm_adjust_1", jm_adjust_1 ), ( "jm_getNameFromPath_1", jm_getNameFromPath_1 ), ( "jm_removeNameFromPath_1", jm_removeNameFromPath_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_MIN", jstatic_MIN ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbPathUtilOld" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_MIN : JR.M
jstatic_MIN s =
    JR.static "AbPathUtilOld" jclinit "MIN"
        (JR.int 4)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "abPathData" "" JR.this (JR.callStatic AbPathData.jm_getInstance_0 [])),
                JR.exec (JR.setField "filePathData" "" JR.this (JR.callStatic FilePathData.jm_getInstance_0 [])),
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


jm_getExtension_1 : JR.Method
jm_getExtension_1 jheap jthis jargs =
    JR.method [ ( "abFilePath", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getExtension_1" JR.this [ (JR.invoke "toString_0" (JR.local "abFilePath") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getWithoutExtension_1 : JR.Method
jm_getWithoutExtension_1 jheap jthis jargs =
    JR.method [ ( "abFilePath", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getWithoutExtension_1" JR.this [ (JR.invoke "toString_0" (JR.local "abFilePath") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isValid_1 : JR.Method
jm_isValid_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "isValidStart_1" JR.this [ (JR.local "path") ]) (JR.run [ 
                        JR.ifElse (JR.invoke "isValidEnd_1" JR.this [ (JR.local "path") ]) (JR.run [ 
                            JR.return (JR.bool True) ]) identity ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isValidStart_1 : JR.Method
jm_isValidStart_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "charAt_1" (JR.local "path") [ (JR.int 0) ]) (JR.field "SEPARATORCHAR" (JR.thisField "abPathData"))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isValidEnd_1 : JR.Method
jm_isValidEnd_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.callStatic StringValidationUtil.jm_getInstance_0 []) [ (JR.local "path") ]) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "charAt_1" (JR.local "path") [ (JR.map2 JR.sub (JR.invoke "length_0" (JR.local "path") []) (JR.int 1)) ]) (JR.field "SEPARATORCHAR" (JR.thisField "abPathData"))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjustStart_1 : JR.Method
jm_adjustStart_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidStart_1" JR.this [ (JR.local "path") ])) (JR.run [ 
                        JR.exec (JR.setLocal "path" "" (JR.concat (JR.field "SEPARATOR" (JR.thisField "abPathData")) (JR.local "path"))) ]) identity, 
                    JR.return (JR.local "path") ])
        (jregister jheap)
        jthis
        jargs


jm_adjustEnd_1 : JR.Method
jm_adjustEnd_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidEnd_1" JR.this [ (JR.local "path") ])) (JR.run [ 
                        JR.exec (JR.setLocal "path" "" (JR.concat (JR.local "path") (JR.field "SEPARATOR" (JR.thisField "abPathData")))) ]) identity, 
                    JR.return (JR.local "path") ])
        (jregister jheap)
        jthis
        jargs


jm_adjust_1 : JR.Method
jm_adjust_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.callStatic StringValidationUtil.jm_getInstance_0 []) [ (JR.local "path") ]) (JR.run [ 
                        JR.return (JR.field "SEPARATOR" (JR.thisField "abPathData")) ]) identity, 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.local "path") [ (JR.str "\\") ]) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "path" "" (JR.invoke "replace_2" (JR.local "path") [ (JR.char 92), (JR.field "SEPARATORCHAR" (JR.thisField "abPathData")) ])) ]) identity, 
                    JR.return (JR.local "path") ])
        (jregister jheap)
        jthis
        jargs


jm_getNameFromPath_1 : JR.Method
jm_getNameFromPath_1 jheap jthis jargs =
    JR.method [ ( "categoryPath", "" ) ] ""
        (JR.run [ 
                    JR.declare "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "categoryPath") [ (JR.field "SEPARATOR" (JR.thisField "abPathData")) ]), 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "categoryPath") [ (JR.field "SEPARATORCHAR" (JR.thisField "filePathData")) ])) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                    JR.return (JR.local "categoryPath") ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "length_0" (JR.local "categoryPath") []) (JR.map2 JR.add (JR.local "endIndex") (JR.int 1))) (JR.run [ 
                        JR.declare "categoryName" "" (JR.invoke "substring_2" (JR.local "categoryPath") [ (JR.int 0), (JR.local "endIndex") ]), 
                        JR.return (JR.invoke "getNameFromPath_1" JR.this [ (JR.local "categoryName") ]) ]) (JR.run [ 
                        JR.declare "categoryName" "" (JR.invoke "substring_1" (JR.local "categoryPath") [ (JR.map2 JR.add (JR.local "endIndex") (JR.int 1)) ]), 
                        JR.return (JR.local "categoryName") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeNameFromPath_1 : JR.Method
jm_removeNameFromPath_1 jheap jthis jargs =
    JR.method [ ( "categoryPath", "" ) ] ""
        (JR.run [ 
                    JR.declare "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "categoryPath") [ (JR.field "SEPARATOR" (JR.thisField "abPathData")) ]), 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "endIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "categoryPath") [ (JR.field "SEPARATORCHAR" (JR.thisField "filePathData")) ])) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "endIndex") (JR.int 0)) (JR.run [ 
                        JR.return (JR.callStatic AbPath.jm_createAbPath_0 []) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "length_0" (JR.local "categoryPath") []) (JR.map2 JR.add (JR.local "endIndex") (JR.int 1))) (JR.run [ 
                        JR.return (JR.invoke "removeNameFromPath_1" JR.this [ (JR.invoke "substring_2" (JR.local "categoryPath") [ (JR.int 0), (JR.map2 JR.sub (JR.local "endIndex") (JR.int 1)) ]) ]) ]) (JR.run [ 
                        JR.declare "categoryName" "" (JR.invoke "substring_2" (JR.local "categoryPath") [ (JR.int 0), (JR.local "endIndex") ]), 
                        JR.return (JR.new AbPath.jnew_2 [ (JR.local "categoryName"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ]) ])
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

