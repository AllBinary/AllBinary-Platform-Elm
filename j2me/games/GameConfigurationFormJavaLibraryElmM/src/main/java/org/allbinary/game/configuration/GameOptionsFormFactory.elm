module Org.Allbinary.Game.Configuration.GameOptionsFormFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.GameOptionsForm as GameOptionsForm
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "GameOptionsFormFactory"


jchain : List String
jchain =
    [ "GameOptionsFormFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_4", jm_init_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameOptionsFormFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_4", jm_init_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameOptionsFormFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
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


jm_init_4 : JR.Method
jm_init_4 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "title", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.new GameOptionsForm.jnew_4 [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "INIT" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.callStatic CommandForm.jm_getNullCommandForm_0 []) ]) ) ] identity ])
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

