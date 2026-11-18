module Org.Allbinary.Input.NoAllBinarySensor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input
-}

import JR
import Org.Allbinary.Input.AllBinarySensor as AllBinarySensor


jclass : String
jclass =
    "NoAllBinarySensor"


jchain : List String
jchain =
    [ "NoAllBinarySensor" ]
        ++ AllBinarySensor.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinarySensor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        AllBinarySensor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoAllBinarySensor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoAllBinarySensor" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinarySensor.jinit_0 JR.this []),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

