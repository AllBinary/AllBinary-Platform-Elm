module Org.Allbinary.Graphics.Displayable.BaseScalable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable
-}

import JR
import Org.Allbinary.Graphics.Displayable.ScalableListener as ScalableListener


jclass : String
jclass =
    "BaseScalable"


jchain : List String
jchain =
    [ "BaseScalable" ]
        ++ ScalableListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getRatio_1", jm_getRatio_1 )
        , ( "getLeft_1", jm_getLeft_1 )
        , ( "getTop_1", jm_getTop_1 )
        , ( "scale_1", jm_scale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseScalable"
        [ ( "jm_getRatio_1", jm_getRatio_1 ), ( "jm_getLeft_1", jm_getLeft_1 ), ( "jm_getTop_1", jm_getTop_1 ), ( "jm_scale_1", jm_scale_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_getRatio_1 : JR.Method
jm_getRatio_1 jheap jthis jargs =
    JR.method [ ( "ratio", "F" ) ] "F"
        (JR.run [ 
                    JR.return (JR.float 1.0) ])
        (jregister jheap)
        jthis
        jargs


jm_getLeft_1 : JR.Method
jm_getLeft_1 jheap jthis jargs =
    JR.method [ ( "xOffset", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_getTop_1 : JR.Method
jm_getTop_1 jheap jthis jargs =
    JR.method [ ( "yOffset", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_scale_1 : JR.Method
jm_scale_1 jheap jthis jargs =
    JR.method [ ( "ratio", "F" ) ] ""
        identity
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

