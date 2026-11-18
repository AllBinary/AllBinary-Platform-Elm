module Org.Allbinary.Game.Layer.Pickup.IconLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.View.ViewPosition as ViewPosition


jclass : String
jclass =
    "IconLayer"


jchain : List String
jchain =
    [ "IconLayer" ]
        ++ AllBinaryLayer.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryLayer.jfields ++ [ ( "animationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getAnimationInterface_0", jm_getAnimationInterface_0 ) ]
        AllBinaryLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IconLayer"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getAnimationInterface_0", jm_getAnimationInterface_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_ICON_LAYER", jstatic_NULL_ICON_LAYER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ICON_LAYER : JR.M
jstatic_NULL_ICON_LAYER s =
    JR.static "IconLayer" jclinit "NULL_ICON_LAYER"
        (JR.new jnew_3 [ (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ]), (JR.int 0), (JR.int 0) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryLayer.jinit_3 JR.this [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.local "width"), (JR.local "height") ]), (JR.callStatic ViewPosition.jm_getInstanceD_0 []) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.thisField "x"), (JR.thisField "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.thisField "x"), (JR.thisField "y"), (JR.thisField "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimationInterface_0 : JR.Method
jm_getAnimationInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "animationInterface") ])
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

