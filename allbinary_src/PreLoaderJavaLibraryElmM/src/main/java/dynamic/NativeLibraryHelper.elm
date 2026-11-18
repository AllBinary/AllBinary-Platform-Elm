module Dynamic.NativeLibraryHelper exposing (..)

{-| Generated Code Do Not Modify package dynamic
-}

import JR
import JSystem


jclass : String
jclass =
    "NativeLibraryHelper"


jchain : List String
jchain =
    [ "NativeLibraryHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "library", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "load_0", jm_load_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NativeLibraryHelper"
        [ ( "jm_load_0", jm_load_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "library", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "library" "" JR.this (JR.local "library")) ]) ])
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
                    JR.exec (JR.callStatic JSystem.jm_loadLibrary_1 [ (JR.thisField "library") ]) ])
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

