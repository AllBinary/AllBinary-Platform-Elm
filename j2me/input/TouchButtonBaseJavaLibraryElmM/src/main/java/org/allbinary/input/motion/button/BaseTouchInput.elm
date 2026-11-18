module Org.Allbinary.Input.Motion.Button.BaseTouchInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.String.CommonStrings as CommonStrings


jclass : String
jclass =
    "BaseTouchInput"


jchain : List String
jchain =
    [ "BaseTouchInput" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "basicArrayListUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getList_0", jm_getList_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseTouchInput"
        [ ( "jm_getList_0", jm_getList_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicArrayListUtil" "" JR.this (JR.callStatic BasicArrayListUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getImmutableInstance_0" (JR.thisField "basicArrayListUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" (JR.getClass JR.this) []) ])
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

