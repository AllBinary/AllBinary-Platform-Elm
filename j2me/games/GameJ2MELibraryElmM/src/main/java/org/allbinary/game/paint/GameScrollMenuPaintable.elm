module Org.Allbinary.Game.Paint.GameScrollMenuPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Game.Paint.BasicGameDemoPaintable as BasicGameDemoPaintable
import Org.Allbinary.Graphics.Color.ColorChangeEventHandler as ColorChangeEventHandler
import Org.Allbinary.Graphics.Color.ColorChangeListener as ColorChangeListener


jclass : String
jclass =
    "GameScrollMenuPaintable"


jchain : List String
jchain =
    [ "GameScrollMenuPaintable" ]
        ++ BasicGameDemoPaintable.jchain
        ++ ColorChangeListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicGameDemoPaintable.jfields ++ []


jvtable =
    JR.vtable
        [ ( "setState_1", jm_setState_1 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "setColor_1", jm_setColor_1 ) ]
        BasicGameDemoPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameScrollMenuPaintable"
        [ ( "jm_setState_1", jm_setState_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_setColor_1", jm_setColor_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "mainDemoStatePaintable", "" ), ( "ownershipPaintable", "" ), ( "helpPaintableInterface", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicGameDemoPaintable.jinit_3 JR.this [ (JR.local "mainDemoStatePaintable"), (JR.local "ownershipPaintable"), (JR.local "helpPaintableInterface") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setColor_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic ColorChangeEventHandler.jm_getInstance_0 []) [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_setState_1 : JR.Method
jm_setState_1 jheap jthis jargs =
    JR.method [ ( "state", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setCurrentStatePaintable_1" JR.this [ (JR.invoke "getMainDemoStatePaintable_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setColor_1 : JR.Method
jm_setColor_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "mainGameDemoStatePaintable" "" (JR.invoke "getMainDemoStatePaintable_0" JR.this []), 
                    JR.declare "formPaintable" "" (JR.invoke "getMenuPaintableInterface_0" (JR.local "mainGameDemoStatePaintable") []), 
                    JR.declare "scrollSelectionForm" "" (JR.invoke "getForm_0" (JR.local "formPaintable") []), 
                    JR.exec (JR.invoke "setBasicColorP_1" (JR.invoke "getOwnershipPaintableInterface_0" (JR.local "mainGameDemoStatePaintable") []) [ (JR.local "basicColor") ]), 
                    JR.exec (JR.invoke "setButtonBasicColor_1" (JR.local "scrollSelectionForm") [ (JR.local "basicColor") ]), 
                    JR.declare "item" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "stringComponent" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "scrollSelectionForm") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68915 -> (JR.setLocal "index" "I" (JR.lit jwN68915))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "item" "" (JR.invoke "get_1" (JR.local "scrollSelectionForm") [ (JR.local "index") ])), 
                        JR.exec (JR.setLocal "stringComponent" "" (JR.invoke "getLabelStringComponent_0" (JR.local "item") [])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "stringComponent") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "setForegroundBasicColor_1" (JR.local "stringComponent") [ (JR.local "basicColor") ]) ]) identity ]) ] ])
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

