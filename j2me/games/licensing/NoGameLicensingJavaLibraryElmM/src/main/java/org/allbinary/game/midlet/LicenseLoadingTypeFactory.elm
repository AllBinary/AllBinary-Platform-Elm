module Org.Allbinary.Game.Midlet.LicenseLoadingTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.Game.Midlet.LicenseLoadingType as LicenseLoadingType


jclass : String
jclass =
    "LicenseLoadingTypeFactory"


jchain : List String
jchain =
    [ "LicenseLoadingTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INITIAL_LOADING", JR.defaultOf "" ), ( "GAME_START", JR.defaultOf "" ), ( "LOGIN", JR.defaultOf "" ), ( "OTHER", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getIntance_0", jm_getIntance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseLoadingTypeFactory"
        [ ( "jm_getIntance_0", jm_getIntance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LicenseLoadingTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "INITIAL_LOADING" "" JR.this (JR.new LicenseLoadingType.jnew_1 [ (JR.str "Initial Loading") ])),
                JR.exec (JR.setField "GAME_START" "" JR.this (JR.new LicenseLoadingType.jnew_1 [ (JR.str "Game Start") ])),
                JR.exec (JR.setField "LOGIN" "" JR.this (JR.new LicenseLoadingType.jnew_1 [ (JR.str "Login") ])),
                JR.exec (JR.setField "OTHER" "" JR.this (JR.new LicenseLoadingType.jnew_1 [ (JR.str "Other/Usually The First Non Demo Level") ])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getIntance_0 : JR.Method
jm_getIntance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
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

