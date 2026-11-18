module Org.Allbinary.Bounds.LayerBounds exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.bounds
-}

import JR
import Org.Allbinary.Bounds.Event.BoundsChangeEventListener as BoundsChangeEventListener
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "LayerBounds"


jchain : List String
jchain =
    [ "LayerBounds" ]
        ++ BoundsChangeEventListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "rectangle", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getRectangleP_0", jm_getRectangleP_0 )
        , ( "visit_1", jm_visit_1 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onBoundsChangeEvent_1", jm_onBoundsChangeEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerBounds"
        [ ( "jm_getRectangleP_0", jm_getRectangleP_0 ), ( "jm_visit_1", jm_visit_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onBoundsChangeEvent_1", jm_onBoundsChangeEvent_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.local "rectangle")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getRectangleP_0 : JR.Method
jm_getRectangleP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "rectangle") ])
        (jregister jheap)
        jthis
        jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "boundsVisitorInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onBoundsChangeEvent_1 : JR.Method
jm_onBoundsChangeEvent_1 jheap jthis jargs =
    JR.method [ ( "boundsChangeEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.invoke "getRectangle_0" (JR.local "boundsChangeEvent") [])) ])
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

