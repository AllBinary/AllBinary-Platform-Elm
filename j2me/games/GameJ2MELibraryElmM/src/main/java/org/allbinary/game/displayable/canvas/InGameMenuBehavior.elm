module Org.Allbinary.Game.Displayable.Canvas.InGameMenuBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.BaseMenuBehavior as BaseMenuBehavior
import Org.Allbinary.Game.Displayable.Canvas.GameCanvasNonBotPaintable as GameCanvasNonBotPaintable


jclass : String
jclass =
    "InGameMenuBehavior"


jchain : List String
jchain =
    [ "InGameMenuBehavior" ]
        ++ BaseMenuBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseMenuBehavior.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "onDisplayChangeEvent_2", jm_onDisplayChangeEvent_2 )
        , ( "initSpecialPaint_1", jm_initSpecialPaint_1 )
        , ( "initMenu_1", jm_initMenu_1 )
        , ( "updateMenu_1", jm_updateMenu_1 )
        , ( "popupMenu_1", jm_popupMenu_1 )
        , ( "closeMenu_1", jm_closeMenu_1 ) ]
        BaseMenuBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InGameMenuBehavior"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_onDisplayChangeEvent_2", jm_onDisplayChangeEvent_2 ), ( "jm_initSpecialPaint_1", jm_initSpecialPaint_1 ), ( "jm_initMenu_1", jm_initMenu_1 ), ( "jm_updateMenu_1", jm_updateMenu_1 ), ( "jm_popupMenu_1", jm_popupMenu_1 ), ( "jm_closeMenu_1", jm_closeMenu_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "InGameMenuBehavior" jclinit "instanceC"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseMenuBehavior.jinit_0 JR.this []),
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


jm_onDisplayChangeEvent_2 : JR.Method
jm_onDisplayChangeEvent_2 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ), ( "displayChangeEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateMenuFromEvent_1" (JR.local "allBinaryGameCanvas") [ (JR.local "displayChangeEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initSpecialPaint_1 : JR.Method
jm_initSpecialPaint_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setNonBotPaintableP_1" (JR.local "allBinaryGameCanvas") [ (JR.new GameCanvasNonBotPaintable.jnew_1 [ (JR.local "allBinaryGameCanvas") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initMenu_1 : JR.Method
jm_initMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initMenu2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMenu_1 : JR.Method
jm_updateMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initMenu2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_popupMenu_1 : JR.Method
jm_popupMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "popupMenu2_0" (JR.local "allBinaryGameCanvas") []) ])
        (jregister jheap)
        jthis
        jargs


jm_closeMenu_1 : JR.Method
jm_closeMenu_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "closeMenu2_0" (JR.local "allBinaryGameCanvas") []) ])
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

