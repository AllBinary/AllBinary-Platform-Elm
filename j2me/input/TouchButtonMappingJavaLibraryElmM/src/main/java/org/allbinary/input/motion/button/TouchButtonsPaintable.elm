module Org.Allbinary.Input.Motion.Button.TouchButtonsPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Input.Motion.Button.TouchButtonFactory as TouchButtonFactory


jclass : String
jclass =
    "TouchButtonsPaintable"


jchain : List String
jchain =
    [ "TouchButtonsPaintable" ]
        ++ Paintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "foregroundBasicColor", JR.defaultOf "" ), ( "foregroundColor", JR.defaultOf "I" ), ( "basicSetColorUtil", JR.defaultOf "" ), ( "touchButtonFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonsPaintable"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "touchButtonFactory" "" JR.this (JR.callStatic TouchButtonFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "foregroundBasicColor" "" JR.this (JR.local "basicColor")), 
                    JR.exec (JR.setField "foregroundColor" "I" JR.this (JR.invoke "intValue_0" (JR.local "basicColor") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getList_0" (JR.thisField "touchButtonFactory") []), 
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "foregroundBasicColor"), (JR.thisField "foregroundColor") ]), 
                    JR.declare "touchButton" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.local "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67779 -> (JR.setLocal "index" "I" (JR.lit jwN67779))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "touchButton" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "paint_1" (JR.local "touchButton") [ (JR.local "graphics") ]) ]) ], 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.local "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67938 -> (JR.setLocal "index" "I" (JR.lit jwN67938))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "touchButton" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "paintHint_1" (JR.local "touchButton") [ (JR.local "graphics") ]) ]) ] ])
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

