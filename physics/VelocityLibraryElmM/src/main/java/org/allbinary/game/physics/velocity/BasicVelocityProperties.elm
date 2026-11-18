module Org.Allbinary.Game.Physics.Velocity.BasicVelocityProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.velocity
-}

import JR
import Org.Allbinary.Logic.Math.Vector.AxisMathVectorUtil as AxisMathVectorUtil
import Org.Allbinary.Logic.Math.BasicDecimal as BasicDecimal
import Org.Allbinary.Game.Physics.Velocity.BasicVelocityInterface as BasicVelocityInterface
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Direction.DirectionUtil as DirectionUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Math.PositionStrings as PositionStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "BasicVelocityProperties"


jchain : List String
jchain =
    [ "BasicVelocityProperties" ]
        ++ BasicVelocityInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "velocityXBasicDecimal", JR.defaultOf "" ), ( "velocityYBasicDecimal", JR.defaultOf "" ), ( "velocityZBasicDecimal", JR.defaultOf "" ), ( "axisMathVectorUtil", JR.defaultOf "" ), ( "directionUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "zero_0", jm_zero_0 )
        , ( "getVelocityXBasicDecimalP_0", jm_getVelocityXBasicDecimalP_0 )
        , ( "getVelocityYBasicDecimalP_0", jm_getVelocityYBasicDecimalP_0 )
        , ( "getVelocityZBasicDecimalP_0", jm_getVelocityZBasicDecimalP_0 )
        , ( "setVelocityWithBigDecimalAndDirection_3", jm_setVelocityWithBigDecimalAndDirection_3 )
        , ( "setVelocityWithDirection_3", jm_setVelocityWithDirection_3 )
        , ( "addVelocityWithBigDecimalAndDirection_3", jm_addVelocityWithBigDecimalAndDirection_3 )
        , ( "addVelocityWithDirection_3", jm_addVelocityWithDirection_3 )
        , ( "setVelocityWithBigDecimal_3", jm_setVelocityWithBigDecimal_3 )
        , ( "addVelocityWithBigDecimal_3", jm_addVelocityWithBigDecimal_3 )
        , ( "setVelocity_3", jm_setVelocity_3 )
        , ( "addVelocity_3", jm_addVelocity_3 )
        , ( "setVelocityi_3", jm_setVelocityi_3 )
        , ( "addVelocityi_3", jm_addVelocityi_3 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicVelocityProperties"
        [ ( "jm_zero_0", jm_zero_0 ), ( "jm_getVelocityXBasicDecimalP_0", jm_getVelocityXBasicDecimalP_0 ), ( "jm_getVelocityYBasicDecimalP_0", jm_getVelocityYBasicDecimalP_0 ), ( "jm_getVelocityZBasicDecimalP_0", jm_getVelocityZBasicDecimalP_0 ), ( "jm_setVelocityWithBigDecimalAndDirection_3", jm_setVelocityWithBigDecimalAndDirection_3 ), ( "jm_setVelocityWithDirection_3", jm_setVelocityWithDirection_3 ), ( "jm_addVelocityWithBigDecimalAndDirection_3", jm_addVelocityWithBigDecimalAndDirection_3 ), ( "jm_addVelocityWithDirection_3", jm_addVelocityWithDirection_3 ), ( "jm_setVelocityWithBigDecimal_3", jm_setVelocityWithBigDecimal_3 ), ( "jm_addVelocityWithBigDecimal_3", jm_addVelocityWithBigDecimal_3 ), ( "jm_setVelocity_3", jm_setVelocity_3 ), ( "jm_addVelocity_3", jm_addVelocity_3 ), ( "jm_setVelocityi_3", jm_setVelocityi_3 ), ( "jm_addVelocityi_3", jm_addVelocityi_3 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "axisMathVectorUtil" "" JR.this (JR.callStatic AxisMathVectorUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "directionUtil" "" JR.this (JR.callStatic DirectionUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "velocityXBasicDecimal" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])), 
                    JR.exec (JR.setField "velocityYBasicDecimal" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])), 
                    JR.exec (JR.setField "velocityZBasicDecimal" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_zero_0 : JR.Method
jm_zero_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setint_1" (JR.thisField "velocityXBasicDecimal") [ (JR.int 0) ]), 
                    JR.exec (JR.invoke "setint_1" (JR.thisField "velocityYBasicDecimal") [ (JR.int 0) ]), 
                    JR.exec (JR.invoke "setint_1" (JR.thisField "velocityZBasicDecimal") [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getVelocityXBasicDecimalP_0 : JR.Method
jm_getVelocityXBasicDecimalP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "velocityXBasicDecimal") ])
        (jregister jheap)
        jthis
        jargs


jm_getVelocityYBasicDecimalP_0 : JR.Method
jm_getVelocityYBasicDecimalP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "velocityYBasicDecimal") ])
        (jregister jheap)
        jthis
        jargs


