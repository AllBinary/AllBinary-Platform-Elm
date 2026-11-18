module Org.Allbinary.Graphics.Displayable.GameTickDisplayInfoSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton


jclass : String
jclass =
    "GameTickDisplayInfoSingleton"


jchain : List String
jchain =
    [ "GameTickDisplayInfoSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "displayInfoSingleton", JR.defaultOf "" ), ( "lastWidth", JR.defaultOf "I" ), ( "lastHeight", JR.defaultOf "I" ), ( "lastHalfWidth", JR.defaultOf "I" ), ( "lastHalfHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "update_0", jm_update_0 )
        , ( "getLastWidth_0", jm_getLastWidth_0 )
        , ( "getLastHeight_0", jm_getLastHeight_0 )
        , ( "getLastHalfWidth_0", jm_getLastHalfWidth_0 )
        , ( "getLastHalfHeight_0", jm_getLastHalfHeight_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameTickDisplayInfoSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_getLastWidth_0", jm_getLastWidth_0 ), ( "jm_getLastHeight_0", jm_getLastHeight_0 ), ( "jm_getLastHalfWidth_0", jm_getLastHalfWidth_0 ), ( "jm_getLastHalfHeight_0", jm_getLastHalfHeight_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameTickDisplayInfoSingleton" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "lastWidth" "I" JR.this (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") [])),
                JR.exec (JR.setField "lastHeight" "I" JR.this (JR.invoke "getLastHeight_0" (JR.thisField "displayInfoSingleton") [])),
                JR.exec (JR.setField "lastHalfWidth" "I" JR.this (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfoSingleton") [])),
                JR.exec (JR.setField "lastHalfHeight" "I" JR.this (JR.invoke "getLastHalfHeight_0" (JR.thisField "displayInfoSingleton") [])),
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


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "lastWidth" "I" JR.this (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") [])), 
                    JR.exec (JR.setField "lastHeight" "I" JR.this (JR.invoke "getLastHeight_0" (JR.thisField "displayInfoSingleton") [])), 
                    JR.exec (JR.setField "lastHalfWidth" "I" JR.this (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfoSingleton") [])), 
                    JR.exec (JR.setField "lastHalfHeight" "I" JR.this (JR.invoke "getLastHalfHeight_0" (JR.thisField "displayInfoSingleton") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getLastWidth_0 : JR.Method
jm_getLastWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "lastWidth") ])
        (jregister jheap)
        jthis
        jargs


jm_getLastHeight_0 : JR.Method
jm_getLastHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "lastHeight") ])
        (jregister jheap)
        jthis
        jargs


jm_getLastHalfWidth_0 : JR.Method
jm_getLastHalfWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "lastHalfWidth") ])
        (jregister jheap)
        jthis
        jargs


jm_getLastHalfHeight_0 : JR.Method
jm_getLastHalfHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "lastHalfHeight") ])
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

