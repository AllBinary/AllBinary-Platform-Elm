module Org.Allbinary.Game.Layer.Special.CollidableDestroyableDamageableLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Layer.AllBinaryGameLayerManager as AllBinaryGameLayerManager
import Org.Allbinary.Game.Identification.BasicGroupFactory as BasicGroupFactory
import Org.Allbinary.Game.Layer.CollidableCompositeLayer as CollidableCompositeLayer
import Org.Allbinary.Game.Collision.CollidableNeverCollideBehaviorFactory as CollidableNeverCollideBehaviorFactory
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Combat.Damage.DamageableInterface as DamageableInterface
import Org.Allbinary.Game.Combat.Destroy.DestroyableInterface as DestroyableInterface
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Part.PartInterfaceUtil as PartInterfaceUtil
import Org.Allbinary.Game.Layer.Pickup.PickupBehavior as PickupBehavior
import Org.Allbinary.Game.Layer.Pickup.PickupCompositeInterface as PickupCompositeInterface
import Org.Allbinary.Math.PositionStrings as PositionStrings
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Game.Layer.Special.SpecialGameInputInterface as SpecialGameInputInterface
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.View.ViewPositionBase as ViewPositionBase


jclass : String
jclass =
    "CollidableDestroyableDamageableLayer"


jchain : List String
jchain =
    [ "CollidableDestroyableDamageableLayer" ]
        ++ CollidableCompositeLayer.jchain
        ++ DestroyableInterface.jchain
        ++ DamageableInterface.jchain
        ++ PickupCompositeInterface.jchain
        ++ SpecialGameInputInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableCompositeLayer.jfields ++ [ ( "groupInterface", JR.defaultOf "" ), ( "readyForExplosion", JR.defaultOf "Z" ), ( "initWidth", JR.defaultOf "I" ), ( "initHeight", JR.defaultOf "I" ), ( "initX", JR.defaultOf "I" ), ( "initY", JR.defaultOf "I" ), ( "initZ", JR.defaultOf "I" ), ( "partInterfaceArrayP", JR.defaultOf "" ), ( "pickupBehavior", JR.defaultOf "" ), ( "allBinaryGameLayerManagerP", JR.defaultOf "" ), ( "isDraggable", JR.defaultOf "Z" ), ( "isDragged", JR.defaultOf "Z" ), ( "isDropped", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "initPosition_0", jm_initPosition_0 )
        , ( "initPositionXYZ_3", jm_initPositionXYZ_3 )
        , ( "paint_1", jm_paint_1 )
        , ( "damage_2", jm_damage_2 )
        , ( "getDamage_1", jm_getDamage_1 )
        , ( "isDestroyed_0", jm_isDestroyed_0 )
        , ( "getGroupInterface_0", jm_getGroupInterface_0 )
        , ( "setGroupInterface_1", jm_setGroupInterface_1 )
        , ( "setAllBinaryGameLayerManager_1", jm_setAllBinaryGameLayerManager_1 )
        , ( "isReadyForExplosion_0", jm_isReadyForExplosion_0 )
        , ( "setReadyForExplosion_1", jm_setReadyForExplosion_1 )
        , ( "getInitWidth_0", jm_getInitWidth_0 )
        , ( "getInitHeight_0", jm_getInitHeight_0 )
        , ( "getInitX_0", jm_getInitX_0 )
        , ( "getInitY_0", jm_getInitY_0 )
        , ( "up_0", jm_up_0 )
        , ( "down_0", jm_down_0 )
        , ( "right_0", jm_right_0 )
        , ( "left_0", jm_left_0 )
        , ( "strafeLeft_0", jm_strafeLeft_0 )
        , ( "strafeRight_0", jm_strafeRight_0 )
        , ( "fire_2", jm_fire_2 )
        , ( "special1_2", jm_special1_2 )
        , ( "special2_2", jm_special2_2 )
        , ( "special3_2", jm_special3_2 )
        , ( "special4_2", jm_special4_2 )
        , ( "special5_2", jm_special5_2 )
        , ( "upAnalog_1", jm_upAnalog_1 )
        , ( "downAnalog_1", jm_downAnalog_1 )
        , ( "rightAnalog_1", jm_rightAnalog_1 )
        , ( "leftAnalog_1", jm_leftAnalog_1 )
        , ( "rightTrigger_3", jm_rightTrigger_3 )
        , ( "leftTrigger_3", jm_leftTrigger_3 )
        , ( "onDestroyed_1", jm_onDestroyed_1 )
        , ( "getPickupBehavior_0", jm_getPickupBehavior_0 )
        , ( "setPickupBehavior_1", jm_setPickupBehavior_1 )
        , ( "addPart_1", jm_addPart_1 )
        , ( "setPartInterfaceArray_1", jm_setPartInterfaceArray_1 )
        , ( "getPartInterfaceArray_0", jm_getPartInterfaceArray_0 )
        , ( "toStringAppend_1", jm_toStringAppend_1 )
        , ( "toString_0", jm_toString_0 ) ]
        CollidableCompositeLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableDestroyableDamageableLayer"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_initPosition_0", jm_initPosition_0 ), ( "jm_initPositionXYZ_3", jm_initPositionXYZ_3 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_damage_2", jm_damage_2 ), ( "jm_getDamage_1", jm_getDamage_1 ), ( "jm_isDestroyed_0", jm_isDestroyed_0 ), ( "jm_getGroupInterface_0", jm_getGroupInterface_0 ), ( "jm_setGroupInterface_1", jm_setGroupInterface_1 ), ( "jm_setAllBinaryGameLayerManager_1", jm_setAllBinaryGameLayerManager_1 ), ( "jm_isReadyForExplosion_0", jm_isReadyForExplosion_0 ), ( "jm_setReadyForExplosion_1", jm_setReadyForExplosion_1 ), ( "jm_getInitWidth_0", jm_getInitWidth_0 ), ( "jm_getInitHeight_0", jm_getInitHeight_0 ), ( "jm_getInitX_0", jm_getInitX_0 ), ( "jm_getInitY_0", jm_getInitY_0 ), ( "jm_up_0", jm_up_0 ), ( "jm_down_0", jm_down_0 ), ( "jm_right_0", jm_right_0 ), ( "jm_left_0", jm_left_0 ), ( "jm_strafeLeft_0", jm_strafeLeft_0 ), ( "jm_strafeRight_0", jm_strafeRight_0 ), ( "jm_fire_2", jm_fire_2 ), ( "jm_special1_2", jm_special1_2 ), ( "jm_special2_2", jm_special2_2 ), ( "jm_special3_2", jm_special3_2 ), ( "jm_special4_2", jm_special4_2 ), ( "jm_special5_2", jm_special5_2 ), ( "jm_upAnalog_1", jm_upAnalog_1 ), ( "jm_downAnalog_1", jm_downAnalog_1 ), ( "jm_rightAnalog_1", jm_rightAnalog_1 ), ( "jm_leftAnalog_1", jm_leftAnalog_1 ), ( "jm_rightTrigger_3", jm_rightTrigger_3 ), ( "jm_leftTrigger_3", jm_leftTrigger_3 ), ( "jm_onDestroyed_1", jm_onDestroyed_1 ), ( "jm_getPickupBehavior_0", jm_getPickupBehavior_0 ), ( "jm_setPickupBehavior_1", jm_setPickupBehavior_1 ), ( "jm_addPart_1", jm_addPart_1 ), ( "jm_setPartInterfaceArray_1", jm_setPartInterfaceArray_1 ), ( "jm_getPartInterfaceArray_0", jm_getPartInterfaceArray_0 ), ( "jm_toStringAppend_1", jm_toStringAppend_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER", jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER ), ( "jstatic_READYFOREXPLOSION", jstatic_READYFOREXPLOSION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER : JR.M
jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER s =
    JR.static "CollidableDestroyableDamageableLayer" jclinit "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jstatic_READYFOREXPLOSION : JR.M
jstatic_READYFOREXPLOSION s =
    JR.static "CollidableDestroyableDamageableLayer" jclinit "READYFOREXPLOSION"
        (JR.str "ReadyForExplosion: ")
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "groupInterface", "" ), ( "name", "" ), ( "layerInfo", "" ), ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CollidableCompositeLayer.jinit_4 JR.this [ (JR.local "name"), (JR.local "layerInfo"), (JR.local "viewPosition"), (JR.callStatic CollidableNeverCollideBehaviorFactory.jm_getInstance_0 []) ]),
                JR.exec (JR.setField "partInterfaceArrayP" "" JR.this (JR.callStatic PartInterfaceUtil.jm_getZeroArray_0 [])),
                JR.exec (JR.setField "allBinaryGameLayerManagerP" "" JR.this (JR.callStatic AllBinaryGameLayerManager.jm_getNullInstance_0 [])),
                JR.exec (JR.setField "isDraggable" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "isDragged" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "isDropped" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "initWidth" "I" JR.this (JR.invoke "getWidth_0" (JR.local "layerInfo") [])), 
                    JR.exec (JR.setField "initHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "layerInfo") [])), 
                    JR.exec (JR.setField "groupInterface" "" JR.this (JR.local "groupInterface")), 
                    JR.exec (JR.setField "pickupBehavior" "" JR.this (JR.callStatic PickupBehavior.jm_getNullInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER" "" (JR.new jnew_4 [ (JR.field "NONE_ARRAY" (JR.callStatic BasicGroupFactory.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), RectangleFactory.jstatic_SINGLETON, ViewPositionBase.jstatic_NULL_VIEW_POSITION ])) ]) identity, 
                    JR.return jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER ])
        (jregister jheap)
        jthis
        jargs


jm_initPosition_0 : JR.Method
jm_initPosition_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_3" JR.this [ (JR.thisField "initX"), (JR.thisField "initY"), (JR.thisField "initZ") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initPositionXYZ_3 : JR.Method
jm_initPositionXYZ_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initX" "I" JR.this (JR.local "x")), 
                    JR.exec (JR.setField "initY" "I" JR.this (JR.local "y")), 
                    JR.exec (JR.setField "initZ" "I" JR.this (JR.local "z")) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CollidableCompositeLayer.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_damage_2 : JR.Method
jm_damage_2 jheap jthis jargs =
    JR.method [ ( "damage", "I" ), ( "damageType", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDamage_1 : JR.Method
jm_getDamage_1 jheap jthis jargs =
    JR.method [ ( "damageType", "I" ) ] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isDestroyed_0 : JR.Method
jm_isDestroyed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGroupInterface_0 : JR.Method
jm_getGroupInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "groupInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setGroupInterface_1 : JR.Method
jm_setGroupInterface_1 jheap jthis jargs =
    JR.method [ ( "teamInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "groupInterface" "" JR.this (JR.local "teamInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_setAllBinaryGameLayerManager_1 : JR.Method
jm_setAllBinaryGameLayerManager_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "allBinaryGameLayerManagerP" "" JR.this (JR.local "allBinaryGameLayerManager")), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "allBinaryGameLayerManagerP") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isReadyForExplosion_0 : JR.Method
jm_isReadyForExplosion_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "readyForExplosion") ])
        (jregister jheap)
        jthis
        jargs


