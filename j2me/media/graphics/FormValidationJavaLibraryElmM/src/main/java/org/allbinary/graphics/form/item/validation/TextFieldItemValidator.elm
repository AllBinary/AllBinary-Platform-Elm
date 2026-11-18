module Org.Allbinary.Graphics.Form.Item.Validation.TextFieldItemValidator exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item.validation
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.Control.Validate.ValidatorBase as ValidatorBase


jclass : String
jclass =
    "TextFieldItemValidator"


jchain : List String
jchain =
    [ "TextFieldItemValidator" ]
        ++ ValidatorBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    ValidatorBase.jfields ++ [ ( "textFieldItem", JR.defaultOf "" ), ( "min", JR.defaultOf "I" ), ( "max", JR.defaultOf "I" ), ( "allowOnEmpty", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "isValid_0", jm_isValid_0 )
        , ( "toList_0", jm_toList_0 ) ]
        ValidatorBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TextFieldItemValidator"
        [ ( "jm_isValid_0", jm_isValid_0 ), ( "jm_toList_0", jm_toList_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "textFieldItem", "" ), ( "min", "I" ), ( "max", "I" ), ( "allowOnEmpty", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ValidatorBase.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "textFieldItem" "" JR.this (JR.local "textFieldItem")), 
                    JR.exec (JR.setField "min" "I" JR.this (JR.local "min")), 
                    JR.exec (JR.setField "max" "I" JR.this (JR.local "max")), 
                    JR.exec (JR.setField "allowOnEmpty" "Z" JR.this (JR.local "allowOnEmpty")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_isValid_0 : JR.Method
jm_isValid_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "booleanFactory" "" (JR.callStatic BooleanFactory.jm_getInstance_0 []), 
                    JR.declare "result" "" (JR.field "TRUE" (JR.local "booleanFactory")), 
                    JR.declare "string" "" (JR.invoke "getString_0" (JR.thisField "textFieldItem") []), 
                    JR.declare "textLength" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.ifElse (JR.or ((JR.and (JR.map2 JR.equals (JR.local "textLength") (JR.int 0)) (JR.thisField "allowOnEmpty"))) (JR.and (JR.map2 JR.greater (JR.local "textLength") (JR.thisField "min")) (JR.map2 JR.less (JR.local "textLength") (JR.thisField "max")))) identity (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "textLength") (JR.thisField "min")) (JR.run [ 
                            JR.exec (JR.setLocal "result" "" (JR.field "FALSE" (JR.local "booleanFactory"))) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.local "textLength") (JR.thisField "max")) (JR.run [ 
                            JR.exec (JR.setLocal "result" "" (JR.field "FALSE" (JR.local "booleanFactory"))) ]) identity ]) ]), 
                    JR.return (JR.local "result") ])
        (jregister jheap)
        jthis
        jargs


jm_toList_0 : JR.Method
jm_toList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "string" "" (JR.invoke "getString_0" (JR.thisField "textFieldItem") []), 
                    JR.declare "textLength" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.ifElse (JR.and (JR.map2 JR.greater (JR.local "textLength") (JR.thisField "min")) (JR.map2 JR.less (JR.local "textLength") (JR.thisField "max"))) identity (JR.run [ 
                        JR.declare "label" "" (JR.invoke "getLabel_0" (JR.thisField "textFieldItem") []), 
                        JR.declare "name" "" (JR.invoke "substring_2" (JR.local "label") [ (JR.int 0), (JR.map2 JR.sub (JR.invoke "length_0" (JR.local "label") []) (JR.int 2)) ]), 
                        JR.ifElse (JR.map2 JR.less (JR.local "textLength") (JR.thisField "min")) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "name") ]) [ (JR.str " is to short") ]) []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.local "textLength") (JR.thisField "max")) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "name") ]) [ (JR.str " is to long") ]) []) ]) ]) identity ]) ]), 
                    JR.return (JR.local "list") ])
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

