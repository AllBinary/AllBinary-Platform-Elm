module Org.Allbinary.Graphics.Form.Item.ABStringComponent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory


jclass : String
jclass =
    "ABStringComponent"


jchain : List String
jchain =
    [ "ABStringComponent" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getBackgroundBasicColor_0", jm_getBackgroundBasicColor_0 )
        , ( "getForegroundBasicColor_0", jm_getForegroundBasicColor_0 )
        , ( "setForegroundBasicColor_1", jm_setForegroundBasicColor_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABStringComponent"
        [ ( "jm_getBackgroundBasicColor_0", jm_getBackgroundBasicColor_0 ), ( "jm_getForegroundBasicColor_0", jm_getForegroundBasicColor_0 ), ( "jm_setForegroundBasicColor_1", jm_setForegroundBasicColor_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_STRING_COMPONENT", jstatic_NULL_STRING_COMPONENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_STRING_COMPONENT : JR.M
jstatic_NULL_STRING_COMPONENT s =
    JR.static "ABStringComponent" jclinit "NULL_STRING_COMPONENT"
        (JR.new jnew_2 [ (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getBackgroundBasicColor_0 : JR.Method
jm_getBackgroundBasicColor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getForegroundBasicColor_0 : JR.Method
jm_getForegroundBasicColor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setForegroundBasicColor_1 : JR.Method
jm_setForegroundBasicColor_1 jheap jthis jargs =
    JR.method [ ( "foregroundBasicColor", "" ) ] ""
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

