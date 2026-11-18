module Org.Allbinary.Input.Motion.Button.TouchButton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "TouchButton"


jchain : List String
jchain =
    [ "TouchButton" ]
        ++ Paintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "touchButtonInput", JR.defaultOf "" ), ( "animationInterface", JR.defaultOf "" ), ( "rawRectangle", JR.defaultOf "" ), ( "xBorder", JR.defaultOf "I" ), ( "yBorder", JR.defaultOf "I" ), ( "rectangle", JR.defaultOf "" ), ( "cellPosition", JR.defaultOf "" ), ( "animationX", JR.defaultOf "I" ), ( "animationY", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 )
        , ( "updateRectangle_0", jm_updateRectangle_0 )
        , ( "getCellPositionP_0", jm_getCellPositionP_0 )
        , ( "getRectangleP_0", jm_getRectangleP_0 )
        , ( "getTouchButtonInput_0", jm_getTouchButtonInput_0 )
        , ( "toString_0", jm_toString_0 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButton"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jm_updateRectangle_0", jm_updateRectangle_0 ), ( "jm_getCellPositionP_0", jm_getCellPositionP_0 ), ( "jm_getRectangleP_0", jm_getRectangleP_0 ), ( "jm_getTouchButtonInput_0", jm_getTouchButtonInput_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ), ( "animationInterface", "" ), ( "rawRectangle", "" ), ( "cellPosition", "" ), ( "xBorder", "I" ), ( "yBorder", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "rectangle" "" JR.this RectangleFactory.jstatic_SINGLETON),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "touchButtonInput" "" JR.this (JR.local "touchButtonInput")), 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "rawRectangle" "" JR.this (JR.local "rawRectangle")), 
                    JR.exec (JR.setField "cellPosition" "" JR.this (JR.local "cellPosition")), 
                    JR.exec (JR.setField "xBorder" "I" JR.this (JR.local "xBorder")), 
                    JR.exec (JR.setField "yBorder" "I" JR.this (JR.local "yBorder")), 
                    JR.exec (JR.invoke "updateRectangle_0" JR.this []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Created: ") ]) [ (JR.invoke "toString_0" JR.this []) ]) []), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.thisField "animationX"), (JR.thisField "animationY") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateRectangle_0 : JR.Method
jm_updateRectangle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "x" "I" (JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.thisField "rawRectangle") []) (JR.invoke "getColumn_0" (JR.thisField "cellPosition") [])), 
                        JR.declare "y" "I" (JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.thisField "rawRectangle") []) (JR.invoke "getRow_0" (JR.thisField "cellPosition") [])), 
                        JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                        JR.exec (JR.setField "rectangle" "" JR.this (JR.new Rectangle.jnew_3 [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.map2 JR.add (JR.local "x") (JR.thisField "xBorder")), (JR.map2 JR.add (JR.local "y") (JR.thisField "yBorder")) ]), (JR.invoke "getWidth_0" (JR.thisField "rawRectangle") []), (JR.invoke "getHeight_0" (JR.thisField "rawRectangle") []) ])), 
                        JR.declare "point" "" (JR.invoke "getPoint_0" (JR.thisField "rectangle") []), 
                        JR.exec (JR.setField "animationX" "I" JR.this (JR.invoke "getX_0" (JR.local "point") [])), 
                        JR.exec (JR.setField "animationY" "I" JR.this (JR.invoke "getY_0" (JR.local "point") [])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "updateRectangle"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getCellPositionP_0 : JR.Method
jm_getCellPositionP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "cellPosition") ])
        (jregister jheap)
        jthis
        jargs


jm_getRectangleP_0 : JR.Method
jm_getRectangleP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "rectangle") ])
        (jregister jheap)
        jthis
        jargs


jm_getTouchButtonInput_0 : JR.Method
jm_getTouchButtonInput_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "touchButtonInput") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "TouchButton: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "rectangle") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " CellPosition: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "cellPosition") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " xBorder: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "xBorder") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " yBorder: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "yBorder") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

