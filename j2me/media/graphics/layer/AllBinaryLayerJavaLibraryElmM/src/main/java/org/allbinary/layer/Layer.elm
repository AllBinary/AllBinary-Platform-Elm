module Org.Allbinary.Layer.Layer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "Layer"


jchain : List String
jchain =
    [ "Layer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "x", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ), ( "z", JR.defaultOf "I" ), ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ), ( "visible", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "setPosition_3", jm_setPosition_3 )
        , ( "moveDXY_2", jm_moveDXY_2 )
        , ( "moveDXYZ_3", jm_moveDXYZ_3 )
        , ( "getXP_0", jm_getXP_0 )
        , ( "getYP_0", jm_getYP_0 )
        , ( "getZP_0", jm_getZP_0 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "getDepth_0", jm_getDepth_0 )
        , ( "setVisible_1", jm_setVisible_1 )
        , ( "isVisible_0", jm_isVisible_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "setLayerWidth_1", jm_setLayerWidth_1 )
        , ( "setLayerHeight_1", jm_setLayerHeight_1 )
        , ( "toStringAppend_1", jm_toStringAppend_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Layer"
        [ ( "jm_setPosition_3", jm_setPosition_3 ), ( "jm_moveDXY_2", jm_moveDXY_2 ), ( "jm_moveDXYZ_3", jm_moveDXYZ_3 ), ( "jm_getXP_0", jm_getXP_0 ), ( "jm_getYP_0", jm_getYP_0 ), ( "jm_getZP_0", jm_getZP_0 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_getDepth_0", jm_getDepth_0 ), ( "jm_setVisible_1", jm_setVisible_1 ), ( "jm_isVisible_0", jm_isVisible_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_setLayerWidth_1", jm_setLayerWidth_1 ), ( "jm_setLayerHeight_1", jm_setLayerHeight_1 ), ( "jm_toStringAppend_1", jm_toStringAppend_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_ID", jstatic_ID ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "Layer" jclinit "ID"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 0) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "z" "I" JR.this (JR.int 3)),
                JR.exec (JR.setField "visible" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setLayerWidth_1" JR.this [ (JR.local "width") ]), 
                    JR.exec (JR.invoke "setLayerHeight_1" JR.this [ (JR.local "height") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_setPosition_3 : JR.Method
jm_setPosition_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "x" "I" JR.this (JR.local "x")), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.local "y")), 
                    JR.exec (JR.setField "z" "I" JR.this (JR.local "z")) ])
        (jregister jheap)
        jthis
        jargs


jm_moveDXY_2 : JR.Method
jm_moveDXY_2 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "x" "I" JR.this (JR.map2 JR.add (JR.thisField "x") (JR.local "dx"))), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.map2 JR.add (JR.thisField "y") (JR.local "dy"))) ])
        (jregister jheap)
        jthis
        jargs


jm_moveDXYZ_3 : JR.Method
jm_moveDXYZ_3 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ), ( "dz", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "x" "I" JR.this (JR.map2 JR.add (JR.thisField "x") (JR.local "dx"))), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.map2 JR.add (JR.thisField "y") (JR.local "dy"))), 
                    JR.exec (JR.setField "z" "I" JR.this (JR.map2 JR.add (JR.thisField "z") (JR.local "dz"))) ])
        (jregister jheap)
        jthis
        jargs


jm_getXP_0 : JR.Method
jm_getXP_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "x") ])
        (jregister jheap)
        jthis
        jargs


jm_getYP_0 : JR.Method
jm_getYP_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "y") ])
        (jregister jheap)
        jthis
        jargs


jm_getZP_0 : JR.Method
jm_getZP_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "z") ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "width") ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "height") ])
        (jregister jheap)
        jthis
        jargs


jm_getDepth_0 : JR.Method
jm_getDepth_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_setVisible_1 : JR.Method
jm_setVisible_1 jheap jthis jargs =
    JR.method [ ( "visible", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "visible" "Z" JR.this (JR.local "visible")) ])
        (jregister jheap)
        jthis
        jargs


jm_isVisible_0 : JR.Method
jm_isVisible_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "visible") ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.declare "canvasStrings" "" (JR.callStatic CanvasStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "NOT_IMPLEMENTED" (JR.local "commonStrings")), JR.this, (JR.field "PAINT" (JR.local "canvasStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerWidth_1 : JR.Method
jm_setLayerWidth_1 jheap jthis jargs =
    JR.method [ ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "width") (JR.int 0)) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "IllegalArgumentException" [ "RuntimeException", "Exception" ]) []) ]) identity, 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")) ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerHeight_1 : JR.Method
jm_setLayerHeight_1 jheap jthis jargs =
    JR.method [ ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "height") (JR.int 0)) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "IllegalArgumentException" [ "RuntimeException", "Exception" ]) []) ]) identity, 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringAppend_1 : JR.Method
jm_toStringAppend_1 jheap jthis jargs =
    JR.method [ ( "stringBuffer", "" ) ] ""
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

