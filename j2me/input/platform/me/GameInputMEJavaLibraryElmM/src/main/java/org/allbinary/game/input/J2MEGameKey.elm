module Org.Allbinary.Game.Input.J2MEGameKey exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.Input as Input
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "J2MEGameKey"


jchain : List String
jchain =
    [ "J2MEGameKey" ]
        ++ Input.jchain


jfields : List ( String, JR.JValue )
jfields =
    Input.jfields ++ []


jvtable =
    JR.vtable
        [ ( "toString_0", jm_toString_0 )
        , ( "getString_1", jm_getString_1 ) ]
        Input.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "J2MEGameKey"
        [ ( "jm_toString_0", jm_toString_0 ), ( "jm_getString_1", jm_getString_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "key", "I" ), ( "keyName", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Input.jinit_2 JR.this [ (JR.local "key"), (JR.local "keyName") ]),
                identity,
                (JR.run [ 
                    JR.declare "id" "I" (JR.invoke "getId_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "id") (JR.int 0)) (JR.run [ 
                        JR.declare "inputFactory" "" (JR.callStatic InputFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "add_2" (JR.local "inputFactory") [ (JR.local "id"), JR.this ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "J2MEGameKey: ") ]) [ (JR.callVia Input.jvtable "toString_0" JR.this []) ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getString_1 : JR.Method
jm_getString_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.declare "input" "" (JR.invoke "getInstanceById_1" (JR.callStatic InputFactory.jm_getInstance_0 []) [ (JR.local "keyCode") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "input") JR.null) (JR.run [ 
                        JR.return (JR.invoke "getName_0" (JR.local "input") []) ]) (JR.run [ 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
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

