module Org.Allbinary.Game.Identification.GroupFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.identification
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Game.Identification.Group as Group
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GroupFactory"


jchain : List String
jchain =
    [ "GroupFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "NULL_GROUP_ARRAY", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "index", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getNextGroup_0", jm_getNextGroup_0 )
        , ( "getNextGroupByName_1", jm_getNextGroupByName_1 )
        , ( "init_2", jm_init_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GroupFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getNextGroup_0", jm_getNextGroup_0 ), ( "jm_getNextGroupByName_1", jm_getNextGroupByName_1 ), ( "jm_init_2", jm_init_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GroupFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "NULL_GROUP_ARRAY" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "index" "I" JR.this (JR.int 0)),
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


jm_getNextGroup_0 : JR.Method
jm_getNextGroup_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "group" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.thisField "index")), 
                    JR.exec (JR.postUpdate (JR.thisField "index") (\jwN66889 -> (JR.setField "index" "I" JR.this (JR.lit jwN66889))) JR.increment), 
                    JR.return (JR.local "group") ])
        (jregister jheap)
        jthis
        jargs


jm_getNextGroupByName_1 : JR.Method
jm_getNextGroupByName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.declare "group" "" (JR.invoke "getNextGroup_0" JR.this []), 
                    JR.exec (JR.invoke "setName_1" (JR.local "group") [ (JR.local "name") ]), 
                    JR.return (JR.local "group") ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "groups", "S" ), ( "nameArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.declare "TEAM" "" (JR.str "Team "), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []), 
                    JR.exec (JR.setField "index" "I" JR.this (JR.int 0)), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.declare "name" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.map2 JR.less (JR.local "size") (JR.cast "I" (JR.local "groups"))) (JR.run [ 
                        JR.exec (JR.setLocal "name" "" (JR.field "EMPTY_STRING" (JR.local "stringUtil"))), 
                        JR.ifElse (JR.map2 JR.less (JR.local "size") (JR.alength (JR.local "nameArray"))) (JR.run [ 
                            JR.exec (JR.setLocal "name" "" (JR.aget (JR.local "nameArray") (JR.local "size"))) ]) (JR.run [ 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                            JR.exec (JR.setLocal "name" "" (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.local "TEAM") ]) [ (JR.local "size") ]) [])) ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.new Group.jnew_2 [ (JR.local "name"), (JR.cast "S" ((JR.map2 JR.add (JR.local "size") (JR.int 3)))) ]) ]), 
                        JR.exec (JR.postUpdate (JR.local "size") (\jwN67671 -> (JR.setLocal "size" "I" (JR.lit jwN67671))) JR.increment) ]) ])
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

