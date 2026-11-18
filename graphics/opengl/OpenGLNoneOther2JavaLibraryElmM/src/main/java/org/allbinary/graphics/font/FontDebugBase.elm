module Org.Allbinary.Graphics.Font.FontDebugBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.font
-}

import JR



jclass : String
jclass =
    "FontDebugBase"


jchain : List String
jchain =
    [ "FontDebugBase" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SET_FONT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "debugMetrics_4", jm_debugMetrics_4 )
        , ( "debugDpi_2", jm_debugDpi_2 )
        , ( "debugDimension_4", jm_debugDimension_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FontDebugBase"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_debugMetrics_4", jm_debugMetrics_4 ), ( "jm_debugDpi_2", jm_debugDpi_2 ), ( "jm_debugDimension_4", jm_debugDimension_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceBase", jstatic_instanceBase ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceBase : JR.M
jstatic_instanceBase s =
    JR.static "FontDebugBase" jclinit "instanceBase"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SET_FONT" "" JR.this (JR.str "setFont")),
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
                    JR.return jstatic_instanceBase ])
        (jregister jheap)
        jthis
        jargs


jm_debugMetrics_4 : JR.Method
jm_debugMetrics_4 jheap jthis jargs =
    JR.method [ ( "currentFont", "" ), ( "convertedTextSize", "F" ), ( "displayMetrics", "" ), ( "stringBuffer", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_debugDpi_2 : JR.Method
jm_debugDpi_2 jheap jthis jargs =
    JR.method [ ( "densityDpi", "I" ), ( "stringBuffer", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_debugDimension_4 : JR.Method
jm_debugDimension_4 jheap jthis jargs =
    JR.method [ ( "currentFont", "" ), ( "convertedTextSize", "F" ), ( "longestDimensionTotalPixels", "I" ), ( "stringBuffer", "" ) ] ""
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

