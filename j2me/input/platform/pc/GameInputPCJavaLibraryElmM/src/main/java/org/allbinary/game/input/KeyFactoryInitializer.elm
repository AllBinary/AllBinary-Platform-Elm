module Org.Allbinary.Game.Input.KeyFactoryInitializer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Init.Init as Init
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "KeyFactoryInitializer"


jchain : List String
jchain =
    [ "KeyFactoryInitializer" ]
        ++ Init.jchain


jfields : List ( String, JR.JValue )
jfields =
    Init.jfields ++ [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 ) ]
        Init.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeyFactoryInitializer"
        [ ( "jm_init_0", jm_init_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Init.jinit_0 JR.this []),
            JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "initWithRange_2" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int (JR.i32 0x2D0)), (JR.int 6) ]) ])
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

