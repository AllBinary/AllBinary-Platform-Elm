module Org.Allbinary.Physics.Movement.PreciseConstantVelocityMovement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Physics.Movement.BasicConstantVelocityMovement as BasicConstantVelocityMovement
import Org.Allbinary.Logic.Math.MathUtil as MathUtil
import Org.Allbinary.Logic.Math.ScaleFactorFactory as ScaleFactorFactory


jclass : String
jclass =
    "PreciseConstantVelocityMovement"


jchain : List String
jchain =
    [ "PreciseConstantVelocityMovement" ]
        ++ BasicConstantVelocityMovement.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicConstantVelocityMovement.jfields ++ [ ( "accumulatedX", JR.defaultOf "I" ), ( "accumulatedY", JR.defaultOf "I" ), ( "accumulatedZ", JR.defaultOf "I" ), ( "factorValue", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "init_3", jm_init_3 )
        , ( "process_1", jm_process_1 ) ]
        BasicConstantVelocityMovement.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PreciseConstantVelocityMovement"
        [ ( "jm_init_3", jm_init_3 ), ( "jm_process_1", jm_process_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "basicDecimal", "" ), ( "velocityProperties", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicConstantVelocityMovement.jinit_2 JR.this [ (JR.local "basicDecimal"), (JR.local "velocityProperties") ]),
                JR.exec (JR.setField "factorValue" "I" JR.this (JR.field "DEFAULT_SCALE_VALUE" (JR.callStatic ScaleFactorFactory.jm_getInstance_0 []))),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_init_3 : JR.Method
jm_init_3 jheap jthis jargs =
    JR.method [ ( "speedBasicDecimal", "" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        (JR.run [ 
                    JR.declare "mathUtil" "" (JR.callStatic MathUtil.jm_getInstance_0 []), 
                    JR.declare "velocityProperties" "" (JR.invoke "getVelocityProperties_0" JR.this []), 
                    JR.exec (JR.setField "accumulatedX" "I" JR.this (JR.cast "I" ((JR.map2 JR.add (JR.cast "J" (JR.thisField "accumulatedX")) (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.local "velocityProperties") []) []))))), 
                    JR.exec (JR.setField "accumulatedY" "I" JR.this (JR.cast "I" ((JR.map2 JR.add (JR.cast "J" (JR.thisField "accumulatedY")) (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.local "velocityProperties") []) []))))), 
                    JR.exec (JR.setField "accumulatedZ" "I" JR.this (JR.cast "I" ((JR.map2 JR.add (JR.cast "J" (JR.thisField "accumulatedZ")) (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityZBasicDecimalP_0" (JR.local "velocityProperties") []) []))))), 
                    JR.exec (JR.invoke "moveDXYZ_3" (JR.local "layer") [ (JR.map2 JR.div (JR.thisField "accumulatedX") (JR.thisField "factorValue")), (JR.map2 JR.div (JR.thisField "accumulatedY") (JR.thisField "factorValue")), (JR.map2 JR.div (JR.thisField "accumulatedZ") (JR.thisField "factorValue")) ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "abs_1" (JR.local "mathUtil") [ (JR.thisField "accumulatedX") ]) (JR.thisField "factorValue")) (JR.run [ 
                        JR.exec (JR.setField "accumulatedX" "I" JR.this (JR.int 0)) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "abs_1" (JR.local "mathUtil") [ (JR.thisField "accumulatedY") ]) (JR.thisField "factorValue")) (JR.run [ 
                        JR.exec (JR.setField "accumulatedY" "I" JR.this (JR.int 0)) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "abs_1" (JR.local "mathUtil") [ (JR.thisField "accumulatedZ") ]) (JR.thisField "factorValue")) (JR.run [ 
                        JR.exec (JR.setField "accumulatedZ" "I" JR.this (JR.int 0)) ]) identity ])
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

