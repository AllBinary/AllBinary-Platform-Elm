module Org.Allbinary.Input.Motion.Button.CurrentlyPressedTouchButtonSingletonDebug exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Input.Motion.Button.CurrentlyPressedTouchButtonSingleton as CurrentlyPressedTouchButtonSingleton
import Org.Allbinary.Graphics.GPoint as GPoint
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "CurrentlyPressedTouchButtonSingletonDebug"


jchain : List String
jchain =
    [ "CurrentlyPressedTouchButtonSingletonDebug" ]
        ++ CurrentlyPressedTouchButtonSingleton.jchain


jfields : List ( String, JR.JValue )
jfields =
    CurrentlyPressedTouchButtonSingleton.jfields ++ [ ( "string", JR.defaultOf "" ), ( "listString", JR.defaultOf "" ), ( "appendText", JR.defaultOf "" ), ( "PRESSED_AND_FIRED", JR.defaultOf "" ), ( "PRESSED_AND_NOT_FIRED", JR.defaultOf "" ), ( "ASSOCIATED_RELEASED_AND_FIRED", JR.defaultOf "" ), ( "RELEASED_AND_FIRED", JR.defaultOf "" ), ( "RELEASED_AND_FIRED_2", JR.defaultOf "" ), ( "RELEASED_AND_NOT_FIRED", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "appendTouchButtonInput_2", jm_appendTouchButtonInput_2 )
        , ( "append_1", jm_append_1 )
        , ( "clearLog_2", jm_clearLog_2 )
        , ( "releaseAndNotFired_0", jm_releaseAndNotFired_0 )
        , ( "releaseAndFired_1", jm_releaseAndFired_1 )
        , ( "releaseAndFired2_1", jm_releaseAndFired2_1 )
        , ( "releaseAndFiredAssociated_1", jm_releaseAndFiredAssociated_1 )
        , ( "pressedAndFired_1", jm_pressedAndFired_1 )
        , ( "pressedAndNotFired_1", jm_pressedAndNotFired_1 )
        , ( "removeAt_1", jm_removeAt_1 )
        , ( "remove_1", jm_remove_1 )
        , ( "add_1", jm_add_1 )
        , ( "toString_0", jm_toString_0 ) ]
        CurrentlyPressedTouchButtonSingleton.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CurrentlyPressedTouchButtonSingletonDebug"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_appendTouchButtonInput_2", jm_appendTouchButtonInput_2 ), ( "jm_append_1", jm_append_1 ), ( "jm_clearLog_2", jm_clearLog_2 ), ( "jm_releaseAndNotFired_0", jm_releaseAndNotFired_0 ), ( "jm_releaseAndFired_1", jm_releaseAndFired_1 ), ( "jm_releaseAndFired2_1", jm_releaseAndFired2_1 ), ( "jm_releaseAndFiredAssociated_1", jm_releaseAndFiredAssociated_1 ), ( "jm_pressedAndFired_1", jm_pressedAndFired_1 ), ( "jm_pressedAndNotFired_1", jm_pressedAndNotFired_1 ), ( "jm_removeAt_1", jm_removeAt_1 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "CurrentlyPressedTouchButtonSingletonDebug" jclinit "instanceC"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CurrentlyPressedTouchButtonSingleton.jinit_0 JR.this []),
            JR.exec (JR.setField "string" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "listString" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "appendText" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "PRESSED_AND_FIRED" "" JR.this (JR.str "pressed & fired")),
                JR.exec (JR.setField "PRESSED_AND_NOT_FIRED" "" JR.this (JR.str "pressed in button but not fired")),
                JR.exec (JR.setField "ASSOCIATED_RELEASED_AND_FIRED" "" JR.this (JR.str "assoc. rel & fired")),
                JR.exec (JR.setField "RELEASED_AND_FIRED" "" JR.this (JR.str "rel & fired 1")),
                JR.exec (JR.setField "RELEASED_AND_FIRED_2" "" JR.this (JR.str "rel & fired 2")),
                JR.exec (JR.setField "RELEASED_AND_NOT_FIRED" "" JR.this (JR.str "rel & not fired")),
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
                    JR.return jstatic_instanceC ])
        (jregister jheap)
        jthis
        jargs


jm_appendTouchButtonInput_2 : JR.Method
jm_appendTouchButtonInput_2 jheap jthis jargs =
    JR.method [ ( "append", "" ), ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "touchButtonInput") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "append") ]), 
                    JR.exec (JR.setField "appendText" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "listString") ]) [ (JR.thisField "appendText") ]) [])) ])
        (jregister jheap)
        jthis
        jargs


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "append", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "appendText" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "appendText") ]) [ (JR.local "append") ]) [])), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "listString") ]) [ (JR.thisField "appendText") ]) [])) ])
        (jregister jheap)
        jthis
        jargs


jm_clearLog_2 : JR.Method
jm_clearLog_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "appendText" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.callStatic GPoint.jm_toStringStatic_3 [ (JR.local "x"), (JR.local "y"), (JR.int 0) ]) ]) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "listString") ]) [ (JR.thisField "appendText") ]) [])) ])
        (jregister jheap)
        jthis
        jargs


jm_releaseAndNotFired_0 : JR.Method
jm_releaseAndNotFired_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" JR.this [ (JR.thisField "RELEASED_AND_NOT_FIRED") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_releaseAndFired_1 : JR.Method
jm_releaseAndFired_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "appendTouchButtonInput_2" JR.this [ (JR.thisField "RELEASED_AND_FIRED"), (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_releaseAndFired2_1 : JR.Method
jm_releaseAndFired2_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "appendTouchButtonInput_2" JR.this [ (JR.thisField "RELEASED_AND_FIRED_2"), (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_releaseAndFiredAssociated_1 : JR.Method
jm_releaseAndFiredAssociated_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "appendTouchButtonInput_2" JR.this [ (JR.thisField "ASSOCIATED_RELEASED_AND_FIRED"), (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_pressedAndFired_1 : JR.Method
jm_pressedAndFired_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "appendTouchButtonInput_2" JR.this [ (JR.thisField "PRESSED_AND_FIRED"), (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_pressedAndNotFired_1 : JR.Method
jm_pressedAndNotFired_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "appendTouchButtonInput_2" JR.this [ (JR.thisField "PRESSED_AND_NOT_FIRED"), (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAt_1 : JR.Method
jm_removeAt_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "touchButtonInput" "" (JR.callVia CurrentlyPressedTouchButtonSingleton.jvtable "removeAt_1" JR.this [ (JR.local "index") ]), 
                    JR.exec (JR.setField "listString" "" JR.this (JR.invoke "toString_0" (JR.thisField "list") [])), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "listString") ]) [ (JR.thisField "appendText") ]) [])), 
                    JR.return (JR.local "touchButtonInput") ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "isRemoved" "Z" (JR.callVia CurrentlyPressedTouchButtonSingleton.jvtable "remove_1" JR.this [ (JR.local "touchButtonInput") ]), 
                    JR.exec (JR.setField "listString" "" JR.this (JR.invoke "toString_0" (JR.thisField "list") [])), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "listString") ]) [ (JR.thisField "appendText") ]) [])), 
                    JR.return (JR.local "isRemoved") ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CurrentlyPressedTouchButtonSingleton.jvtable "add_1" JR.this [ (JR.local "touchButtonInput") ]), 
                    JR.exec (JR.setField "listString" "" JR.this (JR.invoke "toString_0" (JR.thisField "list") [])), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "listString") ]) [ (JR.thisField "appendText") ]) [])) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "string") ])
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

