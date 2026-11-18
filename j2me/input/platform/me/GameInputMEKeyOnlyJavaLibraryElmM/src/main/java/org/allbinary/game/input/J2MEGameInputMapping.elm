module Org.Allbinary.Game.Input.J2MEGameInputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Configuration.Persistance.GamePersistanceStrings as GamePersistanceStrings
import Org.Allbinary.Game.Input.J2MEKeyFactory as J2MEKeyFactory
import Org.Allbinary.Game.Input.Mapping.PersistentInputMapping as PersistentInputMapping


jclass : String
jclass =
    "J2MEGameInputMapping"


jchain : List String
jchain =
    [ "J2MEGameInputMapping" ]
        ++ PersistentInputMapping.jchain


jfields : List ( String, JR.JValue )
jfields =
    PersistentInputMapping.jfields ++ []


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "isDelete_1", jm_isDelete_1 )
        , ( "isSystemInput_1", jm_isSystemInput_1 ) ]
        PersistentInputMapping.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "J2MEGameInputMapping"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_isDelete_1", jm_isDelete_1 ), ( "jm_isSystemInput_1", jm_isSystemInput_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect PersistentInputMapping.jinit_1 JR.this [ (JR.field "SAVED_INPUT_CONFIGURATION_RECORD_ID" (JR.callStatic GamePersistanceStrings.jm_getInstance_0 [])) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "init_0" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) []), 
                    JR.exec (JR.callVia PersistentInputMapping.jvtable "init_1" JR.this [ (JR.local "abeClientInformation") ]), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getTotalMapped_0" JR.this []) (JR.int 0)) (JR.invoke "isDefaultNew_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.invoke "addMapping_1" (JR.invoke "getInputMapping_0" JR.this []) [ (JR.invoke "getDefault_0" JR.this []) ]), 
                        JR.exec (JR.invoke "save_1" JR.this [ (JR.local "abeClientInformation") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isDelete_1 : JR.Method
jm_isDelete_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "GAME_D" (JR.callStatic GameKeyFactory.jm_getInstance_0 []))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isSystemInput_1 : JR.Method
jm_isSystemInput_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

