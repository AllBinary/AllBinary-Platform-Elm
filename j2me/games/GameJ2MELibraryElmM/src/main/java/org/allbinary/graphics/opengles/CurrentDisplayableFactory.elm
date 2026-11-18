module Org.Allbinary.Graphics.Opengles.CurrentDisplayableFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Displayable.Canvas.GameInputMappingCanvas as GameInputMappingCanvas
import Org.Allbinary.Game.Displayable.Canvas.GameInputMappingInstructionsCanvas as GameInputMappingInstructionsCanvas
import Org.Allbinary.Graphics.GraphicsStrings as GraphicsStrings
import Org.Allbinary.Game.Score.Displayable.HighScoresCanvas as HighScoresCanvas
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Game.Displayable.Canvas.NullDisplayable as NullDisplayable
import Org.Allbinary.Thread.NullRunnable as NullRunnable
import Org.Allbinary.Game.Displayable.Canvas.NullWaitGameRunnable as NullWaitGameRunnable
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Game.Layer.SWTUtil as SWTUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "CurrentDisplayableFactory"


jchain : List String
jchain =
    [ "CurrentDisplayableFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "canvasStrings", JR.defaultOf "" ), ( "stringUtil", JR.defaultOf "" ), ( "SET_DISPLAYABLE", JR.defaultOf "" ), ( "SET_RUNNABLE", JR.defaultOf "" ), ( "CLEAR_RUNNABLE", JR.defaultOf "" ), ( "SET_USED_RUNNABLE", JR.defaultOf "" ), ( "RUNNABLE", JR.defaultOf "" ), ( "RUNNABLE_WAS_ALREADY_IN_USE", JR.defaultOf "" ), ( "DEFAULT_CHILD_NAME_LIST", JR.defaultOf "" ), ( "displayable", JR.defaultOf "" ), ( "openGlReadydisplayable", JR.defaultOf "" ), ( "runnable", JR.defaultOf "" ), ( "usedRunnable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setMyCanvas_1", jm_setMyCanvas_1 )
        , ( "setDisplayable_1", jm_setDisplayable_1 )
        , ( "setOpenGlReadydisplayable_1", jm_setOpenGlReadydisplayable_1 )
        , ( "getOpenGlReadydisplayable_0", jm_getOpenGlReadydisplayable_0 )
        , ( "setRunnable_1", jm_setRunnable_1 )
        , ( "clearRunnable_0", jm_clearRunnable_0 )
        , ( "update_0", jm_update_0 )
        , ( "getDisplayable_0", jm_getDisplayable_0 )
        , ( "getUsedRunnable_0", jm_getUsedRunnable_0 )
        , ( "setUsedRunnable_1", jm_setUsedRunnable_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CurrentDisplayableFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setMyCanvas_1", jm_setMyCanvas_1 ), ( "jm_setDisplayable_1", jm_setDisplayable_1 ), ( "jm_setOpenGlReadydisplayable_1", jm_setOpenGlReadydisplayable_1 ), ( "jm_getOpenGlReadydisplayable_0", jm_getOpenGlReadydisplayable_0 ), ( "jm_setRunnable_1", jm_setRunnable_1 ), ( "jm_clearRunnable_0", jm_clearRunnable_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_getDisplayable_0", jm_getDisplayable_0 ), ( "jm_getUsedRunnable_0", jm_getUsedRunnable_0 ), ( "jm_setUsedRunnable_1", jm_setUsedRunnable_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CurrentDisplayableFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "canvasStrings" "" JR.this (JR.callStatic CanvasStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "stringUtil" "" JR.this (JR.callStatic StringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "SET_DISPLAYABLE" "" JR.this (JR.str "setDisplayable")),
                JR.exec (JR.setField "SET_RUNNABLE" "" JR.this (JR.str "setRunnable")),
                JR.exec (JR.setField "CLEAR_RUNNABLE" "" JR.this (JR.str "clearRunnable")),
                JR.exec (JR.setField "SET_USED_RUNNABLE" "" JR.this (JR.str "setUsedRunnable")),
                JR.exec (JR.setField "RUNNABLE" "" JR.this (JR.str "Runnable: ")),
                JR.exec (JR.setField "RUNNABLE_WAS_ALREADY_IN_USE" "" JR.this (JR.str "Runnable was already in use: ")),
                JR.exec (JR.setField "DEFAULT_CHILD_NAME_LIST" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "displayable" "" JR.this (JR.callStatic NullDisplayable.jm_getInstance_0 [])),
                JR.exec (JR.setField "openGlReadydisplayable" "" JR.this (JR.callStatic NullDisplayable.jm_getInstance_0 [])),
                JR.exec (JR.setField "runnable" "" JR.this (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 [])),
                JR.exec (JR.setField "usedRunnable" "" JR.this (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "DEFAULT_CHILD_NAME_LIST") [ (JR.field "ABOUT" (JR.thisField "canvasStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "DEFAULT_CHILD_NAME_LIST") [ (JR.field "OPTIONS" (JR.thisField "canvasStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "DEFAULT_CHILD_NAME_LIST") [ GameInputMappingCanvas.jstatic_NAME ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "DEFAULT_CHILD_NAME_LIST") [ GameInputMappingInstructionsCanvas.jstatic_NAME ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "DEFAULT_CHILD_NAME_LIST") [ HighScoresCanvas.jstatic_NAME ]) ]) ])
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


jm_setMyCanvas_1 : JR.Method
jm_setMyCanvas_1 jheap jthis jargs =
    JR.method [ ( "displayable", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.instanceOf "MyCanvas" (JR.thisField "displayable")) (JR.run [ 
                        JR.ifElse (JR.invoke "hasChild_1" (JR.local "displayable") [ (JR.thisField "displayable") ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Child Displayable is already set for: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "displayable") ]) ]) []), JR.this, (JR.thisField "SET_DISPLAYABLE") ]), 
                            JR.returnVoid ]) identity ]) identity, 
                    JR.exec (JR.invoke "setDisplayable_1" JR.this [ (JR.local "displayable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setDisplayable_1 : JR.Method
jm_setDisplayable_1 jheap jthis jargs =
    JR.method [ ( "displayable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "displayable" "" JR.this (JR.local "displayable")), 
                    JR.exec (JR.invoke "setOpenGlReadydisplayable_1" JR.this [ (JR.local "displayable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setOpenGlReadydisplayable_1 : JR.Method
jm_setOpenGlReadydisplayable_1 jheap jthis jargs =
    JR.method [ ( "openGlReadydisplayable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "openGlReadydisplayable" "" JR.this (JR.local "openGlReadydisplayable")), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getOpenGlReadydisplayable_0 : JR.Method
jm_getOpenGlReadydisplayable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "openGlReadydisplayable") ])
        (jregister jheap)
        jthis
        jargs


jm_setRunnable_1 : JR.Method
jm_setRunnable_1 jheap jthis jargs =
    JR.method [ ( "runnable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "RUNNABLE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "runnable") ]) ]) []), JR.this, (JR.thisField "SET_RUNNABLE") ]), 
                    JR.exec (JR.setField "runnable" "" JR.this (JR.local "runnable")), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "usedRunnable") (JR.thisField "runnable")) (JR.run [ 
                        JR.exec (JR.invoke "update_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "RUNNABLE_WAS_ALREADY_IN_USE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "runnable") ]) ]) []), JR.this, (JR.thisField "SET_RUNNABLE") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clearRunnable_0 : JR.Method
