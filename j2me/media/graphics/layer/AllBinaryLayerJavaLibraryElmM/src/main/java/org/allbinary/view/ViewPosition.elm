module Org.Allbinary.View.ViewPosition exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.view
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.View.ViewPositionBase as ViewPositionBase


jclass : String
jclass =
    "ViewPosition"


jchain : List String
jchain =
    [ "ViewPosition" ]
        ++ ViewPositionBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    ViewPositionBase.jfields ++ [ ( "allbinaryLayer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstanceD_0", jm_getInstanceD_0 )
        , ( "getX_0", jm_getX_0 )
        , ( "getY_0", jm_getY_0 )
        , ( "getZ_0", jm_getZ_0 )
        , ( "getX2_0", jm_getX2_0 )
        , ( "getY2_0", jm_getY2_0 )
        , ( "getZ2_0", jm_getZ2_0 )
        , ( "setAllbinaryLayer_1", jm_setAllbinaryLayer_1 ) ]
        ViewPositionBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ViewPosition"
        [ ( "jm_getInstanceD_0", jm_getInstanceD_0 ), ( "jm_getX_0", jm_getX_0 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_getZ_0", jm_getZ_0 ), ( "jm_getX2_0", jm_getX2_0 ), ( "jm_getY2_0", jm_getY2_0 ), ( "jm_getZ2_0", jm_getZ2_0 ), ( "jm_setAllbinaryLayer_1", jm_setAllbinaryLayer_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ViewPositionBase.jinit_3 JR.this [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]),
                JR.exec (JR.setField "allbinaryLayer" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getInstanceD_0 : JR.Method
jm_getInstanceD_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new jnew_3 [ (JR.int 0), (JR.int 0), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getXP_0" (JR.thisField "allbinaryLayer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getYP_0" (JR.thisField "allbinaryLayer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getZ_0 : JR.Method
jm_getZ_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getZP_0" (JR.thisField "allbinaryLayer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getX2_0 : JR.Method
jm_getX2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.invoke "getX_0" JR.this []) (JR.invoke "getWidth_0" (JR.thisField "allbinaryLayer") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getY2_0 : JR.Method
jm_getY2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.invoke "getY_0" JR.this []) (JR.invoke "getHeight_0" (JR.thisField "allbinaryLayer") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getZ2_0 : JR.Method
jm_getZ2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.cast "I" ((JR.map2 JR.add (JR.cast "J" (JR.invoke "getZ_0" JR.this [])) (JR.invoke "getDepth_0" (JR.thisField "allbinaryLayer") [])))) ])
        (jregister jheap)
        jthis
        jargs


jm_setAllbinaryLayer_1 : JR.Method
jm_setAllbinaryLayer_1 jheap jthis jargs =
    JR.method [ ( "allbinaryLayer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "allbinaryLayer" "" JR.this (JR.local "allbinaryLayer")) ])
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

