module Org.Allbinary.Game.Input.Input exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "Input"


jchain : List String
jchain =
    [ "Input" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "id", JR.defaultOf "I" ), ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getId_0", jm_getId_0 )
        , ( "setId_1", jm_setId_1 )
        , ( "getName_0", jm_getName_0 )
        , ( "setName_1", jm_setName_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Input"
        [ ( "jm_getId_0", jm_getId_0 ), ( "jm_setId_1", jm_setId_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "id", "I" ), ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setId_1" JR.this [ (JR.local "id") ]), 
                    JR.exec (JR.invoke "setName_1" JR.this [ (JR.local "name") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
        (jregister jheap)
        jthis
        jargs


jm_setId_1 : JR.Method
jm_setId_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "id" "I" JR.this (JR.local "key")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "keyName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "keyName")) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Name: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Id: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getId_0" JR.this []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

