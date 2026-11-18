module Org.Allbinary.Animation.Image.ChangeColorProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.ModifierBaseProcessor as ModifierBaseProcessor


jclass : String
jclass =
    "ChangeColorProcessor"


jchain : List String
jchain =
    [ "ChangeColorProcessor" ]
        ++ ModifierBaseProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    ModifierBaseProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "updateColor_5", jm_updateColor_5 ) ]
        ModifierBaseProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ChangeColorProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_updateColor_5", jm_updateColor_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "ChangeColorProcessor" jclinit "instanceC"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect ModifierBaseProcessor.jinit_0 JR.this []),
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
                    JR.return jstatic_instanceC ])
        (jregister jheap)
        jthis
        jargs


jm_updateColor_5 : JR.Method
jm_updateColor_5 jheap jthis jargs =
    JR.method [ ( "imageModifierUtil", "" ), ( "originalImage", "" ), ( "imageToShow", "" ), ( "index", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "changeColor_4" (JR.local "imageModifierUtil") [ (JR.local "originalImage"), (JR.local "imageToShow"), (JR.local "index"), (JR.local "basicColor") ]) ])
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

