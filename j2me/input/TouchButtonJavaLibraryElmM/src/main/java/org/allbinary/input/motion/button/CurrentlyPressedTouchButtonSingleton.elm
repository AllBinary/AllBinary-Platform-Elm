module Org.Allbinary.Input.Motion.Button.CurrentlyPressedTouchButtonSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "CurrentlyPressedTouchButtonSingleton"


jchain : List String
jchain =
    [ "CurrentlyPressedTouchButtonSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "size_0", jm_size_0 )
        , ( "removeAt_1", jm_removeAt_1 )
        , ( "remove_1", jm_remove_1 )
        , ( "get_1", jm_get_1 )
        , ( "contains_1", jm_contains_1 )
        , ( "add_1", jm_add_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CurrentlyPressedTouchButtonSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_size_0", jm_size_0 ), ( "jm_removeAt_1", jm_removeAt_1 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_get_1", jm_get_1 ), ( "jm_contains_1", jm_contains_1 ), ( "jm_add_1", jm_add_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CurrentlyPressedTouchButtonSingleton" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
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


jm_size_0 : JR.Method
jm_size_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAt_1 : JR.Method
jm_removeAt_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "removeAt_1" (JR.thisField "list") [ (JR.local "index") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_contains_1 : JR.Method
jm_contains_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "touchButtonInput") ]) ])
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

