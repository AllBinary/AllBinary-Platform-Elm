module Org.Allbinary.Game.Physics.Velocity.VelocityProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.velocity
-}

import JR
import Org.Allbinary.Game.Physics.Velocity.BasicVelocityProperties as BasicVelocityProperties
import Org.Allbinary.Game.Physics.Velocity.VelocityInterface as VelocityInterface


jclass : String
jclass =
    "VelocityProperties"


jchain : List String
jchain =
    [ "VelocityProperties" ]
        ++ BasicVelocityProperties.jchain
        ++ VelocityInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicVelocityProperties.jfields ++ [ ( "maxForwardVelocity", JR.defaultOf "I" ), ( "maxReverseVelocity", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getMaxForwardVelocity_0", jm_getMaxForwardVelocity_0 )
        , ( "setMaxForwardVelocity_1", jm_setMaxForwardVelocity_1 )
        , ( "getMaxReverseVelocity_0", jm_getMaxReverseVelocity_0 )
        , ( "setMaxReverseVelocity_1", jm_setMaxReverseVelocity_1 )
        , ( "limitMaxXYForwardVelocity_0", jm_limitMaxXYForwardVelocity_0 )
        , ( "limitMaxXYReverseVelocity_0", jm_limitMaxXYReverseVelocity_0 )
        , ( "limitMaxYForwardVelocity_0", jm_limitMaxYForwardVelocity_0 )
        , ( "limitMaxYReverseVelocity_0", jm_limitMaxYReverseVelocity_0 )
        , ( "limitMaxXForwardVelocity_0", jm_limitMaxXForwardVelocity_0 )
        , ( "limitMaxXReverseVelocity_0", jm_limitMaxXReverseVelocity_0 )
        , ( "isOverXYMaxForwardVelocity_0", jm_isOverXYMaxForwardVelocity_0 )
        , ( "isOverXYMaxReverseVelocity_0", jm_isOverXYMaxReverseVelocity_0 )
        , ( "limitXYToForwardAndReverseMaxVelocity_0", jm_limitXYToForwardAndReverseMaxVelocity_0 )
        , ( "limitMaxXYVelocity_1", jm_limitMaxXYVelocity_1 )
        , ( "limitMaxPositiveYVelocity_1", jm_limitMaxPositiveYVelocity_1 )
        , ( "limitMaxNegativeYVelocity_1", jm_limitMaxNegativeYVelocity_1 )
        , ( "limitMaxYVelocity_1", jm_limitMaxYVelocity_1 )
        , ( "limitMaxXVelocity_1", jm_limitMaxXVelocity_1 )
        , ( "isOverXYMaxVelocity_1", jm_isOverXYMaxVelocity_1 )
        , ( "setVelocityi_3", jm_setVelocityi_3 )
        , ( "addVelocityi_3", jm_addVelocityi_3 ) ]
        BasicVelocityProperties.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VelocityProperties"
        [ ( "jm_getMaxForwardVelocity_0", jm_getMaxForwardVelocity_0 ), ( "jm_setMaxForwardVelocity_1", jm_setMaxForwardVelocity_1 ), ( "jm_getMaxReverseVelocity_0", jm_getMaxReverseVelocity_0 ), ( "jm_setMaxReverseVelocity_1", jm_setMaxReverseVelocity_1 ), ( "jm_limitMaxXYForwardVelocity_0", jm_limitMaxXYForwardVelocity_0 ), ( "jm_limitMaxXYReverseVelocity_0", jm_limitMaxXYReverseVelocity_0 ), ( "jm_limitMaxYForwardVelocity_0", jm_limitMaxYForwardVelocity_0 ), ( "jm_limitMaxYReverseVelocity_0", jm_limitMaxYReverseVelocity_0 ), ( "jm_limitMaxXForwardVelocity_0", jm_limitMaxXForwardVelocity_0 ), ( "jm_limitMaxXReverseVelocity_0", jm_limitMaxXReverseVelocity_0 ), ( "jm_isOverXYMaxForwardVelocity_0", jm_isOverXYMaxForwardVelocity_0 ), ( "jm_isOverXYMaxReverseVelocity_0", jm_isOverXYMaxReverseVelocity_0 ), ( "jm_limitXYToForwardAndReverseMaxVelocity_0", jm_limitXYToForwardAndReverseMaxVelocity_0 ), ( "jm_limitMaxXYVelocity_1", jm_limitMaxXYVelocity_1 ), ( "jm_limitMaxPositiveYVelocity_1", jm_limitMaxPositiveYVelocity_1 ), ( "jm_limitMaxNegativeYVelocity_1", jm_limitMaxNegativeYVelocity_1 ), ( "jm_limitMaxYVelocity_1", jm_limitMaxYVelocity_1 ), ( "jm_limitMaxXVelocity_1", jm_limitMaxXVelocity_1 ), ( "jm_isOverXYMaxVelocity_1", jm_isOverXYMaxVelocity_1 ), ( "jm_setVelocityi_3", jm_setVelocityi_3 ), ( "jm_addVelocityi_3", jm_addVelocityi_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_VELOCITY_PROPERTIES", jstatic_NULL_VELOCITY_PROPERTIES ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_VELOCITY_PROPERTIES : JR.M
jstatic_NULL_VELOCITY_PROPERTIES s =
    JR.static "VelocityProperties" jclinit "NULL_VELOCITY_PROPERTIES"
        (JR.new jnew_2 [ (JR.int 0), (JR.int 0) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "maxForwardVelocity", "I" ), ( "maxReverseVelocity", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicVelocityProperties.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setMaxForwardVelocity_1" JR.this [ (JR.local "maxForwardVelocity") ]), 
                    JR.exec (JR.invoke "setMaxReverseVelocity_1" JR.this [ (JR.local "maxReverseVelocity") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getMaxForwardVelocity_0 : JR.Method
jm_getMaxForwardVelocity_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "maxForwardVelocity") ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxForwardVelocity_1 : JR.Method
jm_setMaxForwardVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxForwardVelocity", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxForwardVelocity" "I" JR.this (JR.local "maxForwardVelocity")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxReverseVelocity_0 : JR.Method
jm_getMaxReverseVelocity_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "maxReverseVelocity") ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxReverseVelocity_1 : JR.Method
jm_setMaxReverseVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxReverseVelocity", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxReverseVelocity" "I" JR.this (JR.local "maxReverseVelocity")) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxXYForwardVelocity_0 : JR.Method
jm_limitMaxXYForwardVelocity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxXYVelocity_1" JR.this [ (JR.invoke "getMaxForwardVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxXYReverseVelocity_0 : JR.Method
jm_limitMaxXYReverseVelocity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxXYVelocity_1" JR.this [ (JR.invoke "getMaxReverseVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxYForwardVelocity_0 : JR.Method
jm_limitMaxYForwardVelocity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxYVelocity_1" JR.this [ (JR.invoke "getMaxForwardVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxYReverseVelocity_0 : JR.Method
jm_limitMaxYReverseVelocity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxYVelocity_1" JR.this [ (JR.invoke "getMaxReverseVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxXForwardVelocity_0 : JR.Method
jm_limitMaxXForwardVelocity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxXVelocity_1" JR.this [ (JR.invoke "getMaxForwardVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxXReverseVelocity_0 : JR.Method
jm_limitMaxXReverseVelocity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxXVelocity_1" JR.this [ (JR.invoke "getMaxReverseVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isOverXYMaxForwardVelocity_0 : JR.Method
jm_isOverXYMaxForwardVelocity_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isOverXYMaxVelocity_1" JR.this [ (JR.invoke "getMaxForwardVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isOverXYMaxReverseVelocity_0 : JR.Method
jm_isOverXYMaxReverseVelocity_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isOverXYMaxVelocity_1" JR.this [ (JR.invoke "getMaxReverseVelocity_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitXYToForwardAndReverseMaxVelocity_0 : JR.Method
jm_limitXYToForwardAndReverseMaxVelocity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxXYForwardVelocity_0" JR.this []), 
                    JR.exec (JR.invoke "limitMaxXYReverseVelocity_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxXYVelocity_1 : JR.Method
jm_limitMaxXYVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxVelocity", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxXVelocity_1" JR.this [ (JR.local "maxVelocity") ]), 
                    JR.exec (JR.invoke "limitMaxYVelocity_1" JR.this [ (JR.local "maxVelocity") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxPositiveYVelocity_1 : JR.Method
jm_limitMaxPositiveYVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxVelocity", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getUnscaled_0" (JR.thisField "velocityYBasicDecimal") []) (JR.cast "J" (JR.local "maxVelocity"))) (JR.run [ 
                        JR.exec (JR.invoke "setint_1" (JR.thisField "velocityYBasicDecimal") [ (JR.local "maxVelocity") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxNegativeYVelocity_1 : JR.Method
jm_limitMaxNegativeYVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxVelocity", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getUnscaled_0" (JR.thisField "velocityYBasicDecimal") []) (JR.cast "J" (JR.map JR.neg (JR.local "maxVelocity")))) (JR.run [ 
                        JR.exec (JR.invoke "setint_1" (JR.thisField "velocityYBasicDecimal") [ (JR.map JR.neg (JR.local "maxVelocity")) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxYVelocity_1 : JR.Method
jm_limitMaxYVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxVelocity", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "limitMaxPositiveYVelocity_1" JR.this [ (JR.local "maxVelocity") ]), 
                    JR.exec (JR.invoke "limitMaxNegativeYVelocity_1" JR.this [ (JR.local "maxVelocity") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_limitMaxXVelocity_1 : JR.Method
jm_limitMaxXVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxVelocity", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getUnscaled_0" (JR.thisField "velocityXBasicDecimal") []) (JR.cast "J" (JR.local "maxVelocity"))) (JR.run [ 
                        JR.exec (JR.invoke "setint_1" (JR.thisField "velocityXBasicDecimal") [ (JR.local "maxVelocity") ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getUnscaled_0" (JR.thisField "velocityXBasicDecimal") []) (JR.cast "J" (JR.map JR.neg (JR.local "maxVelocity")))) (JR.run [ 
                        JR.exec (JR.invoke "setint_1" (JR.thisField "velocityXBasicDecimal") [ (JR.map JR.neg (JR.local "maxVelocity")) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isOverXYMaxVelocity_1 : JR.Method
jm_isOverXYMaxVelocity_1 jheap jthis jargs =
    JR.method [ ( "maxVelocity", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getUnscaled_0" (JR.thisField "velocityXBasicDecimal") []) (JR.cast "J" (JR.local "maxVelocity"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getUnscaled_0" (JR.thisField "velocityXBasicDecimal") []) (JR.cast "J" (JR.map JR.neg (JR.local "maxVelocity")))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getUnscaled_0" (JR.thisField "velocityYBasicDecimal") []) (JR.cast "J" (JR.local "maxVelocity"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getUnscaled_0" (JR.thisField "velocityYBasicDecimal") []) (JR.cast "J" (JR.map JR.neg (JR.local "maxVelocity")))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setVelocityi_3 : JR.Method
jm_setVelocityi_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicVelocityProperties.jvtable "setVelocityi_3" JR.this [ (JR.local "magnitude"), (JR.local "angle"), (JR.local "otherAngle") ]), 
                    JR.exec (JR.invoke "limitXYToForwardAndReverseMaxVelocity_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_addVelocityi_3 : JR.Method
jm_addVelocityi_3 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicVelocityProperties.jvtable "addVelocityi_3" JR.this [ (JR.local "magnitude"), (JR.local "angle"), (JR.local "otherAngle") ]), 
                    JR.exec (JR.invoke "limitXYToForwardAndReverseMaxVelocity_0" JR.this []) ])
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

