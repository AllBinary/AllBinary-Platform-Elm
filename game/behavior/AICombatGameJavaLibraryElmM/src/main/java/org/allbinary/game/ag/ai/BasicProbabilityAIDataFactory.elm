module Org.Allbinary.Game.Ag.Ai.BasicProbabilityAIDataFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Ag.Ai.InputProbability as InputProbability
import Org.Allbinary.Time.NoTimeDelayHelper as NoTimeDelayHelper
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "BasicProbabilityAIDataFactory"


jchain : List String
jchain =
    [ "BasicProbabilityAIDataFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicProbabilityAIDataFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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
                    JR.declare "likelyhoodIntegerArray" "" (JR.newArray "" [ (JR.plus Canvas.jstatic_KEY_NUM9 (JR.int 1)), (JR.int 2) ]), 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_UP) (\jaN66216 -> JR.andThen (JR.int 0) (\jiN66216 -> (JR.aset (JR.lit jaN66216) (JR.lit jiN66216) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_UP) (\jaN66284 -> JR.andThen (JR.int 1) (\jiN66284 -> (JR.aset (JR.lit jaN66284) (JR.lit jiN66284) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_DOWN) (\jaN66352 -> JR.andThen (JR.int 0) (\jiN66352 -> (JR.aset (JR.lit jaN66352) (JR.lit jiN66352) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_DOWN) (\jaN66420 -> JR.andThen (JR.int 1) (\jiN66420 -> (JR.aset (JR.lit jaN66420) (JR.lit jiN66420) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 14) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_LEFT) (\jaN66488 -> JR.andThen (JR.int 0) (\jiN66488 -> (JR.aset (JR.lit jaN66488) (JR.lit jiN66488) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 14) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_LEFT) (\jaN66556 -> JR.andThen (JR.int 1) (\jiN66556 -> (JR.aset (JR.lit jaN66556) (JR.lit jiN66556) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 18) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_RIGHT) (\jaN66624 -> JR.andThen (JR.int 0) (\jiN66624 -> (JR.aset (JR.lit jaN66624) (JR.lit jiN66624) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 18) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_RIGHT) (\jaN66692 -> JR.andThen (JR.int 1) (\jiN66692 -> (JR.aset (JR.lit jaN66692) (JR.lit jiN66692) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 22) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM7) (\jaN66760 -> JR.andThen (JR.int 0) (\jiN66760 -> (JR.aset (JR.lit jaN66760) (JR.lit jiN66760) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 22) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM7) (\jaN66828 -> JR.andThen (JR.int 1) (\jiN66828 -> (JR.aset (JR.lit jaN66828) (JR.lit jiN66828) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 26) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM9) (\jaN66896 -> JR.andThen (JR.int 0) (\jiN66896 -> (JR.aset (JR.lit jaN66896) (JR.lit jiN66896) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 26) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM9) (\jaN66964 -> JR.andThen (JR.int 1) (\jiN66964 -> (JR.aset (JR.lit jaN66964) (JR.lit jiN66964) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 30) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM1) (\jaN67032 -> JR.andThen (JR.int 0) (\jiN67032 -> (JR.aset (JR.lit jaN67032) (JR.lit jiN67032) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 30) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM1) (\jaN67100 -> JR.andThen (JR.int 1) (\jiN67100 -> (JR.aset (JR.lit jaN67100) (JR.lit jiN67100) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 40) ]))))), 
                    JR.declare "repeatLikelyhoodIntegerArray" "" (JR.newArray "" [ (JR.plus Canvas.jstatic_KEY_NUM9 (JR.int 1)) ]), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67251 -> JR.andThen Canvas.jstatic_UP (\jiN67251 -> (JR.aset (JR.lit jaN67251) (JR.lit jiN67251) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67311 -> JR.andThen Canvas.jstatic_DOWN (\jiN67311 -> (JR.aset (JR.lit jaN67311) (JR.lit jiN67311) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67371 -> JR.andThen Canvas.jstatic_LEFT (\jiN67371 -> (JR.aset (JR.lit jaN67371) (JR.lit jiN67371) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67431 -> JR.andThen Canvas.jstatic_RIGHT (\jiN67431 -> (JR.aset (JR.lit jaN67431) (JR.lit jiN67431) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67491 -> JR.andThen Canvas.jstatic_KEY_NUM7 (\jiN67491 -> (JR.aset (JR.lit jaN67491) (JR.lit jiN67491) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67551 -> JR.andThen Canvas.jstatic_KEY_NUM9 (\jiN67551 -> (JR.aset (JR.lit jaN67551) (JR.lit jiN67551) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67611 -> JR.andThen Canvas.jstatic_KEY_NUM1 (\jiN67611 -> (JR.aset (JR.lit jaN67611) (JR.lit jiN67611) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]))))), 
                    JR.declare "inputProbability" "" (JR.new InputProbability.jnew_4 [ (JR.local "likelyhoodIntegerArray"), (JR.local "repeatLikelyhoodIntegerArray"), (JR.int 42), NoTimeDelayHelper.jstatic_SINGLETON ]), 
                    JR.return (JR.invoke "toHashtable_0" (JR.local "inputProbability") []) ])
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

