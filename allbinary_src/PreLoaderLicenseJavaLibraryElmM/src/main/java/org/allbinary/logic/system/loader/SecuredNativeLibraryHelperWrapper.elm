module Org.Allbinary.Logic.System.Loader.SecuredNativeLibraryHelperWrapper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.loader
-}

import JR
import Org.Allbinary.Logic.System.Security.AbKeys as AbKeys
import Org.Allbinary.Logic.System.Loader.NativeLibraryHelperWrapper as NativeLibraryHelperWrapper


jclass : String
jclass =
    "SecuredNativeLibraryHelperWrapper"


jchain : List String
jchain =
    [ "SecuredNativeLibraryHelperWrapper" ]
        ++ NativeLibraryHelperWrapper.jchain


jfields : List ( String, JR.JValue )
jfields =
    NativeLibraryHelperWrapper.jfields ++ [ ( "securedNativeLibraryInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "unlock_1", jm_unlock_1 ) ]
        NativeLibraryHelperWrapper.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SecuredNativeLibraryHelperWrapper"
        [ ( "jm_unlock_1", jm_unlock_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "securedNativeLibraryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect NativeLibraryHelperWrapper.jinit_1 JR.this [ (JR.invoke "getLibraryName_0" (JR.local "securedNativeLibraryInterface") []) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "securedNativeLibraryInterface" "" JR.this (JR.local "securedNativeLibraryInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_unlock_1 : JR.Method
jm_unlock_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "unlock_1" (JR.thisField "securedNativeLibraryInterface") [ (JR.invoke "getKey_2" (JR.callStatic AbKeys.jm_getInstance_0 []) [ (JR.local "abeClientInformation"), (JR.invoke "getName_0" (JR.thisField "securedNativeLibraryInterface") []) ]) ]) ])
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

