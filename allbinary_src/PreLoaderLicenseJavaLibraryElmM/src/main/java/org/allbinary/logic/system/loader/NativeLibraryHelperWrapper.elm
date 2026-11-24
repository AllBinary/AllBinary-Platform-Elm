module Org.Allbinary.Logic.System.Loader.NativeLibraryHelperWrapper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.loader
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JSystem
import Org.Allbinary.Logic.System.Loader.NativeLibraryClassLoader as NativeLibraryClassLoader


jclass : String
jclass =
    "NativeLibraryHelperWrapper"


jchain : List String
jchain =
    [ "NativeLibraryHelperWrapper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "libraryName", JR.defaultOf "" ), ( "loader", JR.defaultOf "" ), ( "anyType", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "load_0", jm_load_0 )
        , ( "unload_0", jm_unload_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "getLibraryName_0", jm_getLibraryName_0 )
        , ( "setLibraryName_1", jm_setLibraryName_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NativeLibraryHelperWrapper"
        [ ( "jm_load_0", jm_load_0 ), ( "jm_unload_0", jm_unload_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getLibraryName_0", jm_getLibraryName_0 ), ( "jm_setLibraryName_1", jm_setLibraryName_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "libraryName", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setLibraryName_1" JR.this [ (JR.local "libraryName") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_load_0 : JR.Method
jm_load_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "params" "" (JR.newArray "" [ (JR.int 1) ]), 
                    JR.exec (JR.andThen (JR.local "params") (\jaN66243 -> JR.andThen (JR.int 0) (\jiN66243 -> (JR.aset (JR.lit jaN66243) (JR.lit jiN66243) (JR.invoke "getLibraryName_0" JR.this []))))), 
                    JR.declare "classes" "" (JR.newArray "" [ (JR.int 1) ]), 
                    JR.exec (JR.andThen (JR.local "classes") (\jaN66334 -> JR.andThen (JR.int 0) (\jiN66334 -> (JR.aset (JR.lit jaN66334) (JR.lit jiN66334) (JR.getClass (JR.invoke "getLibraryName_0" JR.this [])))))), 
                    JR.exec (JR.setField "loader" "" JR.this (JR.new NativeLibraryClassLoader.jnew_1 [ (JR.invoke "getClassLoader_0" (JR.getClass JR.this) []) ])), 
                    JR.declare "myClass" "" (JR.invoke "loadClass_1" (JR.thisField "loader") [ (JR.str "dynamic.NativeLibraryHelper") ]), 
                    JR.declare "constructor" "" (JR.invoke "getConstructor_1" (JR.local "myClass") [ (JR.local "classes") ]), 
                    JR.exec (JR.setField "anyType" "" JR.this (JR.invoke "newInstance_1" (JR.local "constructor") [ (JR.local "params") ])), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.declare "method" "" (JR.invoke "getMethod_2" (JR.getClass (JR.thisField "anyType")) [ (JR.field "LOAD" (JR.local "commonStrings")), JR.null ]), 
                    JR.exec (JR.invoke "invoke_2" (JR.local "method") [ (JR.thisField "anyType"), JR.null ]) ])
        (jregister jheap)
        jthis
        jargs


jm_unload_0 : JR.Method
jm_unload_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "anyType" "" JR.this JR.null), 
                    JR.exec (JR.setField "loader" "" JR.this JR.null), 
                    JR.exec (JR.callStatic JSystem.jm_gc_0 []), 
                    JR.exec (JR.callStatic JSystem.jm_gc_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.concat (JR.str "Library: ") (JR.invoke "getLibraryName_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getLibraryName_0 : JR.Method
jm_getLibraryName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "libraryName") ])
        (jregister jheap)
        jthis
        jargs


jm_setLibraryName_1 : JR.Method
jm_setLibraryName_1 jheap jthis jargs =
    JR.method [ ( "libraryName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "libraryName" "" JR.this (JR.local "libraryName")) ])
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

