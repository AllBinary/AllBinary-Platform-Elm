module Org.Allbinary.Game.Identification.Group exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.identification
-}

import JR
import Org.Allbinary.Game.Identification.GroupCommonFactory as GroupCommonFactory
import Org.Allbinary.Game.Identification.GroupInterface as GroupInterface
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "Group"


jchain : List String
jchain =
    [ "Group" ]
        ++ GroupInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "teamId", JR.defaultOf "S" ), ( "string", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getGroupName_0", jm_getGroupName_0 )
        , ( "setName_1", jm_setName_1 )
        , ( "getGroupId_0", jm_getGroupId_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Group"
        [ ( "jm_getGroupName_0", jm_getGroupName_0 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_getGroupId_0", jm_getGroupId_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "teamName", "" ), ( "teamId", "S" ) ] ""
        (JR.run [ JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "string" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "teamId" "S" JR.this (JR.local "teamId")), 
                    JR.exec (JR.invoke "setName_1" JR.this [ (JR.local "teamName") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getGroupName_0 : JR.Method
jm_getGroupName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.declare "groupCommonFactory" "" (JR.callStatic GroupCommonFactory.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "GROUP_NAME_LABEL" (JR.local "groupCommonFactory")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "name") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "ID_LABEL" (JR.local "groupCommonFactory")) ]), 
                    JR.exec (JR.invoke "appendshort_1" (JR.local "stringBuffer") [ (JR.thisField "teamId") ]), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getGroupId_0 : JR.Method
jm_getGroupId_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "teamId") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "string") ])
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

