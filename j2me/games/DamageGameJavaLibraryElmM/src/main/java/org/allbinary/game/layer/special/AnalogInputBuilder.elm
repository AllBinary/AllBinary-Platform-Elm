module Org.Allbinary.Game.Layer.Special.AnalogInputBuilder exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Layer.Special.Special1GameInputProcessor as Special1GameInputProcessor
import Org.Allbinary.Game.Layer.Special.Special3GameInputProcessor as Special3GameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialAnalogDownGameInputProcessor as SpecialAnalogDownGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialAnalogLeftGameInputProcessor as SpecialAnalogLeftGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialAnalogLeftTriggerGameInputProcessor as SpecialAnalogLeftTriggerGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialAnalogRightGameInputProcessor as SpecialAnalogRightGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialAnalogRightTriggerGameInputProcessor as SpecialAnalogRightTriggerGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialAnalogUpGameInputProcessor as SpecialAnalogUpGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialDownGameInputProcessor as SpecialDownGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialLeftGameInputProcessor as SpecialLeftGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialRightGameInputProcessor as SpecialRightGameInputProcessor
import Org.Allbinary.Game.Layer.Special.SpecialUpGameInputProcessor as SpecialUpGameInputProcessor


jclass : String
jclass =
    "AnalogInputBuilder"


jchain : List String
jchain =
    [ "AnalogInputBuilder" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "disable_2", jm_disable_2 )
        , ( "enable_2", jm_enable_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnalogInputBuilder"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_disable_2", jm_disable_2 ), ( "jm_enable_2", jm_enable_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AnalogInputBuilder" jclinit "instance"
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_disable_2 : JR.Method
jm_disable_2 jheap jthis jargs =
    JR.method [ ( "inputProcessorArray", "" ), ( "collidableDestroyableDamageableLayer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN68826 -> JR.andThen Canvas.jstatic_UP (\jiN68826 -> (JR.aset (JR.lit jaN68826) (JR.lit jiN68826) (JR.new SpecialUpGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN68890 -> JR.andThen Canvas.jstatic_DOWN (\jiN68890 -> (JR.aset (JR.lit jaN68890) (JR.lit jiN68890) (JR.new SpecialDownGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN68950 -> JR.andThen Canvas.jstatic_RIGHT (\jiN68950 -> (JR.aset (JR.lit jaN68950) (JR.lit jiN68950) (JR.new SpecialRightGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69010 -> JR.andThen Canvas.jstatic_LEFT (\jiN69010 -> (JR.aset (JR.lit jaN69010) (JR.lit jiN69010) (JR.new SpecialLeftGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69070 -> JR.andThen Canvas.jstatic_KEY_NUM0 (\jiN69070 -> (JR.aset (JR.lit jaN69070) (JR.lit jiN69070) (JR.new Special1GameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69134 -> JR.andThen Canvas.jstatic_KEY_NUM5 (\jiN69134 -> (JR.aset (JR.lit jaN69134) (JR.lit jiN69134) (JR.new Special3GameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))) ])
        (jregister jheap)
        jthis
        jargs


jm_enable_2 : JR.Method
jm_enable_2 jheap jthis jargs =
    JR.method [ ( "inputProcessorArray", "" ), ( "collidableDestroyableDamageableLayer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69275 -> JR.andThen Canvas.jstatic_UP (\jiN69275 -> (JR.aset (JR.lit jaN69275) (JR.lit jiN69275) (JR.new SpecialAnalogUpGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69335 -> JR.andThen Canvas.jstatic_DOWN (\jiN69335 -> (JR.aset (JR.lit jaN69335) (JR.lit jiN69335) (JR.new SpecialAnalogDownGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69395 -> JR.andThen Canvas.jstatic_RIGHT (\jiN69395 -> (JR.aset (JR.lit jaN69395) (JR.lit jiN69395) (JR.new SpecialAnalogRightGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69455 -> JR.andThen Canvas.jstatic_LEFT (\jiN69455 -> (JR.aset (JR.lit jaN69455) (JR.lit jiN69455) (JR.new SpecialAnalogLeftGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69515 -> JR.andThen Canvas.jstatic_KEY_NUM0 (\jiN69515 -> (JR.aset (JR.lit jaN69515) (JR.lit jiN69515) (JR.new SpecialAnalogLeftTriggerGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))), 
                    JR.exec (JR.andThen (JR.local "inputProcessorArray") (\jaN69579 -> JR.andThen Canvas.jstatic_KEY_NUM5 (\jiN69579 -> (JR.aset (JR.lit jaN69579) (JR.lit jiN69579) (JR.new SpecialAnalogRightTriggerGameInputProcessor.jnew_1 [ (JR.local "collidableDestroyableDamageableLayer") ]))))) ])
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

