module Org.Allbinary.Logic.System.Loader.NativeLibraryClassLoader exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.loader
-}

import JR



jclass : String
jclass =
    "NativeLibraryClassLoader"


jchain : List String
jchain =
    [ "NativeLibraryClassLoader" ]
        ++ [ "ClassLoader" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ [ ( "message", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NativeLibraryClassLoader"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "parent", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "ClassLoader.jinit_1") JR.this [ (JR.local "parent") ]),
                JR.exec (JR.setField "message" "" JR.this (JR.str "This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

