module Org.Allbinary.View.CenterStaticViewPositionFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.view
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.View.StaticViewPosition as StaticViewPosition


jclass : String
jclass =
    "CenterStaticViewPositionFactory"


jchain : List String
jchain =
    [ "CenterStaticViewPositionFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CenterStaticViewPositionFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.declare "displayInfoSingleton" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.return (JR.new StaticViewPosition.jnew_3 [ ((JR.map2 JR.shr (JR.invoke "getLastWidth_0" (JR.local "displayInfoSingleton") []) (JR.int 1))), ((JR.map2 JR.shr (JR.invoke "getLastHeight_0" (JR.local "displayInfoSingleton") []) (JR.int 1))), (JR.local "z") ]) ])
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

