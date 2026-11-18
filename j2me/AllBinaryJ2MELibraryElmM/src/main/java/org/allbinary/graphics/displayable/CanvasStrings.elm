module Org.Allbinary.Graphics.Displayable.CanvasStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil


jclass : String
jclass =
    "CanvasStrings"


jchain : List String
jchain =
    [ "CanvasStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "CONSTRUCTOR", JR.defaultOf "" ), ( "PAUSE", JR.defaultOf "" ), ( "UN_PAUSE", JR.defaultOf "" ), ( "SET_FULL_SCREEN_MODE", JR.defaultOf "" ), ( "SIZE_CHANGED", JR.defaultOf "" ), ( "SCALED_IMAGES", JR.defaultOf "" ), ( "PAINT", JR.defaultOf "" ), ( "ON_DISPLAY_CHANGE_EVENT", JR.defaultOf "" ), ( "UPDATE_MEASUREMENT", JR.defaultOf "" ), ( "FD_WIDTH", JR.defaultOf "" ), ( "FD_HEIGHT", JR.defaultOf "" ), ( "EMPTY_CHILD_NAME_LIST", JR.defaultOf "" ), ( "ABOUT", JR.defaultOf "" ), ( "OPTIONS", JR.defaultOf "" ), ( "FONT_ATLAS", JR.defaultOf "" ), ( "OBJ_MODEL", JR.defaultOf "" ), ( "MD2_MODEL", JR.defaultOf "" ), ( "_PNG", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CanvasStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CanvasStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "CONSTRUCTOR" "" JR.this (JR.str "MyCanvas::MyCanvas")),
                JR.exec (JR.setField "PAUSE" "" JR.this (JR.str "MyCanvas::pause")),
                JR.exec (JR.setField "UN_PAUSE" "" JR.this (JR.str "MyCanvas::unPause")),
                JR.exec (JR.setField "SET_FULL_SCREEN_MODE" "" JR.this (JR.str "setFullScreenMode")),
                JR.exec (JR.setField "SIZE_CHANGED" "" JR.this (JR.str "sizeChanged")),
                JR.exec (JR.setField "SCALED_IMAGES" "" JR.this (JR.str "scaledImages")),
                JR.exec (JR.setField "PAINT" "" JR.this (JR.str "paint")),
                JR.exec (JR.setField "ON_DISPLAY_CHANGE_EVENT" "" JR.this (JR.str "onDisplayChangeEvent")),
                JR.exec (JR.setField "UPDATE_MEASUREMENT" "" JR.this (JR.str "updateMeasurement")),
                JR.exec (JR.setField "FD_WIDTH" "" JR.this (JR.str " font/display width: ")),
                JR.exec (JR.setField "FD_HEIGHT" "" JR.this (JR.str " font/display height: ")),
                JR.exec (JR.setField "EMPTY_CHILD_NAME_LIST" "" JR.this (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "ABOUT" "" JR.this (JR.str "About")),
                JR.exec (JR.setField "OPTIONS" "" JR.this (JR.str "Options")),
                JR.exec (JR.setField "FONT_ATLAS" "" JR.this (JR.str "/font.png")),
                JR.exec (JR.setField "OBJ_MODEL" "" JR.this (JR.str "_obj")),
                JR.exec (JR.setField "MD2_MODEL" "" JR.this (JR.str "_md2")),
                JR.exec (JR.setField "_PNG" "" JR.this (JR.str ".png")),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

