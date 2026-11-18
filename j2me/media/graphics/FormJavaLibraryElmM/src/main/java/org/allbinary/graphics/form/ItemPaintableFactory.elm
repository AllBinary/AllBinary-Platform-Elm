module Org.Allbinary.Graphics.Form.ItemPaintableFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.ItemPaintable as ItemPaintable


jclass : String
jclass =
    "ItemPaintableFactory"


jchain : List String
jchain =
    [ "ItemPaintableFactory" ]
        ++ ItemPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ItemPaintable.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceItemPaintable_1", jm_getInstanceItemPaintable_1 ) ]
        ItemPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ItemPaintableFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceItemPaintable_1", jm_getInstanceItemPaintable_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ItemPaintableFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect ItemPaintable.jinit_0 JR.this []),
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


jm_getInstanceItemPaintable_1 : JR.Method
jm_getInstanceItemPaintable_1 jheap jthis jargs =
    JR.method [ ( "paintableForm", "" ) ] ""
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

