module Org.Allbinary.Game.Identification.BasicGroupFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.identification
-}

import JR
import Org.Allbinary.Game.Identification.Group as Group
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "BasicGroupFactory"


jchain : List String
jchain =
    [ "BasicGroupFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "NO_SUCH_GROUP", JR.defaultOf "" ), ( "GOOD", JR.defaultOf "" ), ( "ENEMY", JR.defaultOf "" ), ( "ENEMY_ON_LEVEL", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "GOOD_ARRAY", JR.defaultOf "" ), ( "ENEMY_ARRAY", JR.defaultOf "" ), ( "ENEMY_ON_LEVEL_ARRAY", JR.defaultOf "" ), ( "NONE_ARRAY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicGroupFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicGroupFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "GROUP_NAME")),
                JR.exec (JR.setField "NO_SUCH_GROUP" "" JR.this (JR.str "No Such Group: ")),
                JR.exec (JR.setField "GOOD" "" JR.this (JR.new Group.jnew_2 [ (JR.str "Good Guys"), (JR.cast "S" (JR.int 0)) ])),
                JR.exec (JR.setField "ENEMY" "" JR.this (JR.new Group.jnew_2 [ (JR.str "Bad Guys"), (JR.cast "S" (JR.int 1)) ])),
                JR.exec (JR.setField "ENEMY_ON_LEVEL" "" JR.this (JR.new Group.jnew_2 [ (JR.str "Bad Guys on Level"), (JR.cast "S" (JR.int 2)) ])),
                JR.exec (JR.setField "NONE" "" JR.this (JR.new Group.jnew_2 [ (JR.str "Not On A Team"), (JR.cast "S" (JR.int 3)) ])),
                JR.exec (JR.setField "GOOD_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.thisField "GOOD") ])),
                JR.exec (JR.setField "ENEMY_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.thisField "ENEMY") ])),
                JR.exec (JR.setField "ENEMY_ON_LEVEL_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.thisField "ENEMY"), (JR.thisField "ENEMY_ON_LEVEL") ])),
                JR.exec (JR.setField "NONE_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.thisField "NONE") ])),
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
                        JR.exec (JR.setStatic "BasicGroupFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
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

