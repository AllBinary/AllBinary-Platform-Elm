module Org.Allbinary.Graphics.Form.LockableFormPaintableFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.ItemPaintableFactory as ItemPaintableFactory
import Org.Allbinary.Graphics.Form.LockablePaintable as LockablePaintable


jclass : String
jclass =
    "LockableFormPaintableFactory"


jchain : List String
jchain =
    [ "LockableFormPaintableFactory" ]
        ++ ItemPaintableFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    ItemPaintableFactory.jfields ++ [ ( "lockedIndex", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstanceItemPaintable_1", jm_getInstanceItemPaintable_1 ) ]
        ItemPaintableFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LockableFormPaintableFactory"
        [ ( "jm_getInstanceItemPaintable_1", jm_getInstanceItemPaintable_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "lockedIndex", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ItemPaintableFactory.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "lockedIndex" "I" JR.this (JR.local "lockedIndex")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstanceItemPaintable_1 : JR.Method
jm_getInstanceItemPaintable_1 jheap jthis jargs =
    JR.method [ ( "paintableForm", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new LockablePaintable.jnew_1 [ (JR.thisField "lockedIndex") ]) ])
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

