module Org.Allbinary.Logic.System.Loader.WebappClassLoaderInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.loader
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "WebappClassLoaderInfo"


jchain : List String
jchain =
    [ "WebappClassLoaderInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "setLoader_1", jm_setLoader_1 )
        , ( "getLoader_0", jm_getLoader_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WebappClassLoaderInfo"
        [ ( "jm_setLoader_1", jm_setLoader_1 ), ( "jm_getLoader_0", jm_getLoader_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_classLoader", jstatic_classLoader ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_classLoader : JR.M
jstatic_classLoader s =
    JR.static "WebappClassLoaderInfo" jclinit "classLoader"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setLoader_1 : JR.Method
jm_setLoader_1 jheap jthis jargs =
    JR.method [ ( "classLoader", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "WebappClassLoaderInfo.classLoader" "" (JR.local "classLoader")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLoader_0 : JR.Method
jm_getLoader_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_classLoader ])
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

