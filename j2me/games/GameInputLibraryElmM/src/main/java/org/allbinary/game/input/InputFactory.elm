module Org.Allbinary.Game.Input.InputFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Input as Input
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "InputFactory"


jchain : List String
jchain =
    [ "InputFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "KEY_CODE_LABEL", JR.defaultOf "" ), ( "DEVICE_ID_LABEL", JR.defaultOf "" ), ( "MAX", JR.defaultOf "I" ), ( "inputIntegerArray", JR.defaultOf "" ), ( "NO_INPUT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "add_2", jm_add_2 )
        , ( "getInstanceById_1", jm_getInstanceById_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_add_2", jm_add_2 ), ( "jm_getInstanceById_1", jm_getInstanceById_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InputFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "KEY_CODE_LABEL" "" JR.this (JR.str "KeyCode: ")),
                JR.exec (JR.setField "DEVICE_ID_LABEL" "" JR.this (JR.str "DeviceId: ")),
                JR.exec (JR.setField "MAX" "I" JR.this (JR.invoke "getMin_0" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "inputIntegerArray" "" JR.this (JR.newArray "" [ (JR.thisField "MAX") ])),
                JR.exec (JR.setField "NO_INPUT" "" JR.this (JR.new Input.jnew_2 [ (JR.int 0), (JR.field "UNKNOWN" (JR.thisField "commonStrings")) ])),
                identity,
                (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "inputIntegerArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67343 -> (JR.setLocal "index" "I" (JR.lit jwN67343))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "inputIntegerArray") (\jaN67248 -> JR.andThen (JR.local "index") (\jiN67248 -> (JR.aset (JR.lit jaN67248) (JR.lit jiN67248) (JR.thisField "NO_INPUT"))))) ]) ] ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "InputFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_add_2 : JR.Method
jm_add_2 jheap jthis jargs =
    JR.method [ ( "id", "I" ), ( "input", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "inputIntegerArray") (\jaN67383 -> JR.andThen (JR.local "id") (\jiN67383 -> (JR.aset (JR.lit jaN67383) (JR.lit jiN67383) (JR.local "input"))))) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceById_1 : JR.Method
jm_getInstanceById_1 jheap jthis jargs =
    JR.method [ ( "id", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "id") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "id" "I" (JR.map JR.neg (JR.local "id"))) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.local "id") (JR.alength (JR.thisField "inputIntegerArray"))) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Warning id: ") ]) [ (JR.local "id") ]) []), JR.this, (JR.field "GET_INSTANCE" (JR.thisField "commonStrings")) ]), 
                        JR.return (JR.thisField "NO_INPUT") ]) identity, 
                    JR.return (JR.aget (JR.thisField "inputIntegerArray") (JR.local "id")) ])
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

