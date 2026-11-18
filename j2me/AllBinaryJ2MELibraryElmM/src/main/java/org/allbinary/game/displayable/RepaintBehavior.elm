module Org.Allbinary.Game.Displayable.RepaintBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import JThread
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Game.Displayable.RepaintRunnable as RepaintRunnable


jclass : String
jclass =
    "RepaintBehavior"


jchain : List String
jchain =
    [ "RepaintBehavior" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "repaint_1", jm_repaint_1 )
        , ( "onChangeRepaint_1", jm_onChangeRepaint_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RepaintBehavior"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_repaint_1", jm_repaint_1 ), ( "jm_onChangeRepaint_1", jm_onChangeRepaint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "RepaintBehavior" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "RepaintBehavior")),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_repaint_1 : JR.Method
jm_repaint_1 jheap jthis jargs =
    JR.method [ ( "canvas", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onChangeRepaint_1 : JR.Method
jm_onChangeRepaint_1 jheap jthis jargs =
    JR.method [ ( "canvas", "" ) ] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "openGLFeatureFactory" "" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "OPENGL" (JR.local "openGLFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "process_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) []) ]) (JR.run [ 
                        JR.declare "thread" "" (JR.new JThread.jnew_2 [ (JR.new RepaintRunnable.jnew_1 [ (JR.local "canvas") ]), (JR.thisField "NAME") ]), 
                        JR.exec (JR.invoke "start_0" (JR.local "thread") []) ]) ])
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

