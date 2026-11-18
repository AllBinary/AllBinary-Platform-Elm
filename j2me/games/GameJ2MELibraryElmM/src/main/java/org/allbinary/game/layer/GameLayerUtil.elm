module Org.Allbinary.Game.Layer.GameLayerUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton


jclass : String
jclass =
    "GameLayerUtil"


jchain : List String
jchain =
    [ "GameLayerUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "isOnScreen_1", jm_isOnScreen_1 )
        , ( "isInside_8", jm_isInside_8 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameLayerUtil"
        [ ( "jm_isOnScreen_1", jm_isOnScreen_1 ), ( "jm_isInside_8", jm_isInside_8 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_isOnScreen_1 : JR.Method
jm_isOnScreen_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" (JR.local "layer") []), 
                    JR.return (JR.callStatic jm_isInside_8 [ (JR.invoke "getX_0" (JR.local "viewPosition") []), (JR.invoke "getY_0" (JR.local "viewPosition") []), (JR.invoke "getX2_0" (JR.local "viewPosition") []), (JR.invoke "getY2_0" (JR.local "viewPosition") []), (JR.int 0), (JR.int 0), (JR.invoke "getLastWidth_0" (JR.local "displayInfo") []), (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isInside_8 : JR.Method
jm_isInside_8 jheap jthis jargs =
    JR.method [ ( "rectX1", "I" ), ( "rectY1", "I" ), ( "rectX2", "I" ), ( "rectY2", "I" ), ( "rect2X1", "I" ), ( "rect2Y1", "I" ), ( "rect2X2", "I" ), ( "rect2Y2", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.and (JR.and (JR.and (JR.map2 JR.greater (JR.local "rectX1") (JR.local "rect2X1")) (JR.map2 JR.less (JR.local "rectX2") (JR.local "rect2X2"))) (JR.map2 JR.greater (JR.local "rectY1") (JR.local "rect2Y1"))) (JR.map2 JR.less (JR.local "rectY2") (JR.local "rect2Y2"))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
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

