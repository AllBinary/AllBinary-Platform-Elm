module Org.Allbinary.Input.Motion.Button.TouchScreenFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.TouchScreenTypesFactory as TouchScreenTypesFactory


jclass : String
jclass =
    "TouchScreenFactory"


jchain : List String
jchain =
    [ "TouchScreenFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "multiTouch", JR.defaultOf "Z" ), ( "touch", JR.defaultOf "Z" ), ( "touchScreenType", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isMultiTouch_0", jm_isMultiTouch_0 )
        , ( "setTouch_1", jm_setTouch_1 )
        , ( "isTouch_0", jm_isTouch_0 )
        , ( "getTouchScreenType_0", jm_getTouchScreenType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchScreenFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isMultiTouch_0", jm_isMultiTouch_0 ), ( "jm_setTouch_1", jm_setTouch_1 ), ( "jm_isTouch_0", jm_isTouch_0 ), ( "jm_getTouchScreenType_0", jm_getTouchScreenType_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "TouchScreenFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "touchScreenType" "" JR.this (JR.field "NOTOUCH" (JR.callStatic TouchScreenTypesFactory.jm_getInstance_0 []))),
                identity,
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_isMultiTouch_0 : JR.Method
jm_isMultiTouch_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "multiTouch") ])
        (jregister jheap)
        jthis
        jargs


jm_setTouch_1 : JR.Method
jm_setTouch_1 jheap jthis jargs =
    JR.method [ ( "touch", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isTouch_0 : JR.Method
jm_isTouch_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "touch") ])
        (jregister jheap)
        jthis
        jargs


jm_getTouchScreenType_0 : JR.Method
jm_getTouchScreenType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "touchScreenType") ])
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

