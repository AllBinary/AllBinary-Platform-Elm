module Org.Allbinary.Canvas.FullScreenUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory


jclass : String
jclass =
    "FullScreenUtil"


jchain : List String
jchain =
    [ "FullScreenUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "initOnRun_2", jm_initOnRun_2 )
        , ( "init_1", jm_init_1 )
        , ( "isScreenChange_1", jm_isScreenChange_1 )
        , ( "isScreenChangeCanvas_1", jm_isScreenChangeCanvas_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FullScreenUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_initOnRun_2", jm_initOnRun_2 ), ( "jm_init_1", jm_init_1 ), ( "jm_isScreenChange_1", jm_isScreenChange_1 ), ( "jm_isScreenChangeCanvas_1", jm_isScreenChangeCanvas_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FullScreenUtil" jclinit "instance"
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


jm_initOnRun_2 : JR.Method
jm_initOnRun_2 jheap jthis jargs =
    JR.method [ ( "fullScreenInterface", "" ), ( "commandListener", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "commandListener") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "init_1" JR.this [ (JR.local "fullScreenInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "fullScreenInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isScreenChange_1 : JR.Method
jm_isScreenChange_1 jheap jthis jargs =
    JR.method [ ( "isFullScreen", "Z" ) ] "Z"
        (JR.run [ 
                    JR.declare "mainFeatureFactory" "" (JR.callStatic MainFeatureFactory.jm_getInstance_0 []), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "FULL_SCREEN" (JR.local "mainFeatureFactory")) ]) (JR.local "isFullScreen")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isScreenChangeCanvas_1 : JR.Method
jm_isScreenChangeCanvas_1 jheap jthis jargs =
    JR.method [ ( "fullScreenInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isScreenChange_1" JR.this [ (JR.bool False) ]) ])
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

