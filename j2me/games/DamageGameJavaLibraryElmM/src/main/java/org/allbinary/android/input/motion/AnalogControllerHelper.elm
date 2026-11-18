module Org.Allbinary.Android.Input.Motion.AnalogControllerHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.android.input.motion
-}

import JR
import Org.Allbinary.Android.Input.Motion.AnalogControllerConfigurationFactory as AnalogControllerConfigurationFactory
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "AnalogControllerHelper"


jchain : List String
jchain =
    [ "AnalogControllerHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "reduceTimeFactor", JR.defaultOf "I" ), ( "SCALE_VALUE", JR.defaultOf "I" ), ( "rightTimeElapsedHelper", JR.defaultOf "" ), ( "leftTimeElapsedHelper", JR.defaultOf "" ), ( "downTimeElapsedHelper", JR.defaultOf "" ), ( "upTimeElapsedHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "right_2", jm_right_2 )
        , ( "left_2", jm_left_2 )
        , ( "up_2", jm_up_2 )
        , ( "down_2", jm_down_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnalogControllerHelper"
        [ ( "jm_right_2", jm_right_2 ), ( "jm_left_2", jm_left_2 ), ( "jm_up_2", jm_up_2 ), ( "jm_down_2", jm_down_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "reduceTimeFactor", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "SCALE_VALUE" "I" JR.this (JR.field "SCALE_VALUE" (JR.callStatic AnalogControllerConfigurationFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "rightTimeElapsedHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "leftTimeElapsedHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "downTimeElapsedHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "upTimeElapsedHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "reduceTimeFactor" "I" JR.this (JR.local "reduceTimeFactor")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_right_2 : JR.Method
jm_right_2 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ), ( "xAnalogValue", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "rightTimeElapsedHelper") (\jtN68989 -> (JR.setField "delay" "I" (JR.lit jtN68989) ((JR.map2 JR.shr ((JR.map2 JR.sub (JR.thisField "SCALE_VALUE") (JR.local "xAnalogValue"))) (JR.thisField "reduceTimeFactor")))))), 
                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "rightTimeElapsedHelper") []) (JR.run [ 
                        JR.exec (JR.invoke "right_0" (JR.local "collidableDestroyableDamageableLayer") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_left_2 : JR.Method
jm_left_2 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ), ( "xAnalogValue", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "leftTimeElapsedHelper") (\jtN69184 -> (JR.setField "delay" "I" (JR.lit jtN69184) ((JR.map2 JR.shr ((JR.map2 JR.add (JR.thisField "SCALE_VALUE") (JR.local "xAnalogValue"))) (JR.thisField "reduceTimeFactor")))))), 
                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "leftTimeElapsedHelper") []) (JR.run [ 
                        JR.exec (JR.invoke "left_0" (JR.local "collidableDestroyableDamageableLayer") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_up_2 : JR.Method
jm_up_2 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ), ( "xAnalogValue", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "upTimeElapsedHelper") (\jtN69379 -> (JR.setField "delay" "I" (JR.lit jtN69379) ((JR.map2 JR.shr ((JR.map2 JR.sub (JR.thisField "SCALE_VALUE") (JR.local "xAnalogValue"))) (JR.thisField "reduceTimeFactor")))))), 
                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "upTimeElapsedHelper") []) (JR.run [ 
                        JR.exec (JR.invoke "up_0" (JR.local "collidableDestroyableDamageableLayer") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_down_2 : JR.Method
jm_down_2 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ), ( "xAnalogValue", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "downTimeElapsedHelper") (\jtN69574 -> (JR.setField "delay" "I" (JR.lit jtN69574) ((JR.map2 JR.shr ((JR.map2 JR.add (JR.thisField "SCALE_VALUE") (JR.local "xAnalogValue"))) (JR.thisField "reduceTimeFactor")))))), 
                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "downTimeElapsedHelper") []) (JR.run [ 
                        JR.exec (JR.invoke "down_0" (JR.local "collidableDestroyableDamageableLayer") []) ]) identity ])
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

