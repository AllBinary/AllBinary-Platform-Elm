module Org.Allbinary.Game.Ag.Ai.HorizontaRotationManeuverAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Ai.ArtificialIntelligence as ArtificialIntelligence
import Org.Allbinary.Ai.ArtificialIntelligenceTransitionInterface as ArtificialIntelligenceTransitionInterface
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import JInteger


jclass : String
jclass =
    "HorizontaRotationManeuverAI"


jchain : List String
jchain =
    [ "HorizontaRotationManeuverAI" ]
        ++ BasicAI.jchain
        ++ ArtificialIntelligenceTransitionInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "circularIndexUtil", JR.defaultOf "" ), ( "currentSpeedDivisor", JR.defaultOf "I" ), ( "rotationAnimationInterface", JR.defaultOf "" ), ( "baseVelocityInterface", JR.defaultOf "" ), ( "velocityInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "transition_0", jm_transition_0 )
        , ( "processAI_1", jm_processAI_1 )
        , ( "reverse_0", jm_reverse_0 )
        , ( "accelerate_0", jm_accelerate_0 )
        , ( "drop_0", jm_drop_0 )
        , ( "getId_0", jm_getId_0 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HorizontaRotationManeuverAI"
        [ ( "jm_transition_0", jm_transition_0 ), ( "jm_processAI_1", jm_processAI_1 ), ( "jm_reverse_0", jm_reverse_0 ), ( "jm_accelerate_0", jm_accelerate_0 ), ( "jm_drop_0", jm_drop_0 ), ( "jm_getId_0", jm_getId_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstanceAt_2 [ (JR.int 10), JInteger.jstatic_MAX_VALUE ])),
                JR.exec (JR.setField "currentSpeedDivisor" "I" JR.this (JR.int 5)),
                identity,
                (JR.run [ 
                    JR.declare "rotationAnimationInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.setField "rotationAnimationInterface" "" JR.this (JR.invoke "getRotationAnimationInterface_0" (JR.local "rotationAnimationInterfaceCompositeInterface") [])), 
                    JR.declare "velocityInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.setField "baseVelocityInterface" "" JR.this (JR.invoke "getVelocityProperties_0" (JR.local "velocityInterfaceCompositeInterface") [])), 
                    JR.exec (JR.setField "velocityInterface" "" JR.this (JR.thisField "baseVelocityInterface")), 
                    JR.declare "rotationAnimationInterface" "" (JR.thisField "rotationAnimationInterface"), 
                    JR.declare "angleIncrementInfo" "" (JR.invoke "getAngleIncrementInfo_0" (JR.invoke "getAngleInfoP_0" (JR.local "rotationAnimationInterface") []) []), 
                    JR.exec (JR.invoke "setFrame_1" (JR.local "rotationAnimationInterfaceCompositeInterface") [ (JR.invoke "intValue_0" (JR.field "RIGHT_FRAME" (JR.local "angleIncrementInfo")) []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_transition_0 : JR.Method
jm_transition_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "rotationAnimationInterface" "" (JR.thisField "rotationAnimationInterface"), 
                    JR.declare "angleIncrementInfo" "" (JR.invoke "getAngleIncrementInfo_0" (JR.invoke "getAngleInfoP_0" (JR.local "rotationAnimationInterface") []) []), 
                    JR.declare "rotationAnimationInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.invoke "setFrame_1" (JR.local "rotationAnimationInterfaceCompositeInterface") [ (JR.invoke "intValue_0" (JR.field "RIGHT_FRAME" (JR.local "angleIncrementInfo")) []) ]), 
                    JR.declare "allbinaryLayer" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.invoke "setPosition_3" (JR.local "allbinaryLayer") [ (JR.invoke "getXP_0" (JR.local "allbinaryLayer") []), (JR.int 1), (JR.invoke "getZP_0" (JR.local "allbinaryLayer") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "rotationAnimationInterface" "" ((JR.thisField "rotationAnimationInterface")), 
                    JR.declare "angleIncrementInfo" "" (JR.invoke "getAngleIncrementInfo_0" (JR.invoke "getAngleInfoP_0" (JR.local "rotationAnimationInterface") []) []), 
                    JR.declare "frame" "I" (JR.invoke "getFrame_0" (JR.thisField "rotationAnimationInterface") []), 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.ifElse (JR.and (JR.map2 JR.lessEquals (JR.map2 JR.sub (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.invoke "getWidth_0" (JR.local "ownerLayerInterface") [])) (JR.int 0)) (JR.map2 JR.equals (JR.local "frame") (JR.invoke "intValue_0" (JR.field "LEFT_FRAME" (JR.local "angleIncrementInfo")) []))) (JR.run [ 
                        JR.exec (JR.invoke "reverse_0" JR.this []), 
                        JR.exec (JR.invoke "drop_0" JR.this []) ]) identity, 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.map2 JR.greater (JR.map2 JR.add (JR.invoke "getX2_0" (JR.local "ownerLayerInterface") []) (JR.invoke "getWidth_0" (JR.local "ownerLayerInterface") [])) (JR.invoke "getLastWidth_0" (JR.local "displayInfo") [])) (JR.map2 JR.equals (JR.local "frame") (JR.invoke "intValue_0" (JR.field "RIGHT_FRAME" (JR.local "angleIncrementInfo")) []))) (JR.run [ 
                        JR.exec (JR.invoke "reverse_0" JR.this []), 
                        JR.exec (JR.invoke "accelerate_0" JR.this []), 
                        JR.exec (JR.invoke "drop_0" JR.this []) ]) identity, 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.ifElse (JR.and (JR.map2 JR.equals (JR.map2 JR.rem (JR.local "index") (JR.thisField "currentSpeedDivisor")) (JR.int 0)) (JR.map2 JR.equals (JR.map2 JR.rem (JR.local "index") (JR.int 2)) (JR.int 0))) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_UP ]), 
                        JR.exec (JR.invoke "limitMaxXYVelocity_1" (JR.thisField "velocityInterface") [ (JR.map2 JR.div (JR.invoke "getMaxForwardVelocity_0" (JR.thisField "velocityInterface") []) (JR.thisField "currentSpeedDivisor")) ]) ]) identity, 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "frame") (JR.invoke "intValue_0" (JR.field "LEFT_FRAME" (JR.local "angleIncrementInfo")) [])) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM0 ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "frame") (JR.invoke "intValue_0" (JR.field "RIGHT_FRAME" (JR.local "angleIncrementInfo")) [])) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_POUND ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_reverse_0 : JR.Method
