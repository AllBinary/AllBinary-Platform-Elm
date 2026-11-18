module Org.Allbinary.Graphics.RectangleFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle


jclass : String
jclass =
    "RectangleFactory"


jchain : List String
jchain =
    [ "RectangleFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RectangleFactory"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ), ( "jstatic_ARRAY_OF_ARRAYS", jstatic_ARRAY_OF_ARRAYS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "RectangleFactory" jclinit "SINGLETON"
        (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.int 0), (JR.int 0) ])
        s


jstatic_ARRAY_OF_ARRAYS : JR.M
jstatic_ARRAY_OF_ARRAYS s =
    JR.static "RectangleFactory" jclinit "ARRAY_OF_ARRAYS"
        (JR.newArray "" [ (JR.int 0), (JR.int 0) ])
        s


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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

