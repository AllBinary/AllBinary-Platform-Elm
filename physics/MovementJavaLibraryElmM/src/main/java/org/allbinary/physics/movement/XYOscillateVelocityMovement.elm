module Org.Allbinary.Physics.Movement.XYOscillateVelocityMovement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Physics.Movement.BasicConstantVelocityMovement as BasicConstantVelocityMovement
import Org.Allbinary.Game.Physics.Velocity.VelocityProperties as VelocityProperties


jclass : String
jclass =
    "XYOscillateVelocityMovement"


jchain : List String
jchain =
    [ "XYOscillateVelocityMovement" ]
        ++ BasicConstantVelocityMovement.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicConstantVelocityMovement.jfields ++ [ ( "oscillateMin", JR.defaultOf "I" ), ( "oscillateMax", JR.defaultOf "I" ), ( "oscillate", JR.defaultOf "I" ), ( "oscillatePositive", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "process_1", jm_process_1 ) ]
        BasicConstantVelocityMovement.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "XYOscillateVelocityMovement"
        [ ( "jm_process_1", jm_process_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "speedBasicDecimal", "" ), ( "oscillateMin", "I" ), ( "oscillateMax", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicConstantVelocityMovement.jinit_2 JR.this [ (JR.local "speedBasicDecimal"), (JR.new VelocityProperties.jnew_2 [ (JR.cast "I" (JR.invoke "getUnscaled_0" (JR.local "speedBasicDecimal") [])), (JR.cast "I" (JR.invoke "getUnscaled_0" (JR.local "speedBasicDecimal") [])) ]) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "oscillateMin" "I" JR.this (JR.local "oscillateMin")), 
                    JR.exec (JR.setField "oscillateMax" "I" JR.this (JR.local "oscillateMax")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicConstantVelocityMovement.jvtable "process_1" JR.this [ (JR.local "layer") ]), 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "oscillate") (JR.thisField "oscillateMin")) (JR.run [ 
                        JR.exec (JR.setField "oscillatePositive" "Z" JR.this (JR.bool True)), 
                        JR.exec (JR.invoke "addint_1" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.invoke "getVelocityProperties_0" JR.this []) []) [ (JR.int 3000) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "oscillate") (JR.thisField "oscillateMax")) (JR.run [ 
                        JR.exec (JR.setField "oscillatePositive" "Z" JR.this (JR.bool False)), 
                        JR.exec (JR.invoke "subtractint_1" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.invoke "getVelocityProperties_0" JR.this []) []) [ (JR.int 3000) ]) ]) identity ]), 
                    JR.ifElse (JR.thisField "oscillatePositive") (JR.run [ 
                        JR.exec (JR.postUpdate (JR.thisField "oscillate") (\jwN68812 -> (JR.setField "oscillate" "I" JR.this (JR.lit jwN68812))) JR.increment), 
                        JR.exec (JR.invoke "addint_1" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.invoke "getVelocityProperties_0" JR.this []) []) [ (JR.int 5000) ]) ]) (JR.run [ 
                        JR.exec (JR.postUpdate (JR.thisField "oscillate") (\jwN68747 -> (JR.setField "oscillate" "I" JR.this (JR.lit jwN68747))) JR.decrement), 
                        JR.exec (JR.invoke "subtractint_1" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.invoke "getVelocityProperties_0" JR.this []) []) [ (JR.int 5000) ]) ]) ])
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

