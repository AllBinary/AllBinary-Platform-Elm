module Org.Allbinary.Input.Motion.Button.CancelTouchButtonInputFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.BasicTouchInputFactory as BasicTouchInputFactory
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "CancelTouchButtonInputFactory"


jchain : List String
jchain =
    [ "CancelTouchButtonInputFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "cancelInputArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getCancel_1", jm_getCancel_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CancelTouchButtonInputFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getCancel_1", jm_getCancel_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CancelTouchButtonInputFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "cancelInputArray" "" JR.this (JR.newArray "" [ (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])) ])),
                identity,
                (JR.run [ 
                    JR.declare "basicTouchInputFactory" "" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "cancelInputArray")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67258 -> (JR.setLocal "index" "I" (JR.lit jwN67258))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "cancelInputArray") (\jaN67142 -> JR.andThen (JR.local "index") (\jiN67142 -> (JR.aset (JR.lit jaN67142) (JR.lit jiN67142) (JR.field "NONE" (JR.local "basicTouchInputFactory")))))) ]) ], 
                    JR.exec (JR.andThen (JR.thisField "cancelInputArray") (\jaN67276 -> JR.andThen (JR.invoke "getId_0" (JR.field "UP" (JR.local "basicTouchInputFactory")) []) (\jiN67276 -> (JR.aset (JR.lit jaN67276) (JR.lit jiN67276) (JR.field "DOWN" (JR.local "basicTouchInputFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "cancelInputArray") (\jaN67340 -> JR.andThen (JR.invoke "getId_0" (JR.field "DOWN" (JR.local "basicTouchInputFactory")) []) (\jiN67340 -> (JR.aset (JR.lit jaN67340) (JR.lit jiN67340) (JR.field "UP" (JR.local "basicTouchInputFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "cancelInputArray") (\jaN67404 -> JR.andThen (JR.invoke "getId_0" (JR.field "LEFT" (JR.local "basicTouchInputFactory")) []) (\jiN67404 -> (JR.aset (JR.lit jaN67404) (JR.lit jiN67404) (JR.field "RIGHT" (JR.local "basicTouchInputFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "cancelInputArray") (\jaN67468 -> JR.andThen (JR.invoke "getId_0" (JR.field "RIGHT" (JR.local "basicTouchInputFactory")) []) (\jiN67468 -> (JR.aset (JR.lit jaN67468) (JR.lit jiN67468) (JR.field "LEFT" (JR.local "basicTouchInputFactory")))))) ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "CancelTouchButtonInputFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getCancel_1 : JR.Method
jm_getCancel_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "cancelInputArray") (JR.invoke "getId_0" (JR.local "touchButtonInput") [])) ])
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

