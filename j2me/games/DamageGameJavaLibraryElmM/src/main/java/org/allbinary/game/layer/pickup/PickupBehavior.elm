module Org.Allbinary.Game.Layer.Pickup.PickupBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Game.Layer.CollidableCompositeLayer as CollidableCompositeLayer
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Part.CountedLayerInterfaceFactoryPart as CountedLayerInterfaceFactoryPart
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerTypeFactory as PickedUpLayerTypeFactory
import Org.Allbinary.Game.Layer.Pickup.PickupBehaviorInterface as PickupBehaviorInterface
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "PickupBehavior"


jchain : List String
jchain =
    [ "PickupBehavior" ]
        ++ PickupBehaviorInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "countedIndex", JR.defaultOf "I" ), ( "ownerLayerInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "doPickup_1", jm_doPickup_1 )
        , ( "doPickupLayer_1", jm_doPickupLayer_1 )
        , ( "add_1", jm_add_1 )
        , ( "addAt_2", jm_addAt_2 )
        , ( "getFirstAvailableCountedLayerInterfaceFactory_1", jm_getFirstAvailableCountedLayerInterfaceFactory_1 )
        , ( "getCountedLayerInterfaceFactoryForSlot_1", jm_getCountedLayerInterfaceFactoryForSlot_1 )
        , ( "getCountedIndex_0", jm_getCountedIndex_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PickupBehavior"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_doPickup_1", jm_doPickup_1 ), ( "jm_doPickupLayer_1", jm_doPickupLayer_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_addAt_2", jm_addAt_2 ), ( "jm_getFirstAvailableCountedLayerInterfaceFactory_1", jm_getFirstAvailableCountedLayerInterfaceFactory_1 ), ( "jm_getCountedLayerInterfaceFactoryForSlot_1", jm_getCountedLayerInterfaceFactoryForSlot_1 ), ( "jm_getCountedIndex_0", jm_getCountedIndex_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_PICKUP_BEHAVIOR", jstatic_NULL_PICKUP_BEHAVIOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_PICKUP_BEHAVIOR : JR.M
jstatic_NULL_PICKUP_BEHAVIOR s =
    JR.static "PickupBehavior" jclinit "NULL_PICKUP_BEHAVIOR"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "countedIndex", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "ownerLayerInterface" "" JR.this (JR.local "ownerLayerInterface")), 
                    JR.exec (JR.setField "countedIndex" "I" JR.this (JR.local "countedIndex")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_PICKUP_BEHAVIOR (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "PickupBehavior.NULL_PICKUP_BEHAVIOR" "" (JR.new jnew_2 [ (JR.callStatic CollidableCompositeLayer.jm_getNullInstance_0 []), (JR.int 0) ])) ]) identity, 
                    JR.return jstatic_NULL_PICKUP_BEHAVIOR ])
        (jregister jheap)
        jthis
        jargs


