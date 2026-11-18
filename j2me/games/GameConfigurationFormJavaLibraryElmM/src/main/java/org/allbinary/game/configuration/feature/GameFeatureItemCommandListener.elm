module Org.Allbinary.Game.Configuration.Feature.GameFeatureItemCommandListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.GameConfigurationUtil as GameConfigurationUtil
import Javax.Microedition.Lcdui.ItemCommandListener as ItemCommandListener
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Midlet.MidletStrings as MidletStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GameFeatureItemCommandListener"


jchain : List String
jchain =
    [ "GameFeatureItemCommandListener" ]
        ++ ItemCommandListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "gameOptionsForm", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "commandAction_2", jm_commandAction_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameFeatureItemCommandListener"
        [ ( "jm_commandAction_2", jm_commandAction_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameOptionsForm", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameOptionsForm" "" JR.this (JR.local "gameOptionsForm")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_commandAction_2 : JR.Method
jm_commandAction_2 jheap jthis jargs =
    JR.method [ ( "command", "" ), ( "item", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "itemLabel" "" (JR.invoke "getLabel_0" (JR.local "item") []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "ITEM_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.local "itemLabel") ]) []), JR.this, (JR.field "COMMAND_ACTION" (JR.callStatic MidletStrings.jm_getInstance_0 [])) ]), 
                        JR.ifElse (JR.instanceOf "GameConfigurationGauge" (JR.local "item")) (JR.run [ 
                            JR.exec (JR.invoke "change_2" (JR.callStatic GameConfigurationUtil.jm_getInstance_0 []) [ (JR.thisField "gameOptionsForm"), (JR.local "item") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "COMMAND_ACTION" (JR.callStatic MidletStrings.jm_getInstance_0 [])), (JR.local "e") ]) ]) ) ] identity ])
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

