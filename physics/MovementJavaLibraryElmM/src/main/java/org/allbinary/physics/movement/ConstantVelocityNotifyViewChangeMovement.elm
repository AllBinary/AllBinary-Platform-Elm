module Org.Allbinary.Physics.Movement.ConstantVelocityNotifyViewChangeMovement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Logic.Math.Vector.AxisMathVectorUtil as AxisMathVectorUtil
import Org.Allbinary.Logic.Math.BasicDecimal as BasicDecimal
import Org.Allbinary.Game.Physics.Velocity.BasicVelocityProperties as BasicVelocityProperties
import Org.Allbinary.Physics.Movement.Movement as Movement


jclass : String
jclass =
    "ConstantVelocityNotifyViewChangeMovement"


jchain : List String
jchain =
    [ "ConstantVelocityNotifyViewChangeMovement" ]
        ++ Movement.jchain


jfields : List ( String, JR.JValue )
jfields =
    Movement.jfields ++ [ ( "basicVelocityProperties", JR.defaultOf "" ), ( "speedBasicDecimal", JR.defaultOf "" ), ( "axisMathVectorUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_3", jm_init_3 )
        , ( "moveOutsideRadius_4", jm_moveOutsideRadius_4 )
        , ( "process_1", jm_process_1 )
        , ( "stop_0", jm_stop_0 ) ]
        Movement.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ConstantVelocityNotifyViewChangeMovement"
        [ ( "jm_init_3", jm_init_3 ), ( "jm_moveOutsideRadius_4", jm_moveOutsideRadius_4 ), ( "jm_process_1", jm_process_1 ), ( "jm_stop_0", jm_stop_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Movement.jinit_0 JR.this []),
                JR.exec (JR.setField "axisMathVectorUtil" "" JR.this (JR.callStatic AxisMathVectorUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "speedBasicDecimal" "" JR.this BasicDecimal.jstatic_ZERO_BIGDECIMAL), 
                    JR.exec (JR.setField "basicVelocityProperties" "" JR.this (JR.new BasicVelocityProperties.jnew_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_3 : JR.Method
jm_init_3 jheap jthis jargs =
    JR.method [ ( "speedBasicDecimal", "" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "speedBasicDecimal" "" JR.this (JR.local "speedBasicDecimal")), 
                    JR.declare "angleFactory" "" (JR.callStatic AngleFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setVelocityWithBigDecimal_3" (JR.thisField "basicVelocityProperties") [ (JR.local "speedBasicDecimal"), (JR.invoke "getAt_1" (JR.local "angleFactory") [ (JR.local "angle") ]), (JR.invoke "getAt_1" (JR.local "angleFactory") [ (JR.local "otherAngle") ]) ]) ])
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
                    JR.declare "zVector" "I" (JR.cast "I" ((JR.map2 JR.div (JR.invoke "calculateZ_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "radius"), (JR.local "otherAngle") ]) (JR.cast "J" (JR.local "scaleFactorValue"))))), 
                    JR.exec (JR.invoke "moveDXYZ_3" (JR.local "layer") [ (JR.local "xVector"), (JR.local "yVector"), (JR.local "zVector") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        (JR.run [ 
                    JR.declare "x" "I" (JR.invoke "getScaled_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.thisField "basicVelocityProperties") []) []), 
                    JR.declare "y" "I" (JR.invoke "getScaled_0" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "basicVelocityProperties") []) []), 
                    JR.declare "z" "I" (JR.invoke "getScaled_0" (JR.invoke "getVelocityZBasicDecimalP_0" (JR.thisField "basicVelocityProperties") []) []), 
                    JR.exec (JR.invoke "moveDXYZ_3" (JR.local "layer") [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]), 
                    JR.ifElse (JR.or (JR.or (JR.map2 JR.notEquals (JR.local "x") (JR.int 0)) (JR.map2 JR.notEquals (JR.local "y") (JR.int 0))) (JR.map2 JR.notEquals (JR.local "z") (JR.int 0))) (JR.run [ 
                        JR.exec (JR.invoke "onViewPositionChangeEvent_0" (JR.local "layer") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "zero_0" (JR.thisField "basicVelocityProperties") []) ])
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