jm_getVelocityZBasicDecimalP_0 : JR.Method
jm_getVelocityZBasicDecimalP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "velocityZBasicDecimal") ])
        (jregister jheap)
        jthis
        jargs


jm_setVelocityWithBigDecimalAndDirection_3 : JR.Method
jm_setVelocityWithBigDecimalAndDirection_3 jheap jthis jargs =
    JR.method [ ( "magnitudeBasicDecimal", "" ), ( "direction", "" ), ( "otherDirection", "" ) ] ""
        (JR.run [ 
                    JR.declare "angle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "direction") ]), 
                    JR.declare "otherAngle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "otherDirection") ]), 
                    JR.exec (JR.invoke "setVelocityWithBigDecimal_3" JR.this [ (JR.local "magnitudeBasicDecimal"), (JR.local "angle"), (JR.local "otherAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setVelocityWithDirection_3 : JR.Method
jm_setVelocityWithDirection_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "direction", "" ), ( "otherDirection", "" ) ] ""
        (JR.run [ 
                    JR.declare "angle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "direction") ]), 
                    JR.declare "otherAngle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "otherDirection") ]), 
                    JR.exec (JR.invoke "setVelocity_3" JR.this [ (JR.local "magnitude"), (JR.local "angle"), (JR.local "otherAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addVelocityWithBigDecimalAndDirection_3 : JR.Method
jm_addVelocityWithBigDecimalAndDirection_3 jheap jthis jargs =
    JR.method [ ( "magnitudeBasicDecimal", "" ), ( "direction", "" ), ( "otherDirection", "" ) ] ""
        (JR.run [ 
                    JR.declare "angle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "direction") ]), 
                    JR.declare "otherAngle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "otherDirection") ]), 
                    JR.exec (JR.invoke "addVelocityWithBigDecimal_3" JR.this [ (JR.local "magnitudeBasicDecimal"), (JR.local "angle"), (JR.local "otherAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addVelocityWithDirection_3 : JR.Method
jm_addVelocityWithDirection_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "direction", "" ), ( "otherDirection", "" ) ] ""
        (JR.run [ 
                    JR.declare "angle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "direction") ]), 
                    JR.declare "otherAngle" "" (JR.invoke "getAngle_1" (JR.thisField "directionUtil") [ (JR.local "otherDirection") ]), 
                    JR.exec (JR.invoke "addVelocity_3" JR.this [ (JR.local "magnitude"), (JR.local "angle"), (JR.local "otherAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setVelocityWithBigDecimal_3 : JR.Method
jm_setVelocityWithBigDecimal_3 jheap jthis jargs =
    JR.method [ ( "magnitudeBasicDecimal", "" ), ( "angle", "" ), ( "otherAngle", "" ) ] ""
        (JR.run [ 
                    JR.declare "magnitude" "J" (JR.invoke "getUnscaled_0" (JR.local "magnitudeBasicDecimal") []), 
                    JR.exec (JR.invoke "setVelocity_3" JR.this [ (JR.local "magnitude"), (JR.local "angle"), (JR.local "otherAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addVelocityWithBigDecimal_3 : JR.Method
jm_addVelocityWithBigDecimal_3 jheap jthis jargs =
    JR.method [ ( "magnitudeBasicDecimal", "" ), ( "angle", "" ), ( "otherAngle", "" ) ] ""
        (JR.run [ 
                    JR.declare "magnitude" "J" (JR.invoke "getUnscaled_0" (JR.local "magnitudeBasicDecimal") []), 
                    JR.exec (JR.invoke "addVelocity_3" JR.this [ (JR.local "magnitude"), (JR.local "angle"), (JR.local "otherAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setVelocity_3 : JR.Method
jm_setVelocity_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "" ), ( "otherAngle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setVelocityi_3" JR.this [ (JR.local "magnitude"), (JR.cast "I" (JR.invoke "getValue_0" (JR.local "angle") [])), (JR.cast "I" (JR.invoke "getValue_0" (JR.local "otherAngle") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addVelocity_3 : JR.Method
jm_addVelocity_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "" ), ( "otherAngle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addVelocityi_3" JR.this [ (JR.local "magnitude"), (JR.cast "I" (JR.invoke "getValue_0" (JR.local "angle") [])), (JR.cast "I" (JR.invoke "getValue_0" (JR.local "otherAngle") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setVelocityi_3 : JR.Method
jm_setVelocityi_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "xVector" "J" ((JR.map2 JR.div (JR.invoke "calculateX_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "magnitude"), (JR.local "angle") ]) (JR.cast "J" (JR.invoke "getScaledFactorValue_0" (JR.thisField "velocityXBasicDecimal") [])))), 
                    JR.declare "yVector" "J" ((JR.map2 JR.div (JR.invoke "calculateY_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "magnitude"), (JR.local "angle") ]) (JR.cast "J" (JR.invoke "getScaledFactorValue_0" (JR.thisField "velocityYBasicDecimal") [])))), 
                    JR.declare "zVector" "J" ((JR.map2 JR.div (JR.invoke "calculateZ_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "magnitude"), (JR.local "otherAngle") ]) (JR.cast "J" (JR.invoke "getScaledFactorValue_0" (JR.thisField "velocityZBasicDecimal") [])))), 
                    JR.exec (JR.invoke "setlong_1" (JR.thisField "velocityXBasicDecimal") [ (JR.local "xVector") ]), 
                    JR.exec (JR.invoke "setlong_1" (JR.thisField "velocityYBasicDecimal") [ (JR.local "yVector") ]), 
                    JR.exec (JR.invoke "setlong_1" (JR.thisField "velocityZBasicDecimal") [ (JR.local "zVector") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addVelocityi_3 : JR.Method
jm_addVelocityi_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "xVector" "J" ((JR.map2 JR.div (JR.invoke "calculateX_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "magnitude"), (JR.local "angle") ]) (JR.cast "J" (JR.invoke "getScaledFactorValue_0" (JR.thisField "velocityXBasicDecimal") [])))), 
                    JR.declare "yVector" "J" ((JR.map2 JR.div (JR.invoke "calculateY_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "magnitude"), (JR.local "angle") ]) (JR.cast "J" (JR.invoke "getScaledFactorValue_0" (JR.thisField "velocityYBasicDecimal") [])))), 
                    JR.declare "zVector" "J" ((JR.map2 JR.div (JR.invoke "calculateZ_2" (JR.thisField "axisMathVectorUtil") [ (JR.local "magnitude"), (JR.local "otherAngle") ]) (JR.cast "J" (JR.invoke "getScaledFactorValue_0" (JR.thisField "velocityZBasicDecimal") [])))), 
                    JR.exec (JR.invoke "addlong_1" (JR.thisField "velocityXBasicDecimal") [ (JR.local "xVector") ]), 
                    JR.exec (JR.invoke "addlong_1" (JR.thisField "velocityYBasicDecimal") [ (JR.local "yVector") ]), 
                    JR.exec (JR.invoke "addlong_1" (JR.thisField "velocityZBasicDecimal") [ (JR.local "zVector") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "positionStrings" "" (JR.callStatic PositionStrings.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Velocity ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "X_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "velocityXBasicDecimal") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Y_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "velocityYBasicDecimal") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Z_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.thisField "velocityZBasicDecimal") ]) ]), 
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

