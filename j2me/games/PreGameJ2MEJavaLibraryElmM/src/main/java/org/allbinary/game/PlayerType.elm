module Org.Allbinary.Game.PlayerType exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "PlayerType"


jchain : List String
jchain =
    [ "PlayerType" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "id", JR.defaultOf "I" ), ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getId_0", jm_getId_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerType"
        [ ( "jm_getId_0", jm_getId_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "value", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "id" "I" JR.this (JR.local "value")) ]) ])
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


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" JR.this []) ])
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

