module Org.Allbinary.Game.Identification.GroupCommonFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.identification
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "GroupCommonFactory"


jchain : List String
jchain =
    [ "GroupCommonFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ID", JR.defaultOf "" ), ( "GROUP_NAME_LABEL", JR.defaultOf "" ), ( "ID_LABEL", JR.defaultOf "" ), ( "ADDING_LABEL", JR.defaultOf "" ), ( "TO_LABEL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GroupCommonFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GroupCommonFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ID" "" JR.this (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 10) ])),
                JR.exec (JR.setField "GROUP_NAME_LABEL" "" JR.this (JR.str "Group Name: ")),
                JR.exec (JR.setField "ID_LABEL" "" JR.this (JR.str " Id: ")),
                JR.exec (JR.setField "ADDING_LABEL" "" JR.this (JR.str "Adding: ")),
                JR.exec (JR.setField "TO_LABEL" "" JR.this (JR.str " to: ")),
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "GroupCommonFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
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

