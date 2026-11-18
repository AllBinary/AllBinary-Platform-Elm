module Org.Allbinary.Game.Layer.Weapon.TempExplosionWeaponLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.weapon
-}

import JR
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Game.Multiplayer.Layer.RemoteInfo as RemoteInfo
import Org.Allbinary.Game.Layer.Weapon.SimpleWeaponLayer as SimpleWeaponLayer
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Game.Combat.Weapon.WeaponProperties as WeaponProperties


jclass : String
jclass =
    "TempExplosionWeaponLayer"


jchain : List String
jchain =
    [ "TempExplosionWeaponLayer" ]
        ++ SimpleWeaponLayer.jchain


jfields : List ( String, JR.JValue )
jfields =
    SimpleWeaponLayer.jfields ++ [ ( "weaponProperties", JR.defaultOf "" ), ( "timeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processTick_1", jm_processTick_1 ) ]
        SimpleWeaponLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TempExplosionWeaponLayer"
        [ ( "jm_processTick_1", jm_processTick_1 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "movement", "" ), ( "animationInterface", "" ), ( "rectangle", "" ), ( "viewPosition", "" ), ( "timeDelay", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SimpleWeaponLayer.jinit_8 JR.this [ (JR.local "name"), RemoteInfo.jstatic_REMOTE_INFO, (JR.map JR.neg (JR.int 1)), (JR.local "movement"), (JR.local "animationInterface"), (JR.callStatic SimpleWeaponLayer.jm_createDestroyed_0 []), (JR.local "rectangle"), (JR.local "viewPosition") ]),
                JR.exec (JR.setField "weaponProperties" "" JR.this (JR.new WeaponProperties.jnew_5 [ (JR.map JR.neg (JR.long 1)), (JR.map JR.neg (JR.long 1)), (JR.int 0), (JR.int 1000), (JR.cast "S" (JR.int 0)) ])),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "timeDelayHelper") (\jtN70718 -> (JR.setField "delay" "I" (JR.lit jtN70718) (JR.local "timeDelay")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_processTick_1 : JR.Method
jm_processTick_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "collide_2" (JR.invoke "getCollidableInferface_0" JR.this []) [ JR.this, JR.this ]), 
                        JR.exec (JR.setField "totalDamage" "I" JR.this (JR.map2 JR.add (JR.invoke "getInitDamage_0" JR.this []) (JR.int 1))) ]) identity, 
                    JR.exec (JR.callVia SimpleWeaponLayer.jvtable "processTick_1" JR.this [ (JR.local "allBinaryLayerManager") ]) ])
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

