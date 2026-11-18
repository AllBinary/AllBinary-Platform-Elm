module Org.Allbinary.Game.Displayable.Canvas.CheatGameInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Game.Input.Event.GameKeyEvent as GameKeyEvent
import Org.Allbinary.Game.Input.Event.GameKeyEventUtil as GameKeyEventUtil
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Input.PlayerGameInput as PlayerGameInput
import Org.Allbinary.Game.Layer.Special.SpecialGameInputFactory as SpecialGameInputFactory


jclass : String
jclass =
    "CheatGameInputProcessor"


jchain : List String
jchain =
    [ "CheatGameInputProcessor" ]
        ++ PlayerGameInput.jchain


jfields : List ( String, JR.JValue )
jfields =
    PlayerGameInput.jfields ++ [ ( "PROCESS_GAME", JR.defaultOf "" ), ( "gameCanvas", JR.defaultOf "" ), ( "gameKeyFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_0", jm_update_0 ) ]
        PlayerGameInput.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CheatGameInputProcessor"
        [ ( "jm_update_0", jm_update_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_inputProcessor", jstatic_inputProcessor ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_inputProcessor : JR.M
jstatic_inputProcessor s =
    JR.static "CheatGameInputProcessor" jclinit "inputProcessor"
        SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PlayerGameInput.jinit_3 JR.this [ (JR.new BasicArrayListD.jnew_0 []), (JR.new BasicArrayListD.jnew_0 []), (JR.map JR.neg (JR.int 1)) ]),
                JR.exec (JR.setField "PROCESS_GAME" "" JR.this (JR.str "processGame")),
                JR.exec (JR.setField "gameKeyFactory" "" JR.this (JR.callStatic GameKeyFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameCanvas" "" JR.this (JR.local "gameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameLayerManager" "" (JR.invoke "getLayerManager_0" (JR.thisField "gameCanvas") []), 
                        JR.declare "list" "" (JR.invoke "getGameKeyEventList_0" JR.this []), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN76025 -> (JR.setLocal "index" "I" (JR.lit jwN76025))) JR.increment) ]) (JR.run [ 
                            JR.declare "anyType" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                            JR.declare "key" "I" (JR.callStatic GameKeyEventUtil.jm_getKey_1 [ (JR.local "anyType") ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "LEVEL_DOWN" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "strafeLeft_0" jstatic_inputProcessor []), 
                                JR.break ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "LEVEL_UP" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "strafeRight_0" jstatic_inputProcessor []), 
                                JR.break ]) identity ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "LEFT" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "left_0" jstatic_inputProcessor []), 
                                JR.break ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "RIGHT" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "right_0" jstatic_inputProcessor []), 
                                JR.break ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "UP" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "up_0" jstatic_inputProcessor []), 
                                JR.break ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "DOWN" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "down_0" jstatic_inputProcessor []), 
                                JR.break ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "KEY_NUM1" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "special1_2" jstatic_inputProcessor [ (JR.local "gameLayerManager"), GameKeyEvent.jstatic_NONE ]), 
                                JR.break ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "key") (JR.invoke "getId_0" (JR.field "KEY_NUM3" (JR.thisField "gameKeyFactory")) [])) (JR.run [ 
                                JR.exec (JR.invoke "special2_2" jstatic_inputProcessor [ (JR.local "gameLayerManager"), GameKeyEvent.jstatic_NONE ]), 
                                JR.break ]) identity ]) ]) ]) ]) ]) ]) ], 
                        JR.exec (JR.invoke "clear_0" (JR.local "list") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

