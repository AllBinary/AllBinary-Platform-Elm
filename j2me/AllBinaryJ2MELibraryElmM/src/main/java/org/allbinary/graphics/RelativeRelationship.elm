module Org.Allbinary.Graphics.RelativeRelationship exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Graphics.PointFactory as PointFactory


jclass : String
jclass =
    "RelativeRelationship"


jchain : List String
jchain =
    [ "RelativeRelationship" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "typesAllowedList", JR.defaultOf "" ), ( "x", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ), ( "z", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getX_0", jm_getX_0 )
        , ( "getY_0", jm_getY_0 )
        , ( "getZ_0", jm_getZ_0 )
        , ( "getTypesAllowedList_0", jm_getTypesAllowedList_0 )
        , ( "setTypesAllowedList_1", jm_setTypesAllowedList_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RelativeRelationship"
        [ ( "jm_getX_0", jm_getX_0 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_getZ_0", jm_getZ_0 ), ( "jm_getTypesAllowedList_0", jm_getTypesAllowedList_0 ), ( "jm_setTypesAllowedList_1", jm_setTypesAllowedList_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_RELATIVE_RELATIONSHIP", jstatic_NULL_RELATIVE_RELATIONSHIP ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_RELATIVE_RELATIONSHIP : JR.M
jstatic_NULL_RELATIVE_RELATIONSHIP s =
    JR.static "RelativeRelationship" jclinit "NULL_RELATIVE_RELATIONSHIP"
        (JR.new jnew_2 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "point", "" ), ( "typesAllowedList", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "x" "I" JR.this (JR.invoke "getX_0" (JR.local "point") [])), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.invoke "getY_0" (JR.local "point") [])), 
                    JR.exec (JR.setField "z" "I" JR.this (JR.invoke "getZ_0" (JR.local "point") [])), 
                    JR.exec (JR.setField "typesAllowedList" "" JR.this (JR.local "typesAllowedList")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "x") ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "y") ])
        (jregister jheap)
        jthis
        jargs


jm_getZ_0 : JR.Method
jm_getZ_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "z") ])
        (jregister jheap)
        jthis
        jargs


jm_getTypesAllowedList_0 : JR.Method
jm_getTypesAllowedList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "typesAllowedList") ])
        (jregister jheap)
        jthis
        jargs


jm_setTypesAllowedList_1 : JR.Method
jm_setTypesAllowedList_1 jheap jthis jargs =
    JR.method [ ( "typesAllowedList", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "typesAllowedList" "" JR.this (JR.local "typesAllowedList")) ])
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

