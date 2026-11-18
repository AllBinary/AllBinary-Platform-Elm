module Org.Allbinary.Game.Ag.Layer.Hud.Basic.NumberStringHudFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Graphics.Hud.BasicHudFactory as BasicHudFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.NumberStringHud as NumberStringHud
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "NumberStringHudFactory"


jchain : List String
jchain =
    [ "NumberStringHudFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NULL_NUMBER_STRING_HUD", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createHud_0", jm_createHud_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NumberStringHudFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createHud_0", jm_createHud_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NumberStringHudFactory" jclinit "instance"
        (JR.callStatic NullUtil.jm_getInstance_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NULL_NUMBER_STRING_HUD" "" JR.this (JR.invoke "createHud_0" JR.this [])),
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.callStatic NullUtil.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.setStatic "NumberStringHudFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_createHud_0 : JR.Method
jm_createHud_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.new NumberStringHud.jnew_6 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.int 9), (JR.field "ABSOLUTE" (JR.callStatic BasicHudFactory.jm_getInstance_0 [])), (JR.int 1), (JR.int 0), (JR.field "NULL_COLOR" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) ) ] identity ])
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

