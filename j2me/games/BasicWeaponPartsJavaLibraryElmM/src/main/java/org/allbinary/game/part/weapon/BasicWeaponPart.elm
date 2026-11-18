module Org.Allbinary.Game.Part.Weapon.BasicWeaponPart exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part.weapon
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Score.NoScoreable as NoScoreable
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Game.Part.PartInterface as PartInterface
import Org.Allbinary.Graphics.RelativeRelationship as RelativeRelationship
import Org.Allbinary.Game.Part.Weapon.SalvoInterface as SalvoInterface
import Org.Allbinary.Game.Combat.Weapon.WeaponProperties as WeaponProperties


jclass : String
jclass =
    "BasicWeaponPart"


jchain : List String
jchain =
    [ "BasicWeaponPart" ]
        ++ PartInterface.jchain
        ++ SalvoInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "animationInterface", JR.defaultOf "" ), ( "ownerLayerInterface", JR.defaultOf "" ), ( "weaponProperties", JR.defaultOf "" ), ( "scoreableInterface", JR.defaultOf "" ), ( "relativeRelationship", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createBasicWeaponPart_1", jm_createBasicWeaponPart_1 )
        , ( "init_4", jm_init_4 )
        , ( "process_3", jm_process_3 )
        , ( "processScore_5", jm_processScore_5 )
        , ( "getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 )
        , ( "setOwnerLayerInterface_1", jm_setOwnerLayerInterface_1 )
        , ( "getAnimationInterface_0", jm_getAnimationInterface_0 )
        , ( "setAnimationInterface_1", jm_setAnimationInterface_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getWeaponProperties_0", jm_getWeaponProperties_0 )
        , ( "setWeaponProperties_1", jm_setWeaponProperties_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicWeaponPart"
        [ ( "jm_createBasicWeaponPart_1", jm_createBasicWeaponPart_1 ), ( "jm_init_4", jm_init_4 ), ( "jm_process_3", jm_process_3 ), ( "jm_processScore_5", jm_processScore_5 ), ( "jm_getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 ), ( "jm_setOwnerLayerInterface_1", jm_setOwnerLayerInterface_1 ), ( "jm_getAnimationInterface_0", jm_getAnimationInterface_0 ), ( "jm_setAnimationInterface_1", jm_setAnimationInterface_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getWeaponProperties_0", jm_getWeaponProperties_0 ), ( "jm_setWeaponProperties_1", jm_setWeaponProperties_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        [ ( "jstatic_NULL_BASIC_WEAPON_PART", jstatic_NULL_BASIC_WEAPON_PART ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_BASIC_WEAPON_PART : JR.M
jstatic_NULL_BASIC_WEAPON_PART s =
    JR.static "BasicWeaponPart" jclinit "NULL_BASIC_WEAPON_PART"
        (JR.callStatic jm_createBasicWeaponPart_1 [ (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ]) ])
        s


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "sourceLayerInterface", "" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ), ( "relativeRelationship", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "animationInterface" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ])),
                JR.exec (JR.setField "ownerLayerInterface" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                JR.exec (JR.setField "weaponProperties" "" JR.this WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES),
                JR.exec (JR.setField "scoreableInterface" "" JR.this (JR.callStatic NoScoreable.jm_getInstance_0 [])),
                JR.exec (JR.setField "relativeRelationship" "" JR.this RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "init_4" JR.this [ (JR.local "sourceLayerInterface"), (JR.local "weaponProperties"), (JR.local "scoreableInterface"), (JR.local "relativeRelationship") ]), 
                    JR.exec (JR.invoke "setAnimationInterface_1" JR.this [ (JR.local "animationInterface") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_createBasicWeaponPart_1 : JR.Method
jm_createBasicWeaponPart_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_5 [ (JR.local "animationInterface"), AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER, WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES, (JR.callStatic NoScoreable.jm_getInstance_0 []), RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP ]) ])
        (jregister jheap)
        jthis
        jargs


jm_init_4 : JR.Method
jm_init_4 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ), ( "relativeRelationship", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setOwnerLayerInterface_1" JR.this [ (JR.local "sourceLayerInterface") ]), 
                    JR.exec (JR.invoke "setWeaponProperties_1" JR.this [ (JR.local "weaponProperties") ]), 
                    JR.exec (JR.setField "scoreableInterface" "" JR.this (JR.local "scoreableInterface")), 
                    JR.exec (JR.setField "relativeRelationship" "" JR.this (JR.local "relativeRelationship")) ])
        (jregister jheap)
        jthis
        jargs


jm_process_3 : JR.Method
jm_process_3 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "angle", "S" ), ( "otherAngle", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "processScore_5" JR.this [ (JR.local "allbinaryLayerManager"), (JR.local "angle"), (JR.local "otherAngle"), (JR.invoke "getWeaponProperties_0" JR.this []), (JR.thisField "scoreableInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processScore_5 : JR.Method
jm_processScore_5 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "angle", "S" ), ( "otherAngle", "S" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getOwnerLayerInterface_0 : JR.Method
jm_getOwnerLayerInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ownerLayerInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setOwnerLayerInterface_1 : JR.Method
jm_setOwnerLayerInterface_1 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "ownerLayerInterface" "" JR.this (JR.local "ownerLayerInterface")) ])
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


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" (JR.invoke "getOwnerLayerInterface_0" JR.this []) []), 
                    JR.declare "viewX" "I" (JR.invoke "getX_0" (JR.local "viewPosition") []), 
                    JR.declare "viewY" "I" (JR.invoke "getY_0" (JR.local "viewPosition") []), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.local "viewX"), (JR.local "viewY") ]) ])
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


jm_getWeaponProperties_0 : JR.Method
jm_getWeaponProperties_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "weaponProperties") ])
        (jregister jheap)
        jthis
        jargs


jm_setWeaponProperties_1 : JR.Method
jm_setWeaponProperties_1 jheap jthis jargs =
    JR.method [ ( "weaponProperties", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "weaponProperties" "" JR.this (JR.local "weaponProperties")) ])
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

