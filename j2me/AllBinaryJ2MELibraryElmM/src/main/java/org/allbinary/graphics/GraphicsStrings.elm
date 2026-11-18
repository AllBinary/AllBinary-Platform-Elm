module Org.Allbinary.Graphics.GraphicsStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR



jclass : String
jclass =
    "GraphicsStrings"


jchain : List String
jchain =
    [ "GraphicsStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ANIMATION", JR.defaultOf "" ), ( "ANGLE", JR.defaultOf "" ), ( "MOVEMENT_ANGLE", JR.defaultOf "" ), ( "ROTATION", JR.defaultOf "" ), ( "OPACITY", JR.defaultOf "" ), ( "HTML", JR.defaultOf "" ), ( "WIDTH", JR.defaultOf "" ), ( "HEIGHT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GraphicsStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GraphicsStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ANIMATION" "" JR.this (JR.str "animation")),
                JR.exec (JR.setField "ANGLE" "" JR.this (JR.str "angle")),
                JR.exec (JR.setField "MOVEMENT_ANGLE" "" JR.this (JR.str "movement_angle")),
                JR.exec (JR.setField "ROTATION" "" JR.this (JR.str "rotation")),
                JR.exec (JR.setField "OPACITY" "" JR.this (JR.str "opacity")),
                JR.exec (JR.setField "HTML" "" JR.this (JR.str "HTML")),
                JR.exec (JR.setField "WIDTH" "" JR.this (JR.str "width")),
                JR.exec (JR.setField "HEIGHT" "" JR.this (JR.str "height")),
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

