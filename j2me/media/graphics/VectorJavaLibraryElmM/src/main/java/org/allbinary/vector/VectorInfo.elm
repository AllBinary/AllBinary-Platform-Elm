module Org.Allbinary.Vector.VectorInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.vector
-}

import JR



jclass : String
jclass =
    "VectorInfo"


jchain : List String
jchain =
    [ "VectorInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ), ( "points", JR.defaultOf "" ), ( "totalFrames", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getWidth_0", jm_getWidth_0 )
        , ( "setWidth_1", jm_setWidth_1 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "setHeight_1", jm_setHeight_1 )
        , ( "getPoints_0", jm_getPoints_0 )
        , ( "setPoints_1", jm_setPoints_1 )
        , ( "getTotalFrames_0", jm_getTotalFrames_0 )
        , ( "setTotalFrames_1", jm_setTotalFrames_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorInfo"
        [ ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_setWidth_1", jm_setWidth_1 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_setHeight_1", jm_setHeight_1 ), ( "jm_getPoints_0", jm_getPoints_0 ), ( "jm_setPoints_1", jm_setPoints_1 ), ( "jm_getTotalFrames_0", jm_getTotalFrames_0 ), ( "jm_setTotalFrames_1", jm_setTotalFrames_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "points", "" ), ( "totalFrames", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")), 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")), 
                    JR.exec (JR.setField "points" "" JR.this (JR.local "points")), 
                    JR.exec (JR.setField "totalFrames" "I" JR.this (JR.local "totalFrames")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "width") ])
        (jregister jheap)
        jthis
        jargs


jm_setWidth_1 : JR.Method
jm_setWidth_1 jheap jthis jargs =
    JR.method [ ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "height") ])
        (jregister jheap)
        jthis
        jargs


jm_setHeight_1 : JR.Method
jm_setHeight_1 jheap jthis jargs =
    JR.method [ ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPoints_0 : JR.Method
jm_getPoints_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "points") ])
        (jregister jheap)
        jthis
        jargs


jm_setPoints_1 : JR.Method
jm_setPoints_1 jheap jthis jargs =
    JR.method [ ( "points", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "points" "" JR.this (JR.local "points")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalFrames_0 : JR.Method
jm_getTotalFrames_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "totalFrames") ])
        (jregister jheap)
        jthis
        jargs


jm_setTotalFrames_1 : JR.Method
jm_setTotalFrames_1 jheap jthis jargs =
    JR.method [ ( "totalFrames", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "totalFrames" "I" JR.this (JR.local "totalFrames")) ])
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

