module Org.Allbinary.Media.Audio.PlayerStateUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Javax.Microedition.Media.Player as Player


jclass : String
jclass =
    "PlayerStateUtil"


jchain : List String
jchain =
    [ "PlayerStateUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "UNREALIZED", JR.defaultOf "" ), ( "REALIZED", JR.defaultOf "" ), ( "PREFETCHED", JR.defaultOf "" ), ( "STARTED", JR.defaultOf "" ), ( "CLOSED", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "convert_1", jm_convert_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerStateUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_convert_1", jm_convert_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PlayerStateUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "UNREALIZED" "" JR.this (JR.str "UNREALIZED")),
                JR.exec (JR.setField "REALIZED" "" JR.this (JR.str "REALIZED")),
                JR.exec (JR.setField "PREFETCHED" "" JR.this (JR.str "PREFETCHED")),
                JR.exec (JR.setField "STARTED" "" JR.this (JR.str "STARTED")),
                JR.exec (JR.setField "CLOSED" "" JR.this (JR.str "CLOSED")),
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


jm_convert_1 : JR.Method
jm_convert_1 jheap jthis jargs =
    JR.method [ ( "state", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "state") Player.jstatic_UNREALIZED) (JR.run [ 
                        JR.return (JR.thisField "UNREALIZED") ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "state") Player.jstatic_REALIZED) (JR.run [ 
                        JR.return (JR.thisField "REALIZED") ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "state") Player.jstatic_PREFETCHED) (JR.run [ 
                        JR.return (JR.thisField "PREFETCHED") ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "state") Player.jstatic_STARTED) (JR.run [ 
                        JR.return (JR.thisField "STARTED") ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "state") Player.jstatic_CLOSED) (JR.run [ 
                        JR.return (JR.thisField "CLOSED") ]) identity ]) ]) ]) ]), 
                    JR.return (JR.field "UNKNOWN" (JR.thisField "commonStrings")) ])
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

