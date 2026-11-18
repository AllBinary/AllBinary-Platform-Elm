module Org.Allbinary.Animation.TimedVectorAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Animation.VectorAnimation as VectorAnimation


jclass : String
jclass =
    "TimedVectorAnimation"


jchain : List String
jchain =
    [ "TimedVectorAnimation" ]
        ++ VectorAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    VectorAnimation.jfields ++ [ ( "timeElapsedHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 ) ]
        VectorAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TimedVectorAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "currentPoints", "" ), ( "basicColor", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect VectorAnimation.jinit_3 JR.this [ (JR.local "currentPoints"), (JR.local "basicColor"), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "timeElapsedHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 200) ])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeElapsedHelper") [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.callVia VectorAnimation.jvtable "nextFrame_0" JR.this []) ]) identity ])
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

