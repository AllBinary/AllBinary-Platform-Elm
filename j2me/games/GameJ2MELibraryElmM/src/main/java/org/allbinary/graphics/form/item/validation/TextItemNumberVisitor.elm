module Org.Allbinary.Graphics.Form.Item.Validation.TextItemNumberVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item.validation
-}

import JR
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil
import Org.Allbinary.Game.Input.TextNotificationUtil as TextNotificationUtil
import Org.Allbinary.Logic.Util.Visitor.Visitor as Visitor


jclass : String
jclass =
    "TextItemNumberVisitor"


jchain : List String
jchain =
    [ "TextItemNumberVisitor" ]
        ++ Visitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Visitor.jfields ++ [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 ) ]
        Visitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TextItemNumberVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Visitor.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.declare "value" "" (JR.local "anyType"), 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "length_0" (JR.local "value") []) (JR.int 2)) (JR.run [ 
                        JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                        JR.ifElse (JR.invoke "isNumber_1" (JR.local "stringValidationUtil") [ (JR.local "value") ]) (JR.run [ 
                            JR.return (JR.field "TRUE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.try (JR.run [ 
                                JR.exec (JR.invoke "fireError_1" (JR.callStatic TextNotificationUtil.jm_getInstance_0 []) [ (JR.str "Numbers Only") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                                JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                                JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "VISIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                            JR.return (JR.field "FALSE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ]) ]) (JR.run [ 
                        JR.return (JR.field "FALSE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ]) ])
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

