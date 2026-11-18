module Org.Allbinary.Input.Motion.Button.TouchScreenFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Input.Motion.Button.TouchScreenTypesFactory as TouchScreenTypesFactory


jclass : String
jclass =
    "TouchScreenFactory"


jchain : List String
jchain =
    [ "TouchScreenFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "touch", JR.defaultOf "Z" ), ( "multiTouch", JR.defaultOf "Z" ), ( "multiTouchDistinct", JR.defaultOf "Z" ), ( "touchScreenType", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setMultiTouch_1", jm_setMultiTouch_1 )
        , ( "isMultiTouch_0", jm_isMultiTouch_0 )
        , ( "setTouch_1", jm_setTouch_1 )
        , ( "isTouch_0", jm_isTouch_0 )
        , ( "setMultiTouchDistinct_1", jm_setMultiTouchDistinct_1 )
        , ( "isMultiTouchDistinct_0", jm_isMultiTouchDistinct_0 )
        , ( "setTouchScreenType_1", jm_setTouchScreenType_1 )
        , ( "getTouchScreenType_0", jm_getTouchScreenType_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchScreenFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setMultiTouch_1", jm_setMultiTouch_1 ), ( "jm_isMultiTouch_0", jm_isMultiTouch_0 ), ( "jm_setTouch_1", jm_setTouch_1 ), ( "jm_isTouch_0", jm_isTouch_0 ), ( "jm_setMultiTouchDistinct_1", jm_setMultiTouchDistinct_1 ), ( "jm_isMultiTouchDistinct_0", jm_isMultiTouchDistinct_0 ), ( "jm_setTouchScreenType_1", jm_setTouchScreenType_1 ), ( "jm_getTouchScreenType_0", jm_getTouchScreenType_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "touchScreenType" "" JR.this (JR.field "NOTOUCH" (JR.callStatic TouchScreenTypesFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "setTouch_1" JR.this [ (JR.bool True) ]), 
                        JR.exec (JR.invoke "setMultiTouch_1" JR.this [ (JR.bool False) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), jstatic_SINGLETON, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
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


jm_setMultiTouch_1 : JR.Method
jm_setMultiTouch_1 jheap jthis jargs =
    JR.method [ ( "multiTouch", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "multiTouch" "Z" JR.this (JR.local "multiTouch")) ])
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
        (JR.run [ 
                    JR.exec (JR.setField "touch" "Z" JR.this (JR.local "touch")) ])
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


jm_setMultiTouchDistinct_1 : JR.Method
jm_setMultiTouchDistinct_1 jheap jthis jargs =
    JR.method [ ( "multiTouchDistinct", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "multiTouchDistinct" "Z" JR.this (JR.local "multiTouchDistinct")) ])
        (jregister jheap)
        jthis
        jargs


jm_isMultiTouchDistinct_0 : JR.Method
jm_isMultiTouchDistinct_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "multiTouchDistinct") ])
        (jregister jheap)
        jthis
        jargs


jm_setTouchScreenType_1 : JR.Method
jm_setTouchScreenType_1 jheap jthis jargs =
    JR.method [ ( "touchScreenType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "touchScreenType" "" JR.this (JR.local "touchScreenType")) ])
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


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "TouchScreen: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isTouch_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " MultiTouch: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isMultiTouch_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Distinct MultiTouch: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isMultiTouchDistinct_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " TouchScreenType: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getTouchScreenType_0" JR.this []) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

