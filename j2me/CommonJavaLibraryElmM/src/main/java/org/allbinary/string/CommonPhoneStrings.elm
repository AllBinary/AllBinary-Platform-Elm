module Org.Allbinary.String.CommonPhoneStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.string
-}

import JR



jclass : String
jclass =
    "CommonPhoneStrings"


jchain : List String
jchain =
    [ "CommonPhoneStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "UP", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "ZERO", JR.defaultOf "" ), ( "ONE", JR.defaultOf "" ), ( "TWO", JR.defaultOf "" ), ( "THREE", JR.defaultOf "" ), ( "FOUR", JR.defaultOf "" ), ( "FIVE", JR.defaultOf "" ), ( "SIX", JR.defaultOf "" ), ( "SEVEN", JR.defaultOf "" ), ( "EIGHT", JR.defaultOf "" ), ( "NINE", JR.defaultOf "" ), ( "POUND", JR.defaultOf "" ), ( "STAR", JR.defaultOf "" ), ( "FIRE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommonPhoneStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CommonPhoneStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "UP" "" JR.this (JR.str "UP")),
                JR.exec (JR.setField "DOWN" "" JR.this (JR.str "DOWN")),
                JR.exec (JR.setField "LEFT" "" JR.this (JR.str "LEFT")),
                JR.exec (JR.setField "RIGHT" "" JR.this (JR.str "RIGHT")),
                JR.exec (JR.setField "ZERO" "" JR.this (JR.str "0")),
                JR.exec (JR.setField "ONE" "" JR.this (JR.str "1")),
                JR.exec (JR.setField "TWO" "" JR.this (JR.str "2")),
                JR.exec (JR.setField "THREE" "" JR.this (JR.str "3")),
                JR.exec (JR.setField "FOUR" "" JR.this (JR.str "4")),
                JR.exec (JR.setField "FIVE" "" JR.this (JR.str "5")),
                JR.exec (JR.setField "SIX" "" JR.this (JR.str "6")),
                JR.exec (JR.setField "SEVEN" "" JR.this (JR.str "7")),
                JR.exec (JR.setField "EIGHT" "" JR.this (JR.str "8")),
                JR.exec (JR.setField "NINE" "" JR.this (JR.str "9")),
                JR.exec (JR.setField "POUND" "" JR.this (JR.str "#")),
                JR.exec (JR.setField "STAR" "" JR.this (JR.str "*")),
                JR.exec (JR.setField "FIRE" "" JR.this (JR.str "FIRE")),
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

