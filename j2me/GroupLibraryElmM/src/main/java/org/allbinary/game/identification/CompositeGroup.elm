module Org.Allbinary.Game.Identification.CompositeGroup exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.identification
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Identification.GroupCommonFactory as GroupCommonFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "CompositeGroup"


jchain : List String
jchain =
    [ "CompositeGroup" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "groupInterface", JR.defaultOf "" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "clear_0", jm_clear_0 )
        , ( "add_1", jm_add_1 )
        , ( "isInGroup_1", jm_isInGroup_1 )
        , ( "getGroup_0", jm_getGroup_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompositeGroup"
        [ ( "jm_clear_0", jm_clear_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_isInGroup_1", jm_isInGroup_1 ), ( "jm_getGroup_0", jm_getGroup_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "groupInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "groupInterface" "" JR.this (JR.local "groupInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "groupInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.declare "groupCommonFactory" "" (JR.callStatic GroupCommonFactory.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "ADDING_LABEL" (JR.local "groupCommonFactory")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "groupInterface") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TO_LABEL" (JR.local "groupCommonFactory")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.thisField "groupInterface") ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "ADD" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "groupInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isInGroup_1 : JR.Method
jm_isInGroup_1 jheap jthis jargs =
    JR.method [ ( "groupInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "groupInterface") ]) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGroup_0 : JR.Method
jm_getGroup_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "groupInterface") ])
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

