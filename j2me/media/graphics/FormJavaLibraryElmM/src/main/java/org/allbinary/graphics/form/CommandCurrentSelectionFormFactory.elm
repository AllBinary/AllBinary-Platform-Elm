module Org.Allbinary.Graphics.Form.CommandCurrentSelectionFormFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.CommandCurrentSelectionForm as CommandCurrentSelectionForm
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Graphics.Form.ScrollSelectionFormNoneFactory as ScrollSelectionFormNoneFactory
import Org.Allbinary.Game.Configuration.Feature.TouchFeatureFactory as TouchFeatureFactory


jclass : String
jclass =
    "CommandCurrentSelectionFormFactory"


jchain : List String
jchain =
    [ "CommandCurrentSelectionFormFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_8", jm_getInstance_8 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommandCurrentSelectionFormFactory"
        [ ( "jm_getInstance_8", jm_getInstance_8 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_8 : JR.Method
jm_getInstance_8 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "rectangle", "" ), ( "formType", "" ), ( "border", "I" ), ( "moveForSmallScreen", "Z" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "TOUCH_ENABLED" (JR.callStatic TouchFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.declare "scrollSelectionForm" "" (JR.new CommandCurrentSelectionForm.jnew_6 [ (JR.local "title"), (JR.local "items"), (JR.local "border"), (JR.local "moveForSmallScreen"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]), 
                        JR.exec (JR.invoke "init_2" (JR.local "scrollSelectionForm") [ (JR.local "rectangle"), (JR.local "formType") ]), 
                        JR.return (JR.local "scrollSelectionForm") ]) (JR.run [ 
                        JR.return (JR.callStatic ScrollSelectionFormNoneFactory.jm_getInstance_0 []) ]) ])
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

