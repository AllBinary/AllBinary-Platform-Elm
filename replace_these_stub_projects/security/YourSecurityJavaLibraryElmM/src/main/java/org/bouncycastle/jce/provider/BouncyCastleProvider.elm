module Org.Bouncycastle.Jce.Provider.BouncyCastleProvider exposing (..)

{-| Generated Code Do Not Modify package org.bouncycastle.jce.provider
-}

import JR



jclass : String
jclass =
    "BouncyCastleProvider"


jchain : List String
jchain =
    [ "BouncyCastleProvider" ]
        ++ [ "Provider" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ []


jvtable =
    JR.vtable
        [ ( "setParameter_2", jm_setParameter_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BouncyCastleProvider"
        [ ( "jm_setParameter_2", jm_setParameter_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_info", jstatic_info ), ( "jstatic_PROVIDER_NAME", jstatic_PROVIDER_NAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_info : JR.M
jstatic_info s =
    JR.static "BouncyCastleProvider" jclinit "info"
        (JR.str "BouncyCastle Security Provider v1.41")
        s


jstatic_PROVIDER_NAME : JR.M
jstatic_PROVIDER_NAME s =
    JR.static "BouncyCastleProvider" jclinit "PROVIDER_NAME"
        (JR.str "BC")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "Provider.jinit_3") JR.this [ jstatic_PROVIDER_NAME, (JR.float 1.41), jstatic_info ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setParameter_2 : JR.Method
jm_setParameter_2 jheap jthis jargs =
    JR.method [ ( "parameterName", "" ), ( "parameter", "" ) ] ""
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

