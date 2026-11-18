module Org.Allbinary.Emulator.Device.TrueTypeFontUtilBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.emulator.device
-}

import JR



jclass : String
jclass =
    "TrueTypeFontUtilBase"


jchain : List String
jchain =
    [ "TrueTypeFontUtilBase" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getAsTextureSize_1", jm_getAsTextureSize_1 )
        , ( "getCellSize_1", jm_getCellSize_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TrueTypeFontUtilBase"
        [ ( "jm_getAsTextureSize_1", jm_getAsTextureSize_1 ), ( "jm_getCellSize_1", jm_getCellSize_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "scale", "I" ) ] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getAsTextureSize_1 : JR.Method
jm_getAsTextureSize_1 jheap jthis jargs =
    JR.method [ ( "textureSize", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_getCellSize_1 : JR.Method
jm_getCellSize_1 jheap jthis jargs =
    JR.method [ ( "cellSize", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
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

