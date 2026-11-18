module Org.Allbinary.Game.GameMode exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameMode"


jchain : List String
jchain =
    [ "GameMode" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setName_1", jm_setName_1 )
        , ( "getName_0", jm_getName_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameMode"
        [ ( "jm_setName_1", jm_setName_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NONE", jstatic_NONE ), ( "jstatic_SERVER", jstatic_SERVER ), ( "jstatic_CLIENT", jstatic_CLIENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NONE : JR.M
jstatic_NONE s =
    JR.static "GameMode" jclinit "NONE"
        (JR.new jnew_1 [ (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        s


jstatic_SERVER : JR.M
jstatic_SERVER s =
    JR.static "GameMode" jclinit "SERVER"
        (JR.new jnew_1 [ (JR.str "Server") ])
        s


jstatic_CLIENT : JR.M
jstatic_CLIENT s =
    JR.static "GameMode" jclinit "CLIENT"
        (JR.new jnew_1 [ (JR.str "Client") ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setName_1" JR.this [ (JR.local "name") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ])
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

