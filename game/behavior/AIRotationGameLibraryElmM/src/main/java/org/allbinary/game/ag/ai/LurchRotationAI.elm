module Org.Allbinary.Game.Ag.Ai.LurchRotationAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ag.Ai.Tactical.LurchAI as LurchAI


jclass : String
jclass =
    "LurchRotationAI"


jchain : List String
jchain =
    [ "LurchRotationAI" ]
        ++ LurchAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    LurchAI.jfields ++ [ ( "rotationAnimationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "reverse_0", jm_reverse_0 )
        , ( "update_0", jm_update_0 ) ]
        LurchAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LurchRotationAI"
        [ ( "jm_reverse_0", jm_reverse_0 ), ( "jm_update_0", jm_update_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect LurchAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                (JR.run [ 
                    JR.declare "rotationAnimationInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.setField "rotationAnimationInterface" "" JR.this (JR.invoke "getRotationAnimationInterface_0" (JR.local "rotationAnimationInterfaceCompositeInterface") [])), 
                    JR.exec (JR.invoke "update_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_reverse_0 : JR.Method
jm_reverse_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia LurchAI.jvtable "reverse_0" JR.this []), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 0)) (JR.run [ 
                        JR.declare "rotationAnimationInterface" "" (JR.thisField "rotationAnimationInterface"), 
                        JR.declare "angleIncrementInfo" "" (JR.invoke "getAngleIncrementInfo_0" (JR.invoke "getAngleInfoP_0" (JR.local "rotationAnimationInterface") []) []), 
                        JR.declare "rotationAnimationInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                        JR.exec (JR.invoke "setFrame_1" (JR.local "rotationAnimationInterfaceCompositeInterface") [ (JR.invoke "intValue_0" (JR.field "RIGHT_FRAME" (JR.local "angleIncrementInfo")) []) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 180)) (JR.run [ 
                        JR.declare "rotationAnimationInterface" "" (JR.thisField "rotationAnimationInterface"), 
                        JR.declare "angleIncrementInfo" "" (JR.invoke "getAngleIncrementInfo_0" (JR.invoke "getAngleInfoP_0" (JR.local "rotationAnimationInterface") []) []), 
                        JR.declare "rotationAnimationInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                        JR.exec (JR.invoke "setFrame_1" (JR.local "rotationAnimationInterfaceCompositeInterface") [ (JR.invoke "intValue_0" (JR.field "LEFT_FRAME" (JR.local "angleIncrementInfo")) []) ]) ]) identity ]) ])
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

