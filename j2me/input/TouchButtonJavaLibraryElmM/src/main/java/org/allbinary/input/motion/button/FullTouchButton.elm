module Org.Allbinary.Input.Motion.Button.FullTouchButton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Animation.FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Input.Motion.Button.TouchButton as TouchButton


jclass : String
jclass =
    "FullTouchButton"


jchain : List String
jchain =
    [ "FullTouchButton" ]
        ++ TouchButton.jchain


jfields : List ( String, JR.JValue )
jfields =
    TouchButton.jfields ++ []


jvtable =
    JR.vtable
        [ ( "createButton_6", jm_createButton_6 )
        , ( "updateRectangle_0", jm_updateRectangle_0 ) ]
        TouchButton.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FullTouchButton"
        [ ( "jm_createButton_6", jm_createButton_6 ), ( "jm_updateRectangle_0", jm_updateRectangle_0 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ), ( "animationInterface", "" ), ( "hintAnimationInterface", "" ), ( "rawRectangle", "" ), ( "cellPosition", "" ), ( "xBorder", "I" ), ( "yBorder", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect TouchButton.jinit_7 JR.this [ (JR.local "touchButtonInput"), (JR.local "animationInterface"), (JR.local "hintAnimationInterface"), (JR.local "rawRectangle"), (JR.local "cellPosition"), (JR.local "xBorder"), (JR.local "yBorder") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createButton_6 : JR.Method
jm_createButton_6 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ), ( "touchButtonResource", "" ), ( "rawRectangle", "" ), ( "cellPosition", "" ), ( "xBorder", "I" ), ( "yBorder", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_7 [ (JR.local "touchButtonInput"), (JR.invoke "getInstance_1" (JR.invoke "get_1" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) [ (JR.field "RESOURCE" (JR.local "touchButtonResource")) ]) [ (JR.int 0) ]), (JR.invoke "getInstance_1" (JR.invoke "get_1" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) [ (JR.field "HINT" (JR.local "touchButtonResource")) ]) [ (JR.int 0) ]), (JR.local "rawRectangle"), (JR.local "cellPosition"), (JR.local "xBorder"), (JR.local "yBorder") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateRectangle_0 : JR.Method
jm_updateRectangle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                        JR.declare "x" "I" (JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.thisField "rawRectangle") []) (JR.invoke "getColumn_0" (JR.thisField "cellPositionP") [])), 
                        JR.declare "y" "I" (JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.thisField "rawRectangle") []) (JR.invoke "getRow_0" (JR.thisField "cellPositionP") [])), 
                        JR.exec (JR.setField "rectangleP" "" JR.this (JR.new Rectangle.jnew_3 [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.local "x"), (JR.local "y") ]), (JR.plus (JR.invoke "getWidth_0" (JR.thisField "rawRectangle") []) ((JR.map2 JR.mul (JR.int 2) (JR.thisField "xBorder")))), (JR.plus (JR.invoke "getHeight_0" (JR.thisField "rawRectangle") []) ((JR.map2 JR.mul (JR.int 2) (JR.thisField "yBorder")))) ])), 
                        JR.declare "point" "" (JR.invoke "getPoint_0" (JR.thisField "rectangleP") []), 
                        JR.exec (JR.setField "animationX" "I" JR.this (JR.plus (JR.invoke "getX_0" (JR.local "point") []) (JR.thisField "xBorder"))), 
                        JR.exec (JR.setField "animationY" "I" JR.this (JR.plus (JR.invoke "getY_0" (JR.local "point") []) (JR.thisField "yBorder"))), 
                        JR.exec (JR.setField "hintAnimationY" "I" JR.this (JR.map2 JR.shr (JR.map2 JR.sub (JR.thisField "animationY") (JR.invoke "getHeight_0" (JR.thisField "rectangleP") [])) (JR.int 1))) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "updateRectangle"), (JR.local "e") ]) ]) ) ] identity ])
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

