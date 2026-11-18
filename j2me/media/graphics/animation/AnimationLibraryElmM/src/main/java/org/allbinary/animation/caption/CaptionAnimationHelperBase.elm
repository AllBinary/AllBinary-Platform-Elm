module Org.Allbinary.Animation.Caption.CaptionAnimationHelperBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.caption
-}

import JR
import Org.Allbinary.Animation.Animation as Animation


jclass : String
jclass =
    "CaptionAnimationHelperBase"


jchain : List String
jchain =
    [ "CaptionAnimationHelperBase" ]
        ++ Animation.jchain


jfields : List ( String, JR.JValue )
jfields =
    Animation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isShowing_0", jm_isShowing_0 )
        , ( "tick_0", jm_tick_0 )
        , ( "update_2", jm_update_2 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        Animation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CaptionAnimationHelperBase"
        [ ( "jm_isShowing_0", jm_isShowing_0 ), ( "jm_tick_0", jm_tick_0 ), ( "jm_update_2", jm_update_2 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_INSTANCE", jstatic_INSTANCE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INSTANCE : JR.M
jstatic_INSTANCE s =
    JR.static "CaptionAnimationHelperBase" jclinit "INSTANCE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Animation.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isShowing_0 : JR.Method
jm_isShowing_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_tick_0 : JR.Method
jm_tick_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_2 : JR.Method
jm_update_2 jheap jthis jargs =
    JR.method [ ( "message", "" ), ( "basicColor", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        identity
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

