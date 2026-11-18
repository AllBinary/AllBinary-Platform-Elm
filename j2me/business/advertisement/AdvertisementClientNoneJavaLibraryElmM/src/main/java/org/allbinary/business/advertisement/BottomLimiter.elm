module Org.Allbinary.Business.Advertisement.BottomLimiter exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Business.Advertisement.GameAdStateFactory as GameAdStateFactory


jclass : String
jclass =
    "BottomLimiter"


jchain : List String
jchain =
    [ "BottomLimiter" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "bottom", JR.defaultOf "I" ), ( "deltaY", JR.defaultOf "I" ), ( "lower", JR.defaultOf "I" ), ( "higher", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_2", jm_init_2 )
        , ( "update_0", jm_update_0 )
        , ( "getDeltaY_0", jm_getDeltaY_0 )
        , ( "getBottom_0", jm_getBottom_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BottomLimiter"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_update_0", jm_update_0 ), ( "jm_getDeltaY_0", jm_getDeltaY_0 ), ( "jm_getBottom_0", jm_getBottom_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BottomLimiter" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "lower", "I" ), ( "higher", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "lower" "I" JR.this (JR.local "lower")), 
                    JR.exec (JR.setField "higher" "I" JR.this (JR.local "higher")) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.callStatic GameAdStateFactory.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.invoke "isShowingAt_0" (JR.local "gameAdState") []) (JR.run [ 
                        JR.exec (JR.setField "deltaY" "I" JR.this (JR.thisField "higher")) ]) (JR.run [ 
                        JR.exec (JR.setField "deltaY" "I" JR.this (JR.thisField "lower")) ]), 
                    JR.exec (JR.setField "bottom" "I" JR.this (JR.map2 JR.sub (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.thisField "deltaY"))) ])
        (jregister jheap)
        jthis
        jargs


jm_getDeltaY_0 : JR.Method
jm_getDeltaY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "deltaY") ])
        (jregister jheap)
        jthis
        jargs


jm_getBottom_0 : JR.Method
jm_getBottom_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "bottom") ])
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

