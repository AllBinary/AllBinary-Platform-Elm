module Org.Allbinary.Game.Input.J2MEKeyFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Input.InputFactory as InputFactory


jclass : String
jclass =
    "J2MEKeyFactory"


jchain : List String
jchain =
    [ "J2MEKeyFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "gameKeyFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 )
        , ( "isSubmission_1", jm_isSubmission_1 )
        , ( "isDelete_1", jm_isDelete_1 )
        , ( "isBackSpace_1", jm_isBackSpace_1 )
        , ( "isUp_1", jm_isUp_1 )
        , ( "isDown_1", jm_isDown_1 )
        , ( "isLeft_1", jm_isLeft_1 )
        , ( "isRight_1", jm_isRight_1 )
        , ( "isEnter_1", jm_isEnter_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "J2MEKeyFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_isSubmission_1", jm_isSubmission_1 ), ( "jm_isDelete_1", jm_isDelete_1 ), ( "jm_isBackSpace_1", jm_isBackSpace_1 ), ( "jm_isUp_1", jm_isUp_1 ), ( "jm_isDown_1", jm_isDown_1 ), ( "jm_isLeft_1", jm_isLeft_1 ), ( "jm_isRight_1", jm_isRight_1 ), ( "jm_isEnter_1", jm_isEnter_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "J2MEKeyFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "gameKeyFactory" "" JR.this (JR.callStatic GameKeyFactory.jm_getInstance_0 [])),
                identity,
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


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameKeyArray" "" (JR.arrayOf "" [ (JR.field "DOWN" (JR.thisField "gameKeyFactory")), (JR.field "FIRE" (JR.thisField "gameKeyFactory")), (JR.field "GAME_A" (JR.thisField "gameKeyFactory")), (JR.field "GAME_B" (JR.thisField "gameKeyFactory")), (JR.field "GAME_C" (JR.thisField "gameKeyFactory")), (JR.field "GAME_D" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM0" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM1" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM2" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM3" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM4" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM5" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM6" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM7" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM8" (JR.thisField "gameKeyFactory")), (JR.field "KEY_NUM9" (JR.thisField "gameKeyFactory")), (JR.field "KEY_POUND" (JR.thisField "gameKeyFactory")), (JR.field "KEY_STAR" (JR.thisField "gameKeyFactory")), (JR.field "LEFT" (JR.thisField "gameKeyFactory")), (JR.field "LEVEL_DOWN" (JR.thisField "gameKeyFactory")), (JR.field "LEVEL_UP" (JR.thisField "gameKeyFactory")), (JR.field "NONE" (JR.thisField "gameKeyFactory")), (JR.field "RIGHT" (JR.thisField "gameKeyFactory")), (JR.field "UP" (JR.thisField "gameKeyFactory")) ]), 
                    JR.declare "inputFactory" "" (JR.callStatic InputFactory.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.local "gameKeyArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67092 -> (JR.setLocal "index" "I" (JR.lit jwN67092))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.invoke "add_2" (JR.local "inputFactory") [ (JR.invoke "getId_0" (JR.aget (JR.local "gameKeyArray") (JR.local "index")) []), (JR.aget (JR.local "gameKeyArray") (JR.local "index")) ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_isSubmission_1 : JR.Method
jm_isSubmission_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "FIRE" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isDelete_1 : JR.Method
jm_isDelete_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "GAME_D" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isBackSpace_1 : JR.Method
jm_isBackSpace_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isUp_1 : JR.Method
jm_isUp_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "UP" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isDown_1 : JR.Method
jm_isDown_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "DOWN" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isLeft_1 : JR.Method
jm_isLeft_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "LEFT" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isRight_1 : JR.Method
jm_isRight_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "RIGHT" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isEnter_1 : JR.Method
jm_isEnter_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "FIRE" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
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

