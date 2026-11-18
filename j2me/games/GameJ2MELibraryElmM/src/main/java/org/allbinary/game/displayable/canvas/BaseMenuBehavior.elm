module Org.Allbinary.Game.Displayable.Canvas.BaseMenuBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable


jclass : String
jclass =
    "BaseMenuBehavior"


jchain : List String
jchain =
    [ "BaseMenuBehavior" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "onDisplayChangeEvent_2", jm_onDisplayChangeEvent_2 )
        , ( "initSpecialPaint_1", jm_initSpecialPaint_1 )
        , ( "initMenu_1", jm_initMenu_1 )
        , ( "updateMenu_1", jm_updateMenu_1 )
        , ( "popupMenu_1", jm_popupMenu_1 )
        , ( "closeMenu_1", jm_closeMenu_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseMenuBehavior"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_onDisplayChangeEvent_2", jm_onDisplayChangeEvent_2 ), ( "jm_initSpecialPaint_1", jm_initSpecialPaint_1 ), ( "jm_initMenu_1", jm_initMenu_1 ), ( "jm_updateMenu_1", jm_updateMenu_1 ), ( "jm_popupMenu_1", jm_popupMenu_1 ), ( "jm_closeMenu_1", jm_closeMenu_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BaseMenuBehavior" jclinit "instance"
        (JR.new jnew_0 [])
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_onDisplayChangeEvent_2 : JR.Method
jm_onDisplayChangeEvent_2 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ), ( "displayChangeEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_initSpecialPaint_1 : JR.Method
jm_initSpecialPaint_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setNonBotPaintableP_1" (JR.local "allBinaryGameCanvas") [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initMenu_1 : JR.Method
jm_initMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_updateMenu_1 : JR.Method
jm_updateMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_popupMenu_1 : JR.Method
jm_popupMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_closeMenu_1 : JR.Method
jm_closeMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
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

