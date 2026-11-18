module Org.Allbinary.Layer.NullLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Layer.Layer as Layer


jclass : String
jclass =
    "NullLayer"


jchain : List String
jchain =
    [ "NullLayer" ]
        ++ Layer.jchain


jfields : List ( String, JR.JValue )
jfields =
    Layer.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "paint_1", jm_paint_1 ) ]
        Layer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullLayer"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NullLayer" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Layer.jinit_2 JR.this [ (JR.int 0), (JR.int 0) ]),
                identity,
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


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
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

