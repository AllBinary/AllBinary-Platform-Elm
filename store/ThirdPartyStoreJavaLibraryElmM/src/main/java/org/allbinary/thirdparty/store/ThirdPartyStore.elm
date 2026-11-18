module Org.Allbinary.Thirdparty.Store.ThirdPartyStore exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thirdparty.store
-}

import JR



jclass : String
jclass =
    "ThirdPartyStore"


jchain : List String
jchain =
    [ "ThirdPartyStore" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "authorized", JR.defaultOf "Z" ), ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "authorize_1", jm_authorize_1 )
        , ( "isAuthorized_0", jm_isAuthorized_0 )
        , ( "setAuthorized_1", jm_setAuthorized_1 )
        , ( "getName_0", jm_getName_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ThirdPartyStore"
        [ ( "jm_authorize_1", jm_authorize_1 ), ( "jm_isAuthorized_0", jm_isAuthorized_0 ), ( "jm_setAuthorized_1", jm_setAuthorized_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_authorize_1 : JR.Method
jm_authorize_1 jheap jthis jargs =
    JR.method [ ( "clientInformationInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isAuthorized_0 : JR.Method
jm_isAuthorized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "authorized") ])
        (jregister jheap)
        jthis
        jargs


jm_setAuthorized_1 : JR.Method
jm_setAuthorized_1 jheap jthis jargs =
    JR.method [ ( "authorized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "authorized" "Z" JR.this (JR.local "authorized")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
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

