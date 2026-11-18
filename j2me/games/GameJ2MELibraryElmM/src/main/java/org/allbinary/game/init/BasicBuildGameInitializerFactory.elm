module Org.Allbinary.Game.Init.BasicBuildGameInitializerFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.init
-}

import JR
import Org.Allbinary.Game.Init.BaseGameInitialization as BaseGameInitialization
import Org.Allbinary.Game.Init.GameInitializationInterfaceFactoryInterface as GameInitializationInterfaceFactoryInterface


jclass : String
jclass =
    "BasicBuildGameInitializerFactory"


jchain : List String
jchain =
    [ "BasicBuildGameInitializerFactory" ]
        ++ GameInitializationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicBuildGameInitializerFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY", jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY : JR.M
jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY s =
    JR.static "BasicBuildGameInitializerFactory" jclinit "NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION ])
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

