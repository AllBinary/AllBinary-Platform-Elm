module Org.Allbinary.Game.Input.GameKeyUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas


jclass : String
jclass =
    "GameKeyUtil"


jchain : List String
jchain =
    [ "GameKeyUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "isDirectionKey_1", jm_isDirectionKey_1 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyUtil"
        [ ( "jm_isDirectionKey_1", jm_isDirectionKey_1 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameKeyUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_isDirectionKey_1 : JR.Method
jm_isDirectionKey_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.or (JR.or (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_UP) (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_DOWN)) (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_LEFT)) (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_RIGHT)) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
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

