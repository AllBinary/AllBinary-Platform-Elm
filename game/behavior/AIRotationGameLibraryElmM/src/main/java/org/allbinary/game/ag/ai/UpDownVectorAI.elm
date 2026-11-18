module Org.Allbinary.Game.Ag.Ai.UpDownVectorAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI


jclass : String
jclass =
    "UpDownVectorAI"


jchain : List String
jchain =
    [ "UpDownVectorAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "velocityInterface", JR.defaultOf "" ), ( "index", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UpDownVectorAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "index" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.declare "velocityInterfaceCompositeInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.exec (JR.setField "velocityInterface" "" JR.this (JR.invoke "getVelocityProperties_0" (JR.local "velocityInterfaceCompositeInterface") [])), 
                    JR.exec (JR.invoke "setint_1" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityInterface") []) [ (JR.int 0) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "y" "I" (JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.invoke "getOwnerLayerInterface_0" JR.this []) []) (JR.int 270)), 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "index") (JR.int 5)) (JR.run [ 
                        JR.declare "basicDecimal" "" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityInterface") []), 
                        JR.exec (JR.invoke "setint_1" (JR.local "basicDecimal") [ (JR.int 0) ]), 
                        JR.exec (JR.invoke "addint_1" (JR.local "basicDecimal") [ (JR.local "y") ]), 
                        JR.exec (JR.postUpdate (JR.thisField "index") (\jwN69371 -> (JR.setField "index" "I" JR.this (JR.lit jwN69371))) JR.increment) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "index") (JR.int 10)) (JR.run [ 
                        JR.declare "basicDecimal" "" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityInterface") []), 
                        JR.exec (JR.invoke "setint_1" (JR.local "basicDecimal") [ (JR.int 0) ]), 
                        JR.exec (JR.invoke "subtractint_1" (JR.local "basicDecimal") [ (JR.local "y") ]), 
                        JR.exec (JR.postUpdate (JR.thisField "index") (\jwN69232 -> (JR.setField "index" "I" JR.this (JR.lit jwN69232))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setField "index" "I" JR.this (JR.int 0)), 
                        JR.exec (JR.invoke "processAI_1" JR.this [ (JR.local "allBinaryLayerManager") ]) ]) ]) ])
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

