module Org.Allbinary.Game.Displayable.Canvas.CanvasUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings


jclass : String
jclass =
    "CanvasUtil"


jchain : List String
jchain =
    [ "CanvasUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getKeyName_1", jm_getKeyName_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CanvasUtil"
        [ ( "jm_getKeyName_1", jm_getKeyName_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getKeyName_1 : JR.Method
jm_getKeyName_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] ""
        (JR.run [ 
                    JR.declare "commonPhoneStrings" "" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_UP) (JR.run [ 
                        JR.return (JR.field "UP" (JR.local "commonPhoneStrings")) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_DOWN) (JR.run [ 
                        JR.return (JR.field "DOWN" (JR.local "commonPhoneStrings")) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_RIGHT) (JR.run [ 
                        JR.return (JR.field "RIGHT" (JR.local "commonPhoneStrings")) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_LEFT) (JR.run [ 
                        JR.return (JR.field "LEFT" (JR.local "commonPhoneStrings")) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_FIRE) (JR.run [ 
                        JR.return (JR.field "FIRE" (JR.local "commonPhoneStrings")) ]) identity ]) ]) ]) ]), 
                    JR.return (JR.str "UNKNOWN KEY") ])
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

