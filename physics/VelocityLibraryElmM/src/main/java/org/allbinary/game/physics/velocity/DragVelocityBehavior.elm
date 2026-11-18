module Org.Allbinary.Game.Physics.Velocity.DragVelocityBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.velocity
-}

import JR
import Org.Allbinary.Game.Physics.Velocity.VelocityBehaviorBase as VelocityBehaviorBase


jclass : String
jclass =
    "DragVelocityBehavior"


jchain : List String
jchain =
    [ "DragVelocityBehavior" ]
        ++ VelocityBehaviorBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    VelocityBehaviorBase.jfields ++ []


jvtable =
    JR.vtable
        [ ( "reduce_3", jm_reduce_3 )
        , ( "reduceX_3", jm_reduceX_3 )
        , ( "reduceY_3", jm_reduceY_3 ) ]
        VelocityBehaviorBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DragVelocityBehavior"
        [ ( "jm_reduce_3", jm_reduce_3 ), ( "jm_reduceX_3", jm_reduceX_3 ), ( "jm_reduceY_3", jm_reduceY_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DragVelocityBehavior" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect VelocityBehaviorBase.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_reduce_3 : JR.Method
jm_reduce_3 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "nominator", "I" ), ( "denominator", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.local "velocityProperties") []) []) (JR.long 0)) (JR.run [ 
                        JR.declare "basicDecimal" "" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.local "velocityProperties") []), 
                        JR.exec (JR.invoke "multiplyint_1" (JR.local "basicDecimal") [ (JR.local "nominator") ]), 
                        JR.exec (JR.invoke "divideint_1" (JR.local "basicDecimal") [ (JR.local "denominator") ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.local "velocityProperties") []) []) (JR.long 0)) (JR.run [ 
                        JR.declare "basicDecimal" "" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.local "velocityProperties") []), 
                        JR.exec (JR.invoke "multiplyint_1" (JR.local "basicDecimal") [ (JR.local "nominator") ]), 
                        JR.exec (JR.invoke "divideint_1" (JR.local "basicDecimal") [ (JR.local "denominator") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_reduceX_3 : JR.Method
jm_reduceX_3 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "nominator", "I" ), ( "denominator", "I" ) ] ""
        (JR.run [ 
                    JR.declare "basicDecimal" "" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.local "velocityProperties") []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getUnscaled_0" (JR.local "basicDecimal") []) (JR.long 0)) (JR.run [ 
                        JR.exec (JR.invoke "multiplyint_1" (JR.local "basicDecimal") [ (JR.local "nominator") ]), 
                        JR.exec (JR.invoke "divideint_1" (JR.local "basicDecimal") [ (JR.local "denominator") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_reduceY_3 : JR.Method
jm_reduceY_3 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "nominator", "I" ), ( "denominator", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.local "velocityProperties") []) []) (JR.long 0)) (JR.run [ 
                        JR.declare "basicDecimal" "" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.local "velocityProperties") []), 
                        JR.exec (JR.invoke "multiplyint_1" (JR.local "basicDecimal") [ (JR.local "nominator") ]), 
                        JR.exec (JR.invoke "divideint_1" (JR.local "basicDecimal") [ (JR.local "denominator") ]) ]) identity ])
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