jm_doPickup_1 : JR.Method
jm_doPickup_1 jheap jthis jargs =
    JR.method [ ( "pickupProcessorInterface", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "healthInterfaceCompositeInterface" "" (JR.thisField "ownerLayerInterface"), 
                        JR.ifElse (JR.invoke "isAlive_0" (JR.invoke "getHealthInterface_0" (JR.local "healthInterfaceCompositeInterface") []) []) (JR.run [ 
                            JR.exec (JR.invoke "process_1" (JR.local "pickupProcessorInterface") [ (JR.thisField "ownerLayerInterface") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "doPickup"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_doPickupLayer_1 : JR.Method
jm_doPickupLayer_1 jheap jthis jargs =
    JR.method [ ( "pickupLayerInterface", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "pickedUpLayerInterfaceFactoryInterface" "" (JR.invoke "getPickedUpLayerInterfaceFactoryInterface_0" (JR.local "pickupLayerInterface") []), 
                        JR.declare "pickedUpLayerType" "" (JR.invoke "getPickedUpLayerType_0" (JR.local "pickedUpLayerInterfaceFactoryInterface") []), 
                        JR.declare "pickedUpLayerTypeFactory" "" (JR.callStatic PickedUpLayerTypeFactory.jm_getInstance_0 []), 
                        JR.ifElse (JR.or (JR.or (JR.or (JR.map2 JR.equals (JR.local "pickedUpLayerType") (JR.field "BEAM" (JR.local "pickedUpLayerTypeFactory"))) (JR.map2 JR.equals (JR.local "pickedUpLayerType") (JR.field "MINE" (JR.local "pickedUpLayerTypeFactory")))) (JR.map2 JR.equals (JR.local "pickedUpLayerType") (JR.field "PROJECTILE" (JR.local "pickedUpLayerTypeFactory")))) (JR.map2 JR.equals (JR.local "pickedUpLayerType") (JR.field "ENHANCEMENT" (JR.local "pickedUpLayerTypeFactory")))) (JR.run [ 
                            JR.exec (JR.invoke "add_1" JR.this [ (JR.local "pickedUpLayerInterfaceFactoryInterface") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "getPickedUpLayerType_0" (JR.local "pickedUpLayerInterfaceFactoryInterface") []) (JR.field "PART" (JR.local "pickedUpLayerTypeFactory"))) (JR.run [ 
                            JR.declare "collidableDestroyableDamageableLayer" "" (JR.thisField "ownerLayerInterface"), 
                            JR.exec (JR.invoke "addPart_1" (JR.local "collidableDestroyableDamageableLayer") [ (JR.local "pickedUpLayerInterfaceFactoryInterface") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "pickedUpLayerType") (JR.field "NONE" (JR.local "pickedUpLayerTypeFactory"))) identity (JR.run [ 
                            JR.declare "pickupProcessorInterface" "" (JR.local "pickedUpLayerInterfaceFactoryInterface"), 
                            JR.exec (JR.invoke "doPickup_1" JR.this [ (JR.local "pickupProcessorInterface") ]) ]) ]) ]), 
                        JR.exec (JR.invoke "setPickedUp_0" (JR.local "pickupLayerInterface") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "doPickup"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "countedPickedUpLayerInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "partIndex" "I" (JR.map2 JR.add (JR.invoke "getId_0" (JR.local "countedPickedUpLayerInterfaceFactoryInterface") []) (JR.thisField "countedIndex")), 
                    JR.exec (JR.invoke "addAt_2" JR.this [ (JR.local "countedPickedUpLayerInterfaceFactoryInterface"), (JR.local "partIndex") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addAt_2 : JR.Method
jm_addAt_2 jheap jthis jargs =
    JR.method [ ( "countedPickedUpLayerInterfaceFactoryInterface", "" ), ( "partIndex", "I" ) ] ""
        (JR.run [ 
                    JR.declare "collidableDestroyableDamageableLayer" "" (JR.thisField "ownerLayerInterface"), 
                    JR.declare "countedLayerInterfaceFactory" "" (JR.aget (JR.invoke "getPartInterfaceArray_0" (JR.local "collidableDestroyableDamageableLayer") []) (JR.local "partIndex")), 
                    JR.exec (JR.invoke "setTotal_1" (JR.local "countedLayerInterfaceFactory") [ (JR.map2 JR.add (JR.invoke "getTotal_0" (JR.local "countedLayerInterfaceFactory") []) (JR.invoke "getTotal_0" (JR.local "countedPickedUpLayerInterfaceFactoryInterface") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFirstAvailableCountedLayerInterfaceFactory_1 : JR.Method
jm_getFirstAvailableCountedLayerInterfaceFactory_1 jheap jthis jargs =
    JR.method [ ( "pickedUpLayerTypeArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "collidableDestroyableDamageableLayer" "" (JR.thisField "ownerLayerInterface"), 
                    JR.declare "partInterfaceArray" "" (JR.invoke "getPartInterfaceArray_0" (JR.local "collidableDestroyableDamageableLayer") []), 
                    JR.declare "size" "I" (JR.alength (JR.local "partInterfaceArray")), 
                    JR.declare "nextCountedLayerInterfaceFactory" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "countedPickedUpLayerInterfaceFactory" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.thisField "countedIndex"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72440 -> (JR.setLocal "index" "I" (JR.lit jwN72440))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextCountedLayerInterfaceFactory" "" (JR.aget (JR.invoke "getPartInterfaceArray_0" (JR.local "collidableDestroyableDamageableLayer") []) (JR.local "index"))), 
                        JR.exec (JR.setLocal "countedPickedUpLayerInterfaceFactory" "" (JR.invoke "getCountedPickedUpLayerInterfaceFactory_0" (JR.local "nextCountedLayerInterfaceFactory") [])), 
                        JR.run [ JR.declare "index2" "I" (JR.alength (JR.local "pickedUpLayerTypeArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index2") (\jwN72325 -> (JR.setLocal "index2" "I" (JR.lit jwN72325))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "getPickedUpLayerType_0" (JR.local "countedPickedUpLayerInterfaceFactory") []) (JR.aget (JR.local "pickedUpLayerTypeArray") (JR.local "index2"))) (JR.run [ 
                                JR.ifElse (JR.map2 JR.greater (JR.invoke "getTotal_0" (JR.local "nextCountedLayerInterfaceFactory") []) (JR.int 0)) (JR.run [ 
                                    JR.return (JR.local "nextCountedLayerInterfaceFactory") ]) identity ]) identity ]) ] ]) ], 
                    JR.return CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY ])
        (jregister jheap)
        jthis
        jargs


jm_getCountedLayerInterfaceFactoryForSlot_1 : JR.Method
jm_getCountedLayerInterfaceFactoryForSlot_1 jheap jthis jargs =
    JR.method [ ( "slotIndex", "I" ) ] ""
        (JR.run [ 
                    JR.declare "currentSlot" "I" (JR.int 0), 
                    JR.declare "collidableDestroyableDamageableLayer" "" (JR.thisField "ownerLayerInterface"), 
                    JR.declare "partInterfaceArray" "" (JR.invoke "getPartInterfaceArray_0" (JR.local "collidableDestroyableDamageableLayer") []), 
                    JR.declare "size" "I" (JR.alength (JR.local "partInterfaceArray")), 
                    JR.declare "nextCountedLayerInterfaceFactory" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.thisField "countedIndex"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72969 -> (JR.setLocal "index" "I" (JR.lit jwN72969))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextCountedLayerInterfaceFactory" "" (JR.aget (JR.invoke "getPartInterfaceArray_0" (JR.local "collidableDestroyableDamageableLayer") []) (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getTotal_0" (JR.local "nextCountedLayerInterfaceFactory") []) (JR.int 0)) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "currentSlot") (JR.local "slotIndex")) (JR.run [ 
                                JR.return (JR.local "nextCountedLayerInterfaceFactory") ]) (JR.run [ 
                                JR.exec (JR.postUpdate (JR.local "currentSlot") (\jwN72872 -> (JR.setLocal "currentSlot" "I" (JR.lit jwN72872))) JR.increment) ]) ]) identity ]) ], 
                    JR.return CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY ])
        (jregister jheap)
        jthis
        jargs


jm_getCountedIndex_0 : JR.Method
jm_getCountedIndex_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "countedIndex") ])
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

