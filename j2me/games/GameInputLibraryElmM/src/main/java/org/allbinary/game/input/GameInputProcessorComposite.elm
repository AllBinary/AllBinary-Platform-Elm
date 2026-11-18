module Org.Allbinary.Game.Input.GameInputProcessorComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Game.Input.PlayerGameInput as PlayerGameInput
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "GameInputProcessorComposite"


jchain : List String
jchain =
    [ "GameInputProcessorComposite" ]
        ++ PlayerGameInput.jchain


jfields : List ( String, JR.JValue )
jfields =
    PlayerGameInput.jfields ++ [ ( "name", JR.defaultOf "" ), ( "gameInputProcessorInterface", JR.defaultOf "" ), ( "NAME_LABEL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_0", jm_update_0 )
        , ( "toString_0", jm_toString_0 ) ]
        PlayerGameInput.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputProcessorComposite"
        [ ( "jm_update_0", jm_update_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "gameInputProcessorInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PlayerGameInput.jinit_3 JR.this [ (JR.new BasicArrayListD.jnew_0 []), (JR.new BasicArrayListD.jnew_0 []), (JR.map JR.neg (JR.int 1)) ]),
                JR.exec (JR.setField "NAME_LABEL" "" JR.this (JR.str " GameInputProcessorInterface: ")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "gameInputProcessorInterface" "" JR.this (JR.local "gameInputProcessorInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "list" "" (JR.invoke "getGameKeyEventList_0" JR.this []), 
                        JR.exec (JR.invoke "onInput_1" (JR.thisField "gameInputProcessorInterface") [ (JR.local "list") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.callVia PlayerGameInput.jvtable "toString_0" JR.this []) ]) [ (JR.thisField "NAME_LABEL") ]) [ (JR.thisField "name") ]) []) ])
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

