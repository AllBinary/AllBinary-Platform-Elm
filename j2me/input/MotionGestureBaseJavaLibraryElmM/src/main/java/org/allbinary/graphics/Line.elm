module Org.Allbinary.Graphics.Line exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Graphics.PointFactory as PointFactory


jclass : String
jclass =
    "Line"


jchain : List String
jchain =
    [ "Line" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "p1", JR.defaultOf "" ), ( "p2", JR.defaultOf "" ), ( "deltaX", JR.defaultOf "D" ), ( "deltaY", JR.defaultOf "D" ) ]


jvtable =
    JR.vtable
        [ ( "getGradient_0", jm_getGradient_0 )
        , ( "update_0", jm_update_0 )
        , ( "getDeltaX_0", jm_getDeltaX_0 )
        , ( "getDeltaY_0", jm_getDeltaY_0 )
        , ( "getP1_0", jm_getP1_0 )
        , ( "getP2_0", jm_getP2_0 )
        , ( "setP1_1", jm_setP1_1 )
        , ( "setP2_1", jm_setP2_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Line"
        [ ( "jm_getGradient_0", jm_getGradient_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_getDeltaX_0", jm_getDeltaX_0 ), ( "jm_getDeltaY_0", jm_getDeltaY_0 ), ( "jm_getP1_0", jm_getP1_0 ), ( "jm_getP2_0", jm_getP2_0 ), ( "jm_setP1_1", jm_setP1_1 ), ( "jm_setP2_1", jm_setP2_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "p1", "" ), ( "p2", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "p1" "" JR.this (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 []))), 
                    JR.exec (JR.setField "p2" "" JR.this (JR.thisField "p1")), 
                    JR.exec (JR.invoke "setP1_1" JR.this [ (JR.local "p1") ]), 
                    JR.exec (JR.invoke "setP2_1" JR.this [ (JR.local "p2") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getGradient_0 : JR.Method
jm_getGradient_0 jheap jthis jargs =
    JR.method [] "D"
        (JR.run [ 
                    JR.return (JR.map2 JR.div (JR.invoke "getDeltaY_0" JR.this []) (JR.invoke "getDeltaX_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "deltaX" "D" JR.this (JR.map2 JR.sub (JR.cast "D" (JR.invoke "getX_0" (JR.invoke "getP1_0" JR.this []) [])) (JR.cast "D" (JR.invoke "getX_0" (JR.invoke "getP2_0" JR.this []) [])))), 
                    JR.exec (JR.setField "deltaY" "D" JR.this (JR.map2 JR.sub (JR.cast "D" (JR.invoke "getY_0" (JR.invoke "getP1_0" JR.this []) [])) (JR.cast "D" (JR.invoke "getY_0" (JR.invoke "getP2_0" JR.this []) [])))) ])
        (jregister jheap)
        jthis
        jargs


jm_getDeltaX_0 : JR.Method
jm_getDeltaX_0 jheap jthis jargs =
    JR.method [] "D"
        (JR.run [ 
                    JR.return (JR.thisField "deltaX") ])
        (jregister jheap)
        jthis
        jargs


jm_getDeltaY_0 : JR.Method
jm_getDeltaY_0 jheap jthis jargs =
    JR.method [] "D"
        (JR.run [ 
                    JR.return (JR.thisField "deltaY") ])
        (jregister jheap)
        jthis
        jargs


jm_getP1_0 : JR.Method
jm_getP1_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "p1") ])
        (jregister jheap)
        jthis
        jargs


jm_getP2_0 : JR.Method
jm_getP2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "p2") ])
        (jregister jheap)
        jthis
        jargs


jm_setP1_1 : JR.Method
jm_setP1_1 jheap jthis jargs =
    JR.method [ ( "p1", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "p1" "" JR.this (JR.local "p1")), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setP2_1 : JR.Method
jm_setP2_1 jheap jthis jargs =
    JR.method [ ( "p2", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "p2" "" JR.this (JR.local "p2")), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
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

