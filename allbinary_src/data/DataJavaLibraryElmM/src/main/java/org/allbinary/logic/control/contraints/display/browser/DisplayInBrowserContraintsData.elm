module Org.Allbinary.Logic.Control.Contraints.Display.Browser.DisplayInBrowserContraintsData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.control.contraints.display.browser
-}

import JR



jclass : String
jclass =
    "DisplayInBrowserContraintsData"


jchain : List String
jchain =
    [ "DisplayInBrowserContraintsData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DisplayInBrowserContraintsData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_FRAMEABLE", jstatic_FRAMEABLE ), ( "jstatic_MOUNTABLE", jstatic_MOUNTABLE ), ( "jstatic_QUICKFRAMEABLE", jstatic_QUICKFRAMEABLE ), ( "jstatic_MOUNTABLELINK", jstatic_MOUNTABLELINK ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "DisplayInBrowserContraintsData" jclinit "NAME"
        (JR.str "DISPLAYBROWSERCONSTRAINTS_NAME")
        s


jstatic_FRAMEABLE : JR.M
jstatic_FRAMEABLE s =
    JR.static "DisplayInBrowserContraintsData" jclinit "FRAMEABLE"
        (JR.str "DISPLAYBROWSERCONSTRAINTS_FRAMEABLE")
        s


jstatic_MOUNTABLE : JR.M
jstatic_MOUNTABLE s =
    JR.static "DisplayInBrowserContraintsData" jclinit "MOUNTABLE"
        (JR.str "DISPLAYBROWSERCONSTRAINTS_MOUNTABLE")
        s


jstatic_QUICKFRAMEABLE : JR.M
jstatic_QUICKFRAMEABLE s =
    JR.static "DisplayInBrowserContraintsData" jclinit "QUICKFRAMEABLE"
        (JR.str "DISPLAYBROWSERCONSTRAINTS_QUICKFRAMEABLE")
        s


jstatic_MOUNTABLELINK : JR.M
jstatic_MOUNTABLELINK s =
    JR.static "DisplayInBrowserContraintsData" jclinit "MOUNTABLELINK"
        (JR.str "DISPLAYBROWSERCONSTRAINTS_MOUNTABLELINK")
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

