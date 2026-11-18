module Org.Allbinary.Midlet.AllBinaryMidlet exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.midlet
-}

import JR
import Javax.Microedition.Lcdui.CommandListener as CommandListener
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Javax.Microedition.Lcdui.Display as Display
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Javax.Microedition.Midlet.MIDlet as MIDlet
import Org.Allbinary.System.Memory as Memory
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "AllBinaryMidlet"


jchain : List String
jchain =
    [ "AllBinaryMidlet" ]
        ++ MIDlet.jchain
        ++ CommandListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    MIDlet.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "SET_DISPLAY", JR.defaultOf "" ), ( "SETTING_", JR.defaultOf "" ), ( "_DISPLAY_", JR.defaultOf "" ), ( "SETTING_NO_TITLE", JR.defaultOf "" ), ( "hashtable", JR.defaultOf "" ), ( "midletDestroyed", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "setDisplay_1", jm_setDisplay_1 )
        , ( "getDisplay_0", jm_getDisplay_0 )
        , ( "getCurrentDisplayable_0", jm_getCurrentDisplayable_0 )
        , ( "setDestroyed_1", jm_setDestroyed_1 )
        , ( "isDestroyed_0", jm_isDestroyed_0 )
        , ( "startApp_0", jm_startApp_0 )
        , ( "pauseApp_0", jm_pauseApp_0 )
        , ( "destroyAppInRunnable_2", jm_destroyAppInRunnable_2 )
        , ( "destroyApp_1", jm_destroyApp_1 )
        , ( "setStartStateHashtable_1", jm_setStartStateHashtable_1 )
        , ( "getStartStateHashtable_0", jm_getStartStateHashtable_0 )
        , ( "getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 )
        , ( "commandAction_2", jm_commandAction_2 ) ]
        MIDlet.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryMidlet"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_setDisplay_1", jm_setDisplay_1 ), ( "jm_getDisplay_0", jm_getDisplay_0 ), ( "jm_getCurrentDisplayable_0", jm_getCurrentDisplayable_0 ), ( "jm_setDestroyed_1", jm_setDestroyed_1 ), ( "jm_isDestroyed_0", jm_isDestroyed_0 ), ( "jm_startApp_0", jm_startApp_0 ), ( "jm_pauseApp_0", jm_pauseApp_0 ), ( "jm_destroyAppInRunnable_2", jm_destroyAppInRunnable_2 ), ( "jm_destroyApp_1", jm_destroyApp_1 ), ( "jm_setStartStateHashtable_1", jm_setStartStateHashtable_1 ), ( "jm_getStartStateHashtable_0", jm_getStartStateHashtable_0 ), ( "jm_getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 ), ( "jm_commandAction_2", jm_commandAction_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_ALLBINARY_MIDLET", jstatic_NULL_ALLBINARY_MIDLET ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ALLBINARY_MIDLET : JR.M
jstatic_NULL_ALLBINARY_MIDLET s =
    JR.static "AllBinaryMidlet" jclinit "NULL_ALLBINARY_MIDLET"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect MIDlet.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "SET_DISPLAY" "" JR.this (JR.str "setDisplay")),
                JR.exec (JR.setField "SETTING_" "" JR.this (JR.str "Setting: ")),
                JR.exec (JR.setField "_DISPLAY_" "" JR.this (JR.str " Display: ")),
                JR.exec (JR.setField "SETTING_NO_TITLE" "" JR.this (JR.str "Setting: No Title, Display: ")),
                JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")), JR.this, (JR.str "AllBinaryMidlet::AllBinaryMidlet") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_ALLBINARY_MIDLET (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "AllBinaryMidlet.NULL_ALLBINARY_MIDLET" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_NULL_ALLBINARY_MIDLET ])
        (jregister jheap)
        jthis
        jargs


jm_setDisplay_1 : JR.Method
jm_setDisplay_1 jheap jthis jargs =
    JR.method [ ( "newDisplay", "" ) ] ""
        (JR.run [ 
                    JR.declare "title" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "newDisplay") NullCanvas.jstatic_NULL_CANVAS) (JR.run [ 
                        JR.exec (JR.setLocal "title" "" (JR.invoke "getTitle_0" (JR.local "newDisplay") [])), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "SETTING_") ]) [ (JR.local "title") ]) [ (JR.thisField "_DISPLAY_") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "newDisplay") ]) ]) []), JR.this, (JR.thisField "SET_DISPLAY") ]) ]) identity, 
                    JR.declare "display" "" (JR.invoke "getDisplay_0" JR.this []), 
                    JR.exec (JR.invoke "setCurrent_1" (JR.local "display") [ (JR.local "newDisplay") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDisplay_0 : JR.Method
jm_getDisplay_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic Display.jm_getDisplay_1 [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentDisplayable_0 : JR.Method
jm_getCurrentDisplayable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getCurrent_0" (JR.callStatic Display.jm_getDisplay_1 [ JR.this ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setDestroyed_1 : JR.Method
jm_setDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "midletDestroyed" "Z" JR.this (JR.local "destroyed")) ])
        (jregister jheap)
        jthis
        jargs


jm_isDestroyed_0 : JR.Method
jm_isDestroyed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "midletDestroyed") ])
        (jregister jheap)
        jthis
        jargs


jm_startApp_0 : JR.Method
jm_startApp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_pauseApp_0 : JR.Method
jm_pauseApp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_destroyAppInRunnable_2 : JR.Method
jm_destroyAppInRunnable_2 jheap jthis jargs =
    JR.method [ ( "unconditional", "Z" ), ( "isProgress", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_destroyApp_1 : JR.Method
jm_destroyApp_1 jheap jthis jargs =
    JR.method [ ( "unconditional", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "METHOD_NAME" "" (JR.str "AllBinaryMidlet::destroyApp"), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.callStatic Memory.jm_getInfo_0 []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.invoke "setDestroyed_1" JR.this [ (JR.bool True) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.local "METHOD_NAME"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_setStartStateHashtable_1 : JR.Method
jm_setStartStateHashtable_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]) ]) []), JR.this, (JR.str "setStartStateHashtable") ]), 
                    JR.exec (JR.setField "hashtable" "" JR.this (JR.local "hashtable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getStartStateHashtable_0 : JR.Method
jm_getStartStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.thisField "hashtable") ]) ]) []), JR.this, (JR.str "getStartStateHashtable") ]), 
                    JR.return (JR.thisField "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentStateHashtable_0 : JR.Method
jm_getCurrentStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "getStateHashtable") ]), 
                    JR.return (JR.field "NULL_TABLE" (JR.callStatic StdUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_commandAction_2 : JR.Method
jm_commandAction_2 jheap jthis jargs =
    JR.method [ ( "command", "" ), ( "displayable", "" ) ] ""
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

