module Org.Allbinary.Resources.KeyValueFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.resources
-}

import JR
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "KeyValueFactory"


jchain : List String
jchain =
    [ "KeyValueFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "MAP", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "get_1", jm_get_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeyValueFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_get_1", jm_get_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "KeyValueFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "MAP" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])),
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


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "containsKey_1" (JR.thisField "MAP") [ (JR.local "key") ])) (JR.run [ 
                        JR.return (JR.local "key") ]) identity, 
                    JR.return (JR.invoke "get_1" (JR.thisField "MAP") [ (JR.local "key") ]) ])
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

