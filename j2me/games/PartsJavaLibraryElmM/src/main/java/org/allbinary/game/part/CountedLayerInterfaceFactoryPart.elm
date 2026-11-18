module Org.Allbinary.Game.Part.CountedLayerInterfaceFactoryPart exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part
-}

import JR
import Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactory
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Part.PartInterface as PartInterface
import Org.Allbinary.Logic.Math.PrimitiveLongUtil as PrimitiveLongUtil
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "CountedLayerInterfaceFactoryPart"


jchain : List String
jchain =
    [ "CountedLayerInterfaceFactoryPart" ]
        ++ PartInterface.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "animationInterface", JR.defaultOf "" ), ( "total", JR.defaultOf "I" ), ( "totalString", JR.defaultOf "" ), ( "xOffset", JR.defaultOf "I" ), ( "countedPickedUpLayerInterfaceFactory", JR.defaultOf "" ), ( "primitiveLongUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "init_2", jm_init_2 )
        , ( "getInstance_4", jm_getInstance_4 )
        , ( "getTotal_0", jm_getTotal_0 )
        , ( "setTotal_1", jm_setTotal_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getAnimationInterface_0", jm_getAnimationInterface_0 )
        , ( "setAnimationInterface_1", jm_setAnimationInterface_1 )
        , ( "getXOffset_0", jm_getXOffset_0 )
        , ( "setXOffset_1", jm_setXOffset_1 )
        , ( "getTotalString_0", jm_getTotalString_0 )
        , ( "getCountedPickedUpLayerInterfaceFactory_0", jm_getCountedPickedUpLayerInterfaceFactory_0 )
        , ( "setCountedPickedUpLayerInterfaceFactory_1", jm_setCountedPickedUpLayerInterfaceFactory_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CountedLayerInterfaceFactoryPart"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_init_2", jm_init_2 ), ( "jm_getInstance_4", jm_getInstance_4 ), ( "jm_getTotal_0", jm_getTotal_0 ), ( "jm_setTotal_1", jm_setTotal_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getAnimationInterface_0", jm_getAnimationInterface_0 ), ( "jm_setAnimationInterface_1", jm_setAnimationInterface_1 ), ( "jm_getXOffset_0", jm_getXOffset_0 ), ( "jm_setXOffset_1", jm_setXOffset_1 ), ( "jm_getTotalString_0", jm_getTotalString_0 ), ( "jm_getCountedPickedUpLayerInterfaceFactory_0", jm_getCountedPickedUpLayerInterfaceFactory_0 ), ( "jm_setCountedPickedUpLayerInterfaceFactory_1", jm_setCountedPickedUpLayerInterfaceFactory_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY", jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY : JR.M
jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY s =
    JR.static "CountedLayerInterfaceFactoryPart" jclinit "NULL_COUNTED_LAYER_INTERFACE_FACTORY"
        (JR.new jnew_2 [ (JR.int 0), CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "total", "I" ), ( "countedPickedUpLayerInterfaceFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "animationInterface" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ])),
                JR.exec (JR.setField "totalString" "" JR.this (JR.field "NULL_CHAR_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "countedPickedUpLayerInterfaceFactory" "" JR.this CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "primitiveLongUtil" "" JR.this (JR.callStatic PrimitiveLongUtil.jm_createPowerOfTen_1 [ (JR.int 1000) ])), 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "total"), (JR.local "countedPickedUpLayerInterfaceFactory") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.invoke "setXOffset_1" JR.this [ (JR.plus (JR.invoke "charsWidth_3" (JR.local "font") [ (JR.thisField "totalString"), (JR.int 0), (JR.invoke "getCurrentTotalDigits_0" (JR.thisField "primitiveLongUtil") []) ]) ((JR.map2 JR.shr (JR.invoke "getSize_0" (JR.local "font") []) (JR.int 1)))) ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "total", "I" ), ( "countedPickedUpLayerInterfaceFactory", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setCountedPickedUpLayerInterfaceFactory_1" JR.this [ (JR.local "countedPickedUpLayerInterfaceFactory") ]), 
                    JR.exec (JR.setField "total" "I" JR.this (JR.local "total")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_4 : JR.Method
jm_getInstance_4 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "total") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setTotal_1" JR.this [ (JR.map2 JR.sub (JR.thisField "total") (JR.int 1)) ]), 
                        JR.return (JR.invoke "getNextInstance_4" (JR.invoke "getCountedPickedUpLayerInterfaceFactory_0" JR.this []) [ (JR.local "hashtable"), (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No more left. Could use a listener to automatically remove") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTotal_0 : JR.Method
jm_getTotal_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "total") ])
        (jregister jheap)
        jthis
        jargs


jm_setTotal_1 : JR.Method
jm_setTotal_1 jheap jthis jargs =
    JR.method [ ( "total", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "total" "I" JR.this (JR.local "total")), 
                    JR.exec (JR.setField "totalString" "" JR.this (JR.invoke "getCharArray_1" (JR.thisField "primitiveLongUtil") [ (JR.local "total") ])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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


jm_setAnimationInterface_1 : JR.Method
jm_setAnimationInterface_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getXOffset_0 : JR.Method
jm_getXOffset_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "xOffset") ])
        (jregister jheap)
        jthis
        jargs


jm_setXOffset_1 : JR.Method
jm_setXOffset_1 jheap jthis jargs =
    JR.method [ ( "totalStringWidth", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "xOffset" "I" JR.this (JR.local "totalStringWidth")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalString_0 : JR.Method
jm_getTotalString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "totalString") ])
        (jregister jheap)
        jthis
        jargs


jm_getCountedPickedUpLayerInterfaceFactory_0 : JR.Method
jm_getCountedPickedUpLayerInterfaceFactory_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "countedPickedUpLayerInterfaceFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_setCountedPickedUpLayerInterfaceFactory_1 : JR.Method
jm_setCountedPickedUpLayerInterfaceFactory_1 jheap jthis jargs =
    JR.method [ ( "countedPickedUpLayerInterfaceFactory", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "countedPickedUpLayerInterfaceFactory" "" JR.this (JR.local "countedPickedUpLayerInterfaceFactory")) ])
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

