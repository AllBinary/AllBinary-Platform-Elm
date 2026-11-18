module Org.Allbinary.Graphics.Color.BasicColorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColor as BasicColor
import Org.Allbinary.Graphics.Color.BasicColorUtil as BasicColorUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "BasicColorFactory"


jchain : List String
jchain =
    [ "BasicColorFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NULL_COLOR", JR.defaultOf "" ), ( "TAN", JR.defaultOf "" ), ( "SKIN_PINK", JR.defaultOf "" ), ( "RED", JR.defaultOf "" ), ( "LIGHT_RED", JR.defaultOf "" ), ( "DARK_GREEN", JR.defaultOf "" ), ( "GREEN", JR.defaultOf "" ), ( "LIGHT_GREEN", JR.defaultOf "" ), ( "PURPLE", JR.defaultOf "" ), ( "BLUE", JR.defaultOf "" ), ( "LIGHT_BLUE", JR.defaultOf "" ), ( "VERY_LIGHT_BLUE", JR.defaultOf "" ), ( "PUCE", JR.defaultOf "" ), ( "AQUA", JR.defaultOf "" ), ( "YELLOW", JR.defaultOf "" ), ( "PINK", JR.defaultOf "" ), ( "BLACK", JR.defaultOf "" ), ( "GREY", JR.defaultOf "" ), ( "LIGHT_GREY", JR.defaultOf "" ), ( "DARK_GREY", JR.defaultOf "" ), ( "ORANGE", JR.defaultOf "" ), ( "BROWN", JR.defaultOf "" ), ( "WHITE", JR.defaultOf "" ), ( "TRANSPARENT_COLOR", JR.defaultOf "" ), ( "TRANSPARENT_GREY", JR.defaultOf "" ), ( "TRANSPARENT_BLACK", JR.defaultOf "" ), ( "TRANSPARENT_RED", JR.defaultOf "" ), ( "CLEAR_COLOR", JR.defaultOf "" ), ( "BORDER_COLOR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createInstance_1", jm_createInstance_1 )
        , ( "createInstanceA_2", jm_createInstanceA_2 )
        , ( "createInstanceAN_3", jm_createInstanceAN_3 )
        , ( "createInstanceARGB_5", jm_createInstanceARGB_5 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicColorFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createInstance_1", jm_createInstance_1 ), ( "jm_createInstanceA_2", jm_createInstanceA_2 ), ( "jm_createInstanceAN_3", jm_createInstanceAN_3 ), ( "jm_createInstanceARGB_5", jm_createInstanceARGB_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicColorFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NULL_COLOR" "" JR.this (JR.invoke "createInstanceARGB_5" JR.this [ (JR.int 255), (JR.int 255), (JR.int 255), (JR.int 255), (JR.str "null color") ])),
                JR.exec (JR.setField "TAN" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0xE9D8B5)) ])),
                JR.exec (JR.setField "SKIN_PINK" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0xFDCECE)) ])),
                JR.exec (JR.setField "RED" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0xFF0000)), (JR.str "red") ])),
                JR.exec (JR.setField "LIGHT_RED" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0xFFA0A0)), (JR.str "light red") ])),
                JR.exec (JR.setField "DARK_GREEN" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0x00FF00)) ])),
                JR.exec (JR.setField "GREEN" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0x00DD00)), (JR.str "green") ])),
                JR.exec (JR.setField "LIGHT_GREEN" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0x007700)) ])),
                JR.exec (JR.setField "PURPLE" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0x400040)), (JR.str "purple") ])),
                JR.exec (JR.setField "BLUE" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0x0000FF)), (JR.str "blue") ])),
                JR.exec (JR.setField "LIGHT_BLUE" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0x00aaff)) ])),
                JR.exec (JR.setField "VERY_LIGHT_BLUE" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0x000033)) ])),
                JR.exec (JR.setField "PUCE" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0xFF00AA)) ])),
                JR.exec (JR.setField "AQUA" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0x00FFFF)) ])),
                JR.exec (JR.setField "YELLOW" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0xFFFF00)), (JR.str "yellow") ])),
                JR.exec (JR.setField "PINK" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0xFF00FF)) ])),
                JR.exec (JR.setField "BLACK" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0x000000)), (JR.str "black") ])),
                JR.exec (JR.setField "GREY" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.int (JR.i32 0xAAAAAA)), (JR.str "grey") ])),
                JR.exec (JR.setField "LIGHT_GREY" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0xC0C0C0)) ])),
                JR.exec (JR.setField "DARK_GREY" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0x404040)) ])),
                JR.exec (JR.setField "ORANGE" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0xe07718)) ])),
                JR.exec (JR.setField "BROWN" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0x956B00)) ])),
                JR.exec (JR.setField "WHITE" "" JR.this (JR.invoke "createInstance_1" JR.this [ (JR.int (JR.i32 0xFFFFFF)) ])),
                JR.exec (JR.setField "TRANSPARENT_COLOR" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.int (JR.i32 0x00000000)), (JR.int (JR.i32 0x000000)), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "TRANSPARENT_GREY" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.int (JR.i32 0x52000000)), (JR.int (JR.i32 0xECECEC)), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "TRANSPARENT_BLACK" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.int (JR.i32 0x52000000)), (JR.int (JR.i32 0x000000)), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "TRANSPARENT_RED" "" JR.this (JR.invoke "createInstanceAN_3" JR.this [ (JR.int (JR.i32 0x52000000)), (JR.int (JR.i32 0xFF0000)), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "CLEAR_COLOR" "" JR.this (JR.thisField "BLACK")),
                JR.exec (JR.setField "BORDER_COLOR" "" JR.this (JR.thisField "WHITE")),
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


jm_createInstance_1 : JR.Method
jm_createInstance_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new BasicColor.jnew_3 [ (JR.field "ALPHA" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.local "value"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createInstanceA_2 : JR.Method
jm_createInstanceA_2 jheap jthis jargs =
    JR.method [ ( "alphaValue", "I" ), ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new BasicColor.jnew_3 [ (JR.local "alphaValue"), (JR.local "value"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createInstanceAN_3 : JR.Method
jm_createInstanceAN_3 jheap jthis jargs =
    JR.method [ ( "alphaValue", "I" ), ( "value", "I" ), ( "name", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new BasicColor.jnew_3 [ (JR.local "alphaValue"), (JR.local "value"), (JR.local "name") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createInstanceARGB_5 : JR.Method
jm_createInstanceARGB_5 jheap jthis jargs =
    JR.method [ ( "alphaValue", "I" ), ( "r", "I" ), ( "g", "I" ), ( "b", "I" ), ( "name", "" ) ] ""
        (JR.run [ 
                    JR.declare "ALPHA_MASK" "I" (JR.int (JR.i32 0xFF000000)), 
                    JR.return (JR.new BasicColor.jnew_3 [ (JR.local "alphaValue"), (JR.map2 JR.add (JR.map2 JR.add (JR.map2 JR.add ((JR.map2 JR.band ((JR.map2 JR.shl (JR.local "alphaValue") (JR.int 24))) (JR.local "ALPHA_MASK"))) ((JR.map2 JR.band ((JR.map2 JR.shl (JR.local "r") (JR.int 16))) (JR.int (JR.i32 0x00FF0000))))) ((JR.map2 JR.band ((JR.map2 JR.shl (JR.local "g") (JR.int 8))) (JR.int (JR.i32 0x0000FF00))))) ((JR.map2 JR.band (JR.local "b") (JR.int (JR.i32 0x000000FF))))), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
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