jm_clearRunnable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "RUNNABLE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.callStatic NullRunnable.jm_getInstance_0 []) ]) ]) []), JR.this, (JR.thisField "CLEAR_RUNNABLE") ]), 
                    JR.exec (JR.invoke "setUsedRunnable_1" JR.this [ (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "openGlReadydisplayable") ]) ]), 
                        JR.ifElse (JR.and SWTUtil.jstatic_isSWT (JR.map JR.not_ (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]))) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ SWTUtil.jstatic_SWT ]) [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.thisField "RUNNABLE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.callStatic NullRunnable.jm_getInstance_0 []) ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "setUsedRunnable_1" JR.this [ (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.field "HTML" (JR.callStatic GraphicsStrings.jm_getInstance_0 [])) ]) [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.thisField "RUNNABLE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "runnable") ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "setUsedRunnable_1" JR.this [ (JR.thisField "runnable") ]) ]) (JR.run [ 
                        JR.ifElse (JR.or (JR.or (JR.instanceOf "DemoCanvas" (JR.thisField "openGlReadydisplayable")) (JR.instanceOf "AllBinaryGameCanvas" (JR.thisField "openGlReadydisplayable"))) (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ])) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.invoke "toString_0" (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) []) ]) [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.thisField "RUNNABLE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "runnable") ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "setUsedRunnable_1" JR.this [ (JR.thisField "runnable") ]) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "RUNNABLE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.callStatic NullRunnable.jm_getInstance_0 []) ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "setUsedRunnable_1" JR.this [ (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 []) ]) ]) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDisplayable_0 : JR.Method
jm_getDisplayable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "displayable") ])
        (jregister jheap)
        jthis
        jargs


jm_getUsedRunnable_0 : JR.Method
jm_getUsedRunnable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "usedRunnable") ])
        (jregister jheap)
        jthis
        jargs


jm_setUsedRunnable_1 : JR.Method
jm_setUsedRunnable_1 jheap jthis jargs =
    JR.method [ ( "usedRunnable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "RUNNABLE") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "runnable") ]) ]) [ (JR.field "COLON_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "usedRunnable") ]) ]) []), JR.this, (JR.thisField "SET_USED_RUNNABLE") ]), 
                    JR.exec (JR.setField "usedRunnable" "" JR.this (JR.local "usedRunnable")) ])
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

