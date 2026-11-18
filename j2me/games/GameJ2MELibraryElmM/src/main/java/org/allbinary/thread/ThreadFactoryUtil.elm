module Org.Allbinary.Thread.ThreadFactoryUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.AllBinaryGameCanvas as AllBinaryGameCanvas
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Displayable.Canvas.DemoCanvas as DemoCanvas
import Org.Allbinary.J2MEUtil as J2MEUtil
import JThread
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Thread.PrimaryThreadPool as PrimaryThreadPool
import Org.Allbinary.Game.Displayable.Canvas.RunnableCanvasSingleThreadStartRunnable as RunnableCanvasSingleThreadStartRunnable
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ThreadFactoryUtil"


jchain : List String
jchain =
    [ "ThreadFactoryUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceGameCanvasRunnable_1", jm_getInstanceGameCanvasRunnable_1 )
        , ( "getInstanceForRunnable_1", jm_getInstanceForRunnable_1 )
        , ( "getInstanceType_2", jm_getInstanceType_2 )
        , ( "start_1", jm_start_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ThreadFactoryUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceGameCanvasRunnable_1", jm_getInstanceGameCanvasRunnable_1 ), ( "jm_getInstanceForRunnable_1", jm_getInstanceForRunnable_1 ), ( "jm_getInstanceType_2", jm_getInstanceType_2 ), ( "jm_start_1", jm_start_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ThreadFactoryUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
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


jm_getInstanceGameCanvasRunnable_1 : JR.Method
jm_getInstanceGameCanvasRunnable_1 jheap jthis jargs =
    JR.method [ ( "runnable", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstanceType_2" JR.this [ (JR.local "runnable"), (JR.invoke "getType_0" (JR.local "runnable") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForRunnable_1 : JR.Method
jm_getInstanceForRunnable_1 jheap jthis jargs =
    JR.method [ ( "runnable", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstanceType_2" JR.this [ (JR.local "runnable"), (JR.invoke "getType_0" (JR.local "runnable") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceType_2 : JR.Method
jm_getInstanceType_2 jheap jthis jargs =
    JR.method [ ( "runnable", "" ), ( "type", "I" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "type") DemoCanvas.jstatic_TYPE) (JR.map2 JR.equals (JR.local "type") AllBinaryGameCanvas.jstatic_TYPE)) (JR.run [ 
                            JR.declare "demoGameSingleThreadStartRunnable" "" (JR.new RunnableCanvasSingleThreadStartRunnable.jnew_1 [ (JR.local "runnable") ]), 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "runnable") ]) ]) []), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]), 
                            JR.declare "primaryThreadPool" "" (JR.callStatic PrimaryThreadPool.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "runTask_1" (JR.local "primaryThreadPool") [ (JR.local "demoGameSingleThreadStartRunnable") ]) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Using Pseudo Thread for Runnable under PlayN/HTML5: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "runnable") ]) ]) []), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]), 
                            JR.declare "primaryThreadPool" "" (JR.callStatic PrimaryThreadPool.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "runTask_1" (JR.local "primaryThreadPool") [ (JR.local "runnable") ]) ]) ]) identity, 
                    JR.declare "thread" "" (JR.new JThread.jnew_2 [ (JR.local "runnable"), (JR.invoke "toString_0" (JR.local "runnable") []) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "thread") []), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]), 
                    JR.return (JR.local "thread") ])
        (jregister jheap)
        jthis
        jargs


jm_start_1 : JR.Method
jm_start_1 jheap jthis jargs =
    JR.method [ ( "thread", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "start_0" (JR.local "thread") []) ])
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

