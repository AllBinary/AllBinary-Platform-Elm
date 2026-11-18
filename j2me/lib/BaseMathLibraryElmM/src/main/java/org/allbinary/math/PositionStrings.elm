module Org.Allbinary.Math.PositionStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR



jclass : String
jclass =
    "PositionStrings"


jchain : List String
jchain =
    [ "PositionStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "X", JR.defaultOf "" ), ( "Y", JR.defaultOf "" ), ( "X_LABEL", JR.defaultOf "" ), ( "Y_LABEL", JR.defaultOf "" ), ( "Z_LABEL", JR.defaultOf "" ), ( "DX_LABEL", JR.defaultOf "" ), ( "DY_LABEL", JR.defaultOf "" ), ( "DZ_LABEL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PositionStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PositionStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "X" "" JR.this (JR.str "x")),
                JR.exec (JR.setField "Y" "" JR.this (JR.str "y")),
                JR.exec (JR.setField "X_LABEL" "" JR.this (JR.str "x: ")),
                JR.exec (JR.setField "Y_LABEL" "" JR.this (JR.str "y: ")),
                JR.exec (JR.setField "Z_LABEL" "" JR.this (JR.str "z: ")),
                JR.exec (JR.setField "DX_LABEL" "" JR.this (JR.str "dx: ")),
                JR.exec (JR.setField "DY_LABEL" "" JR.this (JR.str "dy: ")),
                JR.exec (JR.setField "DZ_LABEL" "" JR.this (JR.str "dz: ")),
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
                    JR.return jstatic_instance ])
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

