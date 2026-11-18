module Org.Allbinary.Graphics.Color.BasicColorSetUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR



jclass : String
jclass =
    "BasicColorSetUtil"


jchain : List String
jchain =
    [ "BasicColorSetUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setBasicColorP_2", jm_setBasicColorP_2 )
        , ( "setBasicColorP3_3", jm_setBasicColorP3_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicColorSetUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setBasicColorP_2", jm_setBasicColorP_2 ), ( "jm_setBasicColorP3_3", jm_setBasicColorP3_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicColorSetUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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


jm_setBasicColorP_2 : JR.Method
jm_setBasicColorP_2 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.local "basicColor") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP3_3 : JR.Method
jm_setBasicColorP3_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "basicColor", "" ), ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.local "value") ]) ])
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