jm_setReadyForExplosion_1 : JR.Method
jm_setReadyForExplosion_1 jheap jthis jargs =
    JR.method [ ( "isReadyForExplosion", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "readyForExplosion" "Z" JR.this (JR.local "isReadyForExplosion")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInitWidth_0 : JR.Method
jm_getInitWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "initWidth") ])
        (jregister jheap)
        jthis
        jargs


jm_getInitHeight_0 : JR.Method
jm_getInitHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "initHeight") ])
        (jregister jheap)
        jthis
        jargs


jm_getInitX_0 : JR.Method
jm_getInitX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "initX") ])
        (jregister jheap)
        jthis
        jargs


jm_getInitY_0 : JR.Method
jm_getInitY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "initY") ])
        (jregister jheap)
        jthis
        jargs


jm_up_0 : JR.Method
jm_up_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_down_0 : JR.Method
jm_down_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_right_0 : JR.Method
jm_right_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_left_0 : JR.Method
jm_left_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_strafeLeft_0 : JR.Method
jm_strafeLeft_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_strafeRight_0 : JR.Method
jm_strafeRight_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_fire_2 : JR.Method
jm_fire_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special1_2 : JR.Method
jm_special1_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special2_2 : JR.Method
jm_special2_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special3_2 : JR.Method
jm_special3_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special4_2 : JR.Method
jm_special4_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special5_2 : JR.Method
jm_special5_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_upAnalog_1 : JR.Method
jm_upAnalog_1 jheap jthis jargs =
    JR.method [ ( "yAnalogValue", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_downAnalog_1 : JR.Method
jm_downAnalog_1 jheap jthis jargs =
    JR.method [ ( "yAnalogValue", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_rightAnalog_1 : JR.Method
jm_rightAnalog_1 jheap jthis jargs =
    JR.method [ ( "xAnalogValue", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_leftAnalog_1 : JR.Method
jm_leftAnalog_1 jheap jthis jargs =
    JR.method [ ( "xAnalogValue", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_rightTrigger_3 : JR.Method
jm_rightTrigger_3 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ), ( "xAnalogValue", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_leftTrigger_3 : JR.Method
jm_leftTrigger_3 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ), ( "xAnalogValue", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onDestroyed_1 : JR.Method
jm_onDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyedEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getPickupBehavior_0 : JR.Method
jm_getPickupBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "pickupBehavior") ])
        (jregister jheap)
        jthis
        jargs


jm_setPickupBehavior_1 : JR.Method
jm_setPickupBehavior_1 jheap jthis jargs =
    JR.method [ ( "pickupBehavior", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "pickupBehavior" "" JR.this (JR.local "pickupBehavior")) ])
        (jregister jheap)
        jthis
        jargs


jm_addPart_1 : JR.Method
jm_addPart_1 jheap jthis jargs =
    JR.method [ ( "pickedUpLayerInterfaceFactoryInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setPartInterfaceArray_1 : JR.Method
jm_setPartInterfaceArray_1 jheap jthis jargs =
    JR.method [ ( "partInterfaceArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "partInterfaceArrayP" "" JR.this (JR.local "partInterfaceArray")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPartInterfaceArray_0 : JR.Method
jm_getPartInterfaceArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "partInterfaceArrayP") ])
        (jregister jheap)
        jthis
        jargs


jm_toStringAppend_1 : JR.Method
jm_toStringAppend_1 jheap jthis jargs =
    JR.method [ ( "stringBuffer", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "positionStrings" "" (JR.callStatic PositionStrings.jm_getInstance_0 []), 
                    JR.exec (JR.callVia CollidableCompositeLayer.jvtable "toStringAppend_1" JR.this [ (JR.local "stringBuffer") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.local "commonSeps")) ]), 
                    JR.declare "groupInterfaceArray" "" (JR.invoke "getGroupInterface_0" JR.this []), 
                    JR.declare "size" "I" (JR.alength (JR.local "groupInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN77587 -> (JR.setLocal "index" "I" (JR.lit jwN77587))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.aget (JR.local "groupInterfaceArray") (JR.local "index")) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA" (JR.local "commonSeps")) ]) ]) ], 
                    JR.declare "pickupBehavior" "" (JR.invoke "getPickupBehavior_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "pickupBehavior") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.local "commonSeps")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "pickupBehavior") []) ]) ]) identity, 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_READYFOREXPLOSION ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.thisField "readyForExplosion") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "X_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "initX") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Y_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "initX") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Z_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "initZ") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "toStringAppend_1" JR.this [ (JR.local "stringBuffer") ]), 
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

