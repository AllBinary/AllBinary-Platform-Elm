module Org.Allbinary.Game.Midlet.SpecialDemoGameMidlet exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.Game.Midlet.DemoGameMidlet as DemoGameMidlet
import Org.Allbinary.Logic.System.Security.Licensing.LicenseServerInitFileUtil as LicenseServerInitFileUtil


jclass : String
jclass =
    "SpecialDemoGameMidlet"


jchain : List String
jchain =
    [ "SpecialDemoGameMidlet" ]
        ++ DemoGameMidlet.jchain


jfields : List ( String, JR.JValue )
jfields =
    DemoGameMidlet.jfields ++ []


jvtable =
    JR.vtable
        [ ( "initView_0", jm_initView_0 )
        , ( "preInit_0", jm_preInit_0 ) ]
        DemoGameMidlet.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialDemoGameMidlet"
        [ ( "jm_initView_0", jm_initView_0 ), ( "jm_preInit_0", jm_preInit_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "clientInformationFactory", "" ), ( "licenseLoadingType", "" ), ( "demoSetupFactory", "" ), ( "licenseCheckRunnableFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect DemoGameMidlet.jinit_1 JR.this [ (JR.local "clientInformationFactory") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_initView_0 : JR.Method
jm_initView_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_preInit_0 : JR.Method
jm_preInit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "init_0" (JR.new LicenseServerInitFileUtil.jnew_0 []) []) ])
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

