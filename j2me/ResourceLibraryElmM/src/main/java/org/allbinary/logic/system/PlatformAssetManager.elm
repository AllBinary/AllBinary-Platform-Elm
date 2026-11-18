module Org.Allbinary.Logic.System.PlatformAssetManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system
-}

import JR
import Org.Allbinary.Data.Resource.ResourceUtil as ResourceUtil


jclass : String
jclass =
    "PlatformAssetManager"


jchain : List String
jchain =
    [ "PlatformAssetManager" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getResourceAsStream_1", jm_getResourceAsStream_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformAssetManager"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getResourceAsStream_1", jm_getResourceAsStream_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PlatformAssetManager" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_getResourceAsStream_1 : JR.Method
jm_getResourceAsStream_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.declare "resourceUtil" "" (JR.callStatic ResourceUtil.jm_getInstance_0 []), 
                    JR.declare "inputStream" "" (JR.invoke "getResourceAsStream_1" (JR.local "resourceUtil") [ (JR.local "resource") ]), 
                    JR.return (JR.local "inputStream") ])
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

