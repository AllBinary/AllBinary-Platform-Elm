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
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_UP) (\jaN66210 -> JR.andThen (JR.int 0) (\jiN66210 -> (JR.aset (JR.lit jaN66210) (JR.lit jiN66210) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_UP) (\jaN66278 -> JR.andThen (JR.int 1) (\jiN66278 -> (JR.aset (JR.lit jaN66278) (JR.lit jiN66278) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_DOWN) (\jaN66346 -> JR.andThen (JR.int 0) (\jiN66346 -> (JR.aset (JR.lit jaN66346) (JR.lit jiN66346) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_DOWN) (\jaN66414 -> JR.andThen (JR.int 1) (\jiN66414 -> (JR.aset (JR.lit jaN66414) (JR.lit jiN66414) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 14) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_LEFT) (\jaN66482 -> JR.andThen (JR.int 0) (\jiN66482 -> (JR.aset (JR.lit jaN66482) (JR.lit jiN66482) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 14) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_LEFT) (\jaN66550 -> JR.andThen (JR.int 1) (\jiN66550 -> (JR.aset (JR.lit jaN66550) (JR.lit jiN66550) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 18) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_RIGHT) (\jaN66618 -> JR.andThen (JR.int 0) (\jiN66618 -> (JR.aset (JR.lit jaN66618) (JR.lit jiN66618) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 18) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_RIGHT) (\jaN66686 -> JR.andThen (JR.int 1) (\jiN66686 -> (JR.aset (JR.lit jaN66686) (JR.lit jiN66686) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 22) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM7) (\jaN66754 -> JR.andThen (JR.int 0) (\jiN66754 -> (JR.aset (JR.lit jaN66754) (JR.lit jiN66754) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 22) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM7) (\jaN66822 -> JR.andThen (JR.int 1) (\jiN66822 -> (JR.aset (JR.lit jaN66822) (JR.lit jiN66822) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 26) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM9) (\jaN66890 -> JR.andThen (JR.int 0) (\jiN66890 -> (JR.aset (JR.lit jaN66890) (JR.lit jiN66890) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 26) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM9) (\jaN66958 -> JR.andThen (JR.int 1) (\jiN66958 -> (JR.aset (JR.lit jaN66958) (JR.lit jiN66958) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 30) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM1) (\jaN67026 -> JR.andThen (JR.int 0) (\jiN67026 -> (JR.aset (JR.lit jaN67026) (JR.lit jiN67026) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 30) ]))))), 
                    JR.exec (JR.andThen (JR.aget (JR.local "likelyhoodIntegerArray") Canvas.jstatic_KEY_NUM1) (\jaN67094 -> JR.andThen (JR.int 1) (\jiN67094 -> (JR.aset (JR.lit jaN67094) (JR.lit jiN67094) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 40) ]))))), 
                    JR.declare "repeatLikelyhoodIntegerArray" "" (JR.newArray "" [ (JR.plus Canvas.jstatic_KEY_NUM9 (JR.int 1)) ]), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67245 -> JR.andThen Canvas.jstatic_UP (\jiN67245 -> (JR.aset (JR.lit jaN67245) (JR.lit jiN67245) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67305 -> JR.andThen Canvas.jstatic_DOWN (\jiN67305 -> (JR.aset (JR.lit jaN67305) (JR.lit jiN67305) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67365 -> JR.andThen Canvas.jstatic_LEFT (\jiN67365 -> (JR.aset (JR.lit jaN67365) (JR.lit jiN67365) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67425 -> JR.andThen Canvas.jstatic_RIGHT (\jiN67425 -> (JR.aset (JR.lit jaN67425) (JR.lit jiN67425) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67485 -> JR.andThen Canvas.jstatic_KEY_NUM7 (\jiN67485 -> (JR.aset (JR.lit jaN67485) (JR.lit jiN67485) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67545 -> JR.andThen Canvas.jstatic_KEY_NUM9 (\jiN67545 -> (JR.aset (JR.lit jaN67545) (JR.lit jiN67545) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 0) ]))))), 
                    JR.exec (JR.andThen (JR.local "repeatLikelyhoodIntegerArray") (\jaN67605 -> JR.andThen Canvas.jstatic_KEY_NUM1 (\jiN67605 -> (JR.aset (JR.lit jaN67605) (JR.lit jiN67605) (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.int 10) ]))))), 
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

