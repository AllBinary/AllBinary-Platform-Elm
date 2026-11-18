module Org.Allbinary.Logic.System.Security.Licensing.StoreAppClientInformation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeClientInformation as AbeClientInformation
import Org.Allbinary.Thirdparty.Store.LongArrayIdentifierInterface as LongArrayIdentifierInterface


jclass : String
jclass =
    "StoreAppClientInformation"


jchain : List String
jchain =
    [ "StoreAppClientInformation" ]
        ++ AbeClientInformation.jchain
        ++ LongArrayIdentifierInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AbeClientInformation.jfields ++ [ ( "longArrayIdentifier", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getLongArrayIdentifier_0", jm_getLongArrayIdentifier_0 ) ]
        AbeClientInformation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StoreAppClientInformation"
        [ ( "jm_getLongArrayIdentifier_0", jm_getLongArrayIdentifier_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "version", "" ), ( "specialName", "" ), ( "shortName", "" ), ( "longArrayIdentifier", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AbeClientInformation.jinit_4 JR.this [ (JR.local "name"), (JR.local "version"), (JR.local "specialName"), (JR.local "shortName") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "longArrayIdentifier" "" JR.this (JR.local "longArrayIdentifier")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getLongArrayIdentifier_0 : JR.Method
jm_getLongArrayIdentifier_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "longArrayIdentifier") ])
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

