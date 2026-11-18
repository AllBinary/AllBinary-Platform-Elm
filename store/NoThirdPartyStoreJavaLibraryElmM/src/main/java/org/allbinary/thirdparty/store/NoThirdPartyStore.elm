module Org.Allbinary.Thirdparty.Store.NoThirdPartyStore exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thirdparty.store
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Thirdparty.Store.ThirdPartyStore as ThirdPartyStore


jclass : String
jclass =
    "NoThirdPartyStore"


jchain : List String
jchain =
    [ "NoThirdPartyStore" ]
        ++ ThirdPartyStore.jchain


jfields : List ( String, JR.JValue )
jfields =
    ThirdPartyStore.jfields ++ []


jvtable =
    JR.vtable
        [ ( "authorize_1", jm_authorize_1 ) ]
        ThirdPartyStore.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoThirdPartyStore"
        [ ( "jm_authorize_1", jm_authorize_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect ThirdPartyStore.jinit_1 JR.this [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_authorize_1 : JR.Method
jm_authorize_1 jheap jthis jargs =
    JR.method [ ( "clientInformationInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setAuthorized_1" JR.this [ (JR.bool True) ]) ])
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

