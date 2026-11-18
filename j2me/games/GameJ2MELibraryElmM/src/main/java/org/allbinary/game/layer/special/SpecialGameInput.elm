module Org.Allbinary.Game.Layer.Special.SpecialGameInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Layer.Special.SpecialGameInputInterface as SpecialGameInputInterface


jclass : String
jclass =
    "SpecialGameInput"


jchain : List String
jchain =
    [ "SpecialGameInput" ]
        ++ SpecialGameInputInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "up_0", jm_up_0 )
        , ( "down_0", jm_down_0 )
        , ( "right_0", jm_right_0 )
        , ( "left_0", jm_left_0 )
        , ( "strafeLeft_0", jm_strafeLeft_0 )
        , ( "strafeRight_0", jm_strafeRight_0 )
        , ( "fire_2", jm_fire_2 )
        , ( "special1_2", jm_special1_2 )
        , ( "special2_2", jm_special2_2 )
        , ( "special3_2", jm_special3_2 )
        , ( "special4_2", jm_special4_2 )
        , ( "special5_2", jm_special5_2 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialGameInput"
        [ ( "jm_up_0", jm_up_0 ), ( "jm_down_0", jm_down_0 ), ( "jm_right_0", jm_right_0 ), ( "jm_left_0", jm_left_0 ), ( "jm_strafeLeft_0", jm_strafeLeft_0 ), ( "jm_strafeRight_0", jm_strafeRight_0 ), ( "jm_fire_2", jm_fire_2 ), ( "jm_special1_2", jm_special1_2 ), ( "jm_special2_2", jm_special2_2 ), ( "jm_special3_2", jm_special3_2 ), ( "jm_special4_2", jm_special4_2 ), ( "jm_special5_2", jm_special5_2 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_up_0 : JR.Method
jm_up_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_down_0 : JR.Method
jm_down_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_right_0 : JR.Method
jm_right_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_left_0 : JR.Method
jm_left_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_strafeLeft_0 : JR.Method
jm_strafeLeft_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_strafeRight_0 : JR.Method
jm_strafeRight_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_fire_2 : JR.Method
jm_fire_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special1_2 : JR.Method
jm_special1_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special2_2 : JR.Method
jm_special2_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special3_2 : JR.Method
jm_special3_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special4_2 : JR.Method
jm_special4_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_special5_2 : JR.Method
jm_special5_2 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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

