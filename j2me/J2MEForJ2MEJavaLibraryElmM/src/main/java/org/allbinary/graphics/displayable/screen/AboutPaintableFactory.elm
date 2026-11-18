module Org.Allbinary.Graphics.Displayable.Screen.AboutPaintableFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR
import Org.Allbinary.Game.Paint.AboutPaintable as AboutPaintable
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "AboutPaintableFactory"


jchain : List String
jchain =
    [ "AboutPaintableFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "paintableArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AboutPaintableFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AboutPaintableFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "paintableArray" "" JR.this (JR.arrayOf "" [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ])),
                identity,
                (JR.run [ 
                    JR.declare "INFO" "" (JR.arrayOf "" [ (JR.str "Built with the"), (JR.str "AllBinary Platform"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.str "Comments or Questions:"), (JR.str "support@allbinary.com") ]), 
                    JR.declare "DEVELOPERS" "" (JR.arrayOf "" [ (JR.str "Developed By:"), (JR.str "Travis Berthelot") ]), 
                    JR.exec (JR.setField "paintableArray" "" JR.this (JR.invoke "getPaintableArrayInstance_0" (JR.callStatic AboutPaintable.jm_getInstance_2 [ (JR.local "INFO"), (JR.local "DEVELOPERS") ]) [])) ]) ])
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

