module Org.Allbinary.Game.Init.CommonGameInitialization exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.init
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Game.Init.BaseGameInitialization as BaseGameInitialization
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "CommonGameInitialization"


jchain : List String
jchain =
    [ "CommonGameInitialization" ]
        ++ BaseGameInitialization.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseGameInitialization.jfields ++ [ ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_3", jm_init_3 )
        , ( "initGame_0", jm_initGame_0 ) ]
        BaseGameInitialization.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommonGameInitialization"
        [ ( "jm_init_3", jm_init_3 ), ( "jm_initGame_0", jm_initGame_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "resourceInitializationArray", "" ), ( "portion", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseGameInitialization.jinit_2 JR.this [ (JR.local "resourceInitializationArray"), (JR.local "portion") ]),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
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
    JR.method [ ( "abeClientInformation", "" ), ( "commandListener", "" ), ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BaseGameInitialization.jvtable "init_3" JR.this [ (JR.local "abeClientInformation"), (JR.local "commandListener"), (JR.local "level") ]), 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.map JR.not_ (JR.invoke "isGameInitialized_0" JR.this [])) (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.field "LOAD_ALL" (JR.local "resourceLoadingLevelFactory")) []))) (JR.run [ 
                        JR.exec (JR.invoke "setGameInitialized_1" JR.this [ (JR.bool True) ]), 
                        JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "init_0" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Integers") ]), 
                        JR.exec (JR.invoke "init_0" (JR.callStatic PointFactory.jm_getInstance_0 []) []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Points") ]), 
                        JR.exec (JR.callStatic AngleFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Angles") ]), 
                        JR.exec (JR.invoke "initGame_0" JR.this []), 
                        JR.exec (JR.invoke "init_0" (JR.aget (JR.thisField "resourceInitializationArray") (JR.thisField "GAME_RESOURCES")) []) ]) identity, 
                    JR.exec (JR.callVia BaseGameInitialization.jvtable "resourceInitialization_1" JR.this [ (JR.local "level") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initGame_0 : JR.Method
jm_initGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
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

