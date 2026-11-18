module Org.Allbinary.Game.Layer.SpriteFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Javax.Microedition.Lcdui.Game.Sprite as Sprite
import Org.Allbinary.Game.Layer.SpriteFactoryInterface as SpriteFactoryInterface


jclass : String
jclass =
    "SpriteFactory"


jchain : List String
jchain =
    [ "SpriteFactory" ]
        ++ SpriteFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createSprite_3", jm_createSprite_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpriteFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createSprite_3", jm_createSprite_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SpriteFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity ])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_createSprite_3 : JR.Method
jm_createSprite_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "frameWidth", "I" ), ( "frameHeight", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new Sprite.jnew_3 [ (JR.local "image"), (JR.local "frameWidth"), (JR.local "frameHeight") ]) ])
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

