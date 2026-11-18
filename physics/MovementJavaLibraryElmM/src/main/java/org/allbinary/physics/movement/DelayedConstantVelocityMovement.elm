module Org.Allbinary.Physics.Movement.DelayedConstantVelocityMovement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Physics.Movement.BasicConstantVelocityMovement as BasicConstantVelocityMovement
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "DelayedConstantVelocityMovement"


jchain : List String
jchain =
    [ "DelayedConstantVelocityMovement" ]
        ++ BasicConstantVelocityMovement.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicConstantVelocityMovement.jfields ++ [ ( "timeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_3", jm_init_3 )
        , ( "process_1", jm_process_1 ) ]
        BasicConstantVelocityMovement.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DelayedConstantVelocityMovement"
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
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 60) ])),
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
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.callVia BasicConstantVelocityMovement.jvtable "process_1" JR.this [ (JR.local "layer") ]) ]) identity ])
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

