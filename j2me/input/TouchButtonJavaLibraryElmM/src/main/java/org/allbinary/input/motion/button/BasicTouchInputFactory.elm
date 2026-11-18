module Org.Allbinary.Input.Motion.Button.BasicTouchInputFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Input.Motion.Button.TouchButtonInput as TouchButtonInput


jclass : String
jclass =
    "BasicTouchInputFactory"


jchain : List String
jchain =
    [ "BasicTouchInputFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "SPECIAL_BUTTON_SEVEN_TESTING_ONLY", JR.defaultOf "" ), ( "SPECIAL_BUTTON_EIGHT_TESTING_ONLY", JR.defaultOf "" ), ( "SPECIAL_BUTTON_SIX", JR.defaultOf "" ), ( "SPECIAL_BUTTON_FIVE", JR.defaultOf "" ), ( "SPECIAL_BUTTON_FOUR", JR.defaultOf "" ), ( "SPECIAL_BUTTON_THREE", JR.defaultOf "" ), ( "SPECIAL_BUTTON_TWO", JR.defaultOf "" ), ( "SPECIAL_BUTTON_ONE", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "initialized", JR.defaultOf "Z" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_1", jm_init_1 )
        , ( "updateAll_1", jm_updateAll_1 )
        , ( "updateAllFromList_2", jm_updateAllFromList_2 )
        , ( "getList_0", jm_getList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicTouchInputFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_updateAll_1", jm_updateAll_1 ), ( "jm_updateAllFromList_2", jm_updateAllFromList_2 ), ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicTouchInputFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "initialized" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "MAX" "I" (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_SEVEN_TESTING_ONLY" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 41)), (JR.str "Button 7 - Testing Only May Cross Over Key Values") ])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_EIGHT_TESTING_ONLY" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 42)), (JR.str "Button 8 - Testing Only May Cross Over Key Values") ])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_SIX" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 30)), (JR.str "Button 6") ])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_FIVE" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 31)), (JR.str "Button 5") ])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_FOUR" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 32)), (JR.str "Button 4") ])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_THREE" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 33)), (JR.str "Button 3") ])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_TWO" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 34)), (JR.str "Button 2") ])), 
                    JR.exec (JR.setField "SPECIAL_BUTTON_ONE" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 35)), (JR.str "Button 1") ])), 
                    JR.exec (JR.setField "UP" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 36)), (JR.str "Up Button") ])), 
                    JR.exec (JR.setField "LEFT" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 37)), (JR.str "Left Button") ])), 
                    JR.exec (JR.setField "RIGHT" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 38)), (JR.str "Right Button") ])), 
                    JR.exec (JR.setField "DOWN" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 39)), (JR.str "Down Button") ])), 
                    JR.exec (JR.setField "NONE" "" JR.this (JR.new TouchButtonInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 40)), (JR.str "No Button") ])) ]) ])
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
                        JR.exec (JR.setStatic "BasicTouchInputFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "initialized")) (JR.run [ 
                        JR.exec (JR.setField "initialized" "Z" JR.this (JR.bool True)), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "UP") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "LEFT") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "RIGHT") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "DOWN") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_TWO") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_FOUR") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_THREE") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_ONE") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_FIVE") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_SIX") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_SIX") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_SEVEN_TESTING_ONLY") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "SPECIAL_BUTTON_EIGHT_TESTING_ONLY") ]), 
                        JR.exec (JR.invoke "updateAllFromList_2" JR.this [ (JR.thisField "list"), (JR.local "inputToGameKeyMapping") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateAll_1 : JR.Method
jm_updateAll_1 jheap jthis jargs =
    JR.method [ ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateAllFromList_2" JR.this [ (JR.thisField "list"), (JR.local "inputToGameKeyMapping") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateAllFromList_2 : JR.Method
jm_updateAllFromList_2 jheap jthis jargs =
    JR.method [ ( "list", "" ), ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "size_0" (JR.local "list") []) ]) []), JR.this, (JR.str "updateAll") ]), 
                    JR.declare "touchButtonInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "list") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70345 -> (JR.setLocal "index" "I" (JR.lit jwN70345))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "touchButtonInput" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "update_1" (JR.local "touchButtonInput") [ (JR.local "inputToGameKeyMapping") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
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