jm_reverse_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "rotationAnimationInterface" "" (JR.thisField "rotationAnimationInterface"), 
                    JR.declare "angleIncrementInfo" "" (JR.invoke "getAngleIncrementInfo_0" (JR.invoke "getAngleInfoP_0" (JR.local "rotationAnimationInterface") []) []), 
                    JR.declare "frame" "I" (JR.invoke "getFrame_0" (JR.thisField "rotationAnimationInterface") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "frame") (JR.invoke "intValue_0" (JR.field "LEFT_FRAME" (JR.local "angleIncrementInfo")) [])) (JR.run [ 
                        JR.declare "rotationAnimationInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                        JR.exec (JR.invoke "setFrame_1" (JR.local "rotationAnimationInterfaceCompositeInterface") [ (JR.invoke "intValue_0" (JR.field "RIGHT_FRAME" (JR.local "angleIncrementInfo")) []) ]), 
                        JR.exec (JR.invoke "zero_0" (JR.thisField "baseVelocityInterface") []) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "frame") (JR.invoke "intValue_0" (JR.field "RIGHT_FRAME" (JR.local "angleIncrementInfo")) [])) (JR.run [ 
                        JR.declare "rotationAnimationInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                        JR.exec (JR.invoke "setFrame_1" (JR.local "rotationAnimationInterfaceCompositeInterface") [ (JR.invoke "intValue_0" (JR.field "LEFT_FRAME" (JR.local "angleIncrementInfo")) []) ]), 
                        JR.exec (JR.invoke "zero_0" (JR.thisField "baseVelocityInterface") []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_accelerate_0 : JR.Method
jm_accelerate_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "currentSpeedDivisor") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.postUpdate (JR.thisField "currentSpeedDivisor") (\jwN73457 -> (JR.setField "currentSpeedDivisor" "I" JR.this (JR.lit jwN73457))) JR.decrement) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_drop_0 : JR.Method
jm_drop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "y" "I" (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []), 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.add (JR.invoke "getY2_0" (JR.local "ownerLayerInterface") []) (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") [])) (JR.invoke "getLastHeight_0" (JR.local "displayInfo") [])) (JR.run [ 
                        JR.exec (JR.setLocal "y" "I" (JR.int 0)) ]) (JR.run [ 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.add (JR.local "y") (JR.map2 JR.add (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") []) (JR.int 1)))) ]), 
                    JR.exec (JR.invoke "setPosition_3" (JR.local "ownerLayerInterface") [ (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []), (JR.local "y"), (JR.invoke "getZP_0" (JR.local "ownerLayerInterface") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return ArtificialIntelligence.jstatic_AI_ID ])
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

