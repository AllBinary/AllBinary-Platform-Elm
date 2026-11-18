module Org.Allbinary.Physics.Movement.NoZBasicConstantVelocityMovement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Logic.Math.Vector.AxisMathVectorUtil as AxisMathVectorUtil
import Org.Allbinary.Logic.Math.BasicDecimal as BasicDecimal
import Org.Allbinary.Physics.Movement.Movement as Movement
import Org.Allbinary.Game.Physics.Velocity.VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterface


jclass : String
jclass =
    "NoZBasicConstantVelocityMovement"


jchain : List String
jchain =
    [ "NoZBasicConstantVelocityMovement" ]
        ++ Movement.jchain
        ++ VelocityInterfaceCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Movement.jfields ++ [ ( "velocityProperties", JR.defaultOf "" ), ( "speedBasicDecimal", JR.defaultOf "" ), ( "axisMathVectorUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_3", jm_init_3 )
        , ( "moveOutsideRadius_4", jm_moveOutsideRadius_4 )
        , ( "process_1", jm_process_1 )
        , ( "toString_0", jm_toString_0 )
        , ( "stop_0", jm_stop_0 )
        , ( "getVelocityProperties_0", jm_getVelocityProperties_0 )
        , ( "setVelocityProperties_1", jm_setVelocityProperties_1 )
        , ( "setSpeedBasicDecimal_1", jm_setSpeedBasicDecimal_1 )
        , ( "getSpeedBasicDecimal_0", jm_getSpeedBasicDecimal_0 ) ]
        Movement.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoZBasicConstantVelocityMovement"
        [ ( "jm_init_3", jm_init_3 ), ( "jm_moveOutsideRadius_4", jm_moveOutsideRadius_4 ), ( "jm_process_1", jm_process_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_stop_0", jm_stop_0 ), ( "jm_getVelocityProperties_0", jm_getVelocityProperties_0 ), ( "jm_setVelocityProperties_1", jm_setVelocityProperties_1 ), ( "jm_setSpeedBasicDecimal_1", jm_setSpeedBasicDecimal_1 ), ( "jm_getSpeedBasicDecimal_0", jm_getSpeedBasicDecimal_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "basicDecimal", "" ), ( "velocityProperties", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Movement.jinit_0 JR.this []),
                JR.exec (JR.setField "speedBasicDecimal" "" JR.this BasicDecimal.jstatic_ZERO_BIGDECIMAL),
                JR.exec (JR.setField "axisMathVectorUtil" "" JR.this (JR.callStatic AxisMathVectorUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setSpeedBasicDecimal_1" JR.this [ (JR.local "basicDecimal") ]), 
                    JR.exec (JR.setField "velocityProperties" "" JR.this (JR.local "velocityProperties")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_init_3 : JR.Method
jm_init_3 jheap jthis jargs =
    JR.method [ ( "speedBasicDecimal", "" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "speedBasicDecimal" "" JR.this (JR.local "speedBasicDecimal")), 
                    JR.declare "angleFactory" "" (JR.callStatic AngleFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setVelocityWithBigDecimal_3" (JR.thisField "velocityProperties") [ (JR.local "speedBasicDecimal"), (JR.invoke "getAt_1" (JR.local "angleFactory") [ (JR.local "angle") ]), (JR.invoke "getAt_1" (JR.local "angleFactory") [ (JR.local "otherAngle") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_moveOutsideRadius_4 : JR.Method
jm_moveOutsideRadius_4 jheap jthis jargs =
    JR.method [ ( "layer", "" ), ( "radius", "J" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "scaleFactorValue" "I" (JR.invoke "getScaledFactorValue_0" (JR.thisField "speedBasicDecimal") []), 
                    JR.declare "xVector" "I" (JR.cast "I" ((JR.map2 JR.div (JR.invoke "calculateX_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "radius"), (JR.local "angle") ]) (JR.cast "J" (JR.local "scaleFactorValue"))))), 
                    JR.declare "yVector" "I" (JR.cast "I" ((JR.map2 JR.div (JR.invoke "calculateY_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "radius"), (JR.local "angle") ]) (JR.cast "J" (JR.local "scaleFactorValue"))))), 
                    JR.exec (JR.invoke "moveDXYZ_3" (JR.local "layer") [ (JR.local "xVector"), (JR.local "yVector"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "moveDXYZ_3" (JR.local "layer") [ (JR.invoke "getScaled_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.thisField "velocityProperties") []) []), (JR.invoke "getScaled_0" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityProperties") []) []), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.thisField "velocityProperties") []) ])
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "zero_0" (JR.thisField "velocityProperties") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getVelocityProperties_0 : JR.Method
jm_getVelocityProperties_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "velocityProperties") ])
        (jregister jheap)
        jthis
        jargs


jm_setVelocityProperties_1 : JR.Method
jm_setVelocityProperties_1 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "velocityProperties" "" JR.this (JR.local "velocityProperties")) ])
        (jregister jheap)
        jthis
        jargs


jm_setSpeedBasicDecimal_1 : JR.Method
jm_setSpeedBasicDecimal_1 jheap jthis jargs =
    JR.method [ ( "speedBasicDecimal", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "speedBasicDecimal" "" JR.this (JR.local "speedBasicDecimal")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSpeedBasicDecimal_0 : JR.Method
jm_getSpeedBasicDecimal_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "speedBasicDecimal") ])
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

