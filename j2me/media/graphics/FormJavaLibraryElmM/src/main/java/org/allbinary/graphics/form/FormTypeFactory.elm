module Org.Allbinary.Graphics.Form.FormTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Form.FormType as FormType
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "FormTypeFactory"


jchain : List String
jchain =
    [ "FormTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "UNK", JR.defaultOf "" ), ( "NULL_FORM_TYPE", JR.defaultOf "" ), ( "TEMP_HORIZONTAL_FORM", JR.defaultOf "" ), ( "HORIZONTAL_FORM", JR.defaultOf "" ), ( "VERTICAL_CENTER_FORM", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getFormType_0", jm_getFormType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FormTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getFormType_0", jm_getFormType_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FormTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "UNK" "" JR.this (JR.str "Unknown FormType")),
                JR.exec (JR.setField "NULL_FORM_TYPE" "" JR.this (JR.new FormType.jnew_1 [ (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "TEMP_HORIZONTAL_FORM" "" JR.this (JR.new FormType.jnew_1 [ (JR.str "TempHorizontal") ])),
                JR.exec (JR.setField "HORIZONTAL_FORM" "" JR.this (JR.new FormType.jnew_1 [ (JR.str "Horizontal") ])),
                JR.exec (JR.setField "VERTICAL_CENTER_FORM" "" JR.this (JR.new FormType.jnew_1 [ (JR.str "Vertical") ])),
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


jm_getFormType_0 : JR.Method
jm_getFormType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "formType" "" (JR.lit (JR.defaultOf "")), 
                    JR.ifElse (JR.invoke "isPortrait_0" (JR.local "displayInfo") []) (JR.run [ 
                        JR.exec (JR.setLocal "formType" "" (JR.thisField "VERTICAL_CENTER_FORM")) ]) (JR.run [ 
                        JR.exec (JR.setLocal "formType" "" (JR.thisField "HORIZONTAL_FORM")) ]), 
                    JR.return (JR.local "formType") ])
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

