module Org.Allbinary.Game.Ag.Ai.Tactical.LurchAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.tactical
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton


jclass : String
jclass =
    "LurchAI"


jchain : List String
jchain =
    [ "LurchAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "currentRelativeAngle", JR.defaultOf "I" ), ( "currentSpeed", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "reverse_0", jm_reverse_0 )
        , ( "accelerate_0", jm_accelerate_0 )
        , ( "drop_0", jm_drop_0 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LurchAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_reverse_0", jm_reverse_0 ), ( "jm_accelerate_0", jm_accelerate_0 ), ( "jm_drop_0", jm_drop_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "currentRelativeAngle" "I" JR.this (JR.int 0)),
                identity,
                identity ])
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
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentSpeed") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.exec (JR.setField "currentSpeed" "I" JR.this (JR.int 5)) ]) (JR.run [ 
                        JR.exec (JR.setField "currentSpeed" "I" JR.this (JR.map JR.neg (JR.int 1))) ]), 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "x" "I" (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []), 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.map2 JR.sub (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []) (JR.thisField "currentSpeed")) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "reverse_0" JR.this []), 
                        JR.exec (JR.invoke "drop_0" JR.this []) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.add (JR.invoke "getX2_0" (JR.local "ownerLayerInterface") []) (JR.thisField "currentSpeed")) (JR.invoke "getLastWidth_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) [])) (JR.run [ 
                        JR.exec (JR.invoke "reverse_0" JR.this []), 
                        JR.exec (JR.invoke "accelerate_0" JR.this []), 
                        JR.exec (JR.invoke "drop_0" JR.this []) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" (JR.map2 JR.add (JR.local "x") (JR.thisField "currentSpeed"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 180)) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" (JR.map2 JR.sub (JR.local "x") (JR.thisField "currentSpeed"))) ]) identity ]), 
                    JR.exec (JR.invoke "setPosition_3" (JR.local "ownerLayerInterface") [ (JR.local "x"), (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []), (JR.invoke "getZP_0" (JR.local "ownerLayerInterface") []) ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_NUM0 ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 180)) (JR.run [ 
                        JR.exec (JR.callVia BasicAI.jvtable "processKeyAI_1" JR.this [ Canvas.jstatic_KEY_POUND ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_reverse_0 : JR.Method
jm_reverse_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 180)) (JR.run [ 
                        JR.exec (JR.setField "currentRelativeAngle" "I" JR.this (JR.int 0)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "currentRelativeAngle") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setField "currentRelativeAngle" "I" JR.this (JR.int 180)) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_accelerate_0 : JR.Method
jm_accelerate_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "currentSpeed") (JR.int 20)) (JR.run [ 
                        JR.exec (JR.postUpdate (JR.thisField "currentSpeed") (\jwN69974 -> (JR.setField "currentSpeed" "I" JR.this (JR.lit jwN69974))) JR.increment) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_drop_0 : JR.Method
jm_drop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "y" "I" (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []), 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.add (JR.invoke "getY2_0" (JR.local "ownerLayerInterface") []) (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") [])) (JR.invoke "getLastHeight_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) [])) (JR.run [ 
                        JR.exec (JR.setLocal "y" "I" (JR.int 0)) ]) (JR.run [ 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.add (JR.local "y") (JR.map2 JR.add (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") []) (JR.int 1)))) ]), 
                    JR.exec (JR.invoke "setPosition_3" (JR.local "ownerLayerInterface") [ (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []), (JR.local "y"), (JR.invoke "getZP_0" (JR.local "ownerLayerInterface") []) ]) ])
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

