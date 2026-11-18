module Org.Allbinary.Game.Ag.Ai.Scroller.FlockingAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Game.Ag.Ai.Scroller.BasePatrolAI as BasePatrolAI
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Org.Allbinary.Game.Identification.BasicGroupFactory as BasicGroupFactory
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Layer.Identification.GroupLayerManagerListener as GroupLayerManagerListener
import Org.Allbinary.Logic.Math.MathUtil as MathUtil
import Org.Allbinary.Game.Layer.Weapon.WeaponLayer as WeaponLayer


jclass : String
jclass =
    "FlockingAI"


jchain : List String
jchain =
    [ "FlockingAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "allowedDistance", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "getXYDistance_1", jm_getXYDistance_1 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FlockingAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_getXYDistance_1", jm_getXYDistance_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                (JR.run [ 
                    JR.declare "allowedDistance" "" (JR.invoke "get_1" (JR.local "hashtable") [ BasePatrolAI.jstatic_MAX_DISTANCE ]), 
                    JR.exec (JR.setField "allowedDistance" "I" JR.this (JR.invoke "intValue_0" (JR.local "allowedDistance") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "maxDistance" "I" (JR.int 0), 
                    JR.declare "farAllbinaryLayer" "" AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER, 
                    JR.declare "groupLayerManagerListener" "" (JR.callStatic GroupLayerManagerListener.jm_getInstance_0 []), 
                    JR.declare "list" "" (JR.invoke "getList_1" (JR.local "groupLayerManagerListener") [ (JR.field "ENEMY" (JR.callStatic BasicGroupFactory.jm_getInstance_0 [])) ]), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "allBinaryLayer" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "ownerLayerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71818 -> (JR.setLocal "index" "I" (JR.lit jwN71818))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "allBinaryLayer" "" (JR.invoke "get_1" (JR.local "list") [ (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getType_0" (JR.local "allBinaryLayer") []) (JR.callStatic WeaponLayer.jm_getStaticType_0 [])) (JR.run [ 
                            JR.declare "distance" "I" (JR.invoke "getXYDistance_1" JR.this [ (JR.local "allBinaryLayer") ]), 
                            JR.ifElse (JR.map2 JR.greater (JR.local "distance") (JR.local "maxDistance")) (JR.run [ 
                                JR.exec (JR.setLocal "maxDistance" "I" (JR.local "distance")), 
                                JR.exec (JR.setLocal "farAllbinaryLayer" "" (JR.local "allBinaryLayer")), 
                                JR.ifElse (JR.map2 JR.greater (JR.local "distance") (JR.thisField "allowedDistance")) (JR.run [ 
                                    JR.break ]) identity ]) identity ]) identity ]) ], 
                    JR.ifElse (JR.map2 JR.greater (JR.local "maxDistance") (JR.thisField "allowedDistance")) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "farAllbinaryLayer") AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) (JR.run [ 
                            JR.exec (JR.setLocal "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this [])), 
                            JR.ifElse (JR.map2 JR.less (JR.invoke "getXP_0" (JR.local "farAllbinaryLayer") []) (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") [])) (JR.run [ 
                                JR.exec (JR.invoke "processKeyAI_1" JR.this [ Canvas.jstatic_LEFT ]) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greater (JR.invoke "getXP_0" (JR.local "farAllbinaryLayer") []) (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") [])) (JR.run [ 
                                JR.exec (JR.invoke "processKeyAI_1" JR.this [ Canvas.jstatic_RIGHT ]) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greater (JR.invoke "getYP_0" (JR.local "farAllbinaryLayer") []) (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") [])) (JR.run [ 
                                JR.exec (JR.invoke "processKeyAI_1" JR.this [ Canvas.jstatic_UP ]) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.less (JR.invoke "getYP_0" (JR.local "farAllbinaryLayer") []) (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") [])) (JR.run [ 
                                JR.exec (JR.invoke "processKeyAI_1" JR.this [ Canvas.jstatic_DOWN ]) ]) identity ]) ]) ]) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getXYDistance_1 : JR.Method
jm_getXYDistance_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayer", "" ) ] "I"
        (JR.run [ 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "xTotalDistance" "I" (JR.map2 JR.sub ((JR.map2 JR.add (JR.invoke "getXP_0" (JR.local "allBinaryLayer") []) (JR.invoke "getHalfWidth_0" (JR.local "allBinaryLayer") []))) ((JR.map2 JR.add (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.invoke "getHalfWidth_0" (JR.local "ownerLayerInterface") [])))), 
                    JR.declare "yTotalDistance" "I" (JR.map2 JR.sub ((JR.map2 JR.add (JR.invoke "getYP_0" (JR.local "allBinaryLayer") []) (JR.invoke "getHalfHeight_0" (JR.local "allBinaryLayer") []))) ((JR.map2 JR.add (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []) (JR.invoke "getHalfHeight_0" (JR.local "ownerLayerInterface") [])))), 
                    JR.declare "mathUtil" "" (JR.callStatic MathUtil.jm_getInstance_0 []), 
                    JR.declare "totalDistance" "I" (JR.map2 JR.add (JR.invoke "abs_1" (JR.local "mathUtil") [ (JR.local "xTotalDistance") ]) (JR.invoke "abs_1" (JR.local "mathUtil") [ (JR.local "yTotalDistance") ])), 
                    JR.return (JR.local "totalDistance") ])
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

