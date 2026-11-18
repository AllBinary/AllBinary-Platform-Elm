module Org.Allbinary.Logic.System.Security.Licensing.ThirdPartyInApplicationPurchase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.System.Security.Licensing.ThirdPartyInApplicationPurchaseInterface as ThirdPartyInApplicationPurchaseInterface


jclass : String
jclass =
    "ThirdPartyInApplicationPurchase"


jchain : List String
jchain =
    [ "ThirdPartyInApplicationPurchase" ]
        ++ ThirdPartyInApplicationPurchaseInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "isPurchased_1", jm_isPurchased_1 )
        , ( "onCreate_2", jm_onCreate_2 )
        , ( "onDestroy_0", jm_onDestroy_0 )
        , ( "onStart_0", jm_onStart_0 )
        , ( "onActivityResult_3", jm_onActivityResult_3 )
        , ( "onSaveInstanceState_1", jm_onSaveInstanceState_1 )
        , ( "onStop_0", jm_onStop_0 )
        , ( "requestPurchase_1", jm_requestPurchase_1 )
        , ( "requestReceipts_0", jm_requestReceipts_0 )
        , ( "add_1", jm_add_1 )
        , ( "getUserName_0", jm_getUserName_0 )
        , ( "isEnabled_0", jm_isEnabled_0 )
        , ( "requestProducts_0", jm_requestProducts_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ThirdPartyInApplicationPurchase"
        [ ( "jm_isPurchased_1", jm_isPurchased_1 ), ( "jm_onCreate_2", jm_onCreate_2 ), ( "jm_onDestroy_0", jm_onDestroy_0 ), ( "jm_onStart_0", jm_onStart_0 ), ( "jm_onActivityResult_3", jm_onActivityResult_3 ), ( "jm_onSaveInstanceState_1", jm_onSaveInstanceState_1 ), ( "jm_onStop_0", jm_onStop_0 ), ( "jm_requestPurchase_1", jm_requestPurchase_1 ), ( "jm_requestReceipts_0", jm_requestReceipts_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_getUserName_0", jm_getUserName_0 ), ( "jm_isEnabled_0", jm_isEnabled_0 ), ( "jm_requestProducts_0", jm_requestProducts_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_isPurchased_1 : JR.Method
jm_isPurchased_1 jheap jthis jargs =
    JR.method [ ( "lockableFeature", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_onCreate_2 : JR.Method
jm_onCreate_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "stateObject", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onDestroy_0 : JR.Method
jm_onDestroy_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onStart_0 : JR.Method
jm_onStart_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onActivityResult_3 : JR.Method
jm_onActivityResult_3 jheap jthis jargs =
    JR.method [ ( "requestCode", "I" ), ( "resultCode", "I" ), ( "dataObject", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSaveInstanceState_1 : JR.Method
jm_onSaveInstanceState_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onStop_0 : JR.Method
jm_onStop_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_requestPurchase_1 : JR.Method
jm_requestPurchase_1 jheap jthis jargs =
    JR.method [ ( "lockableFeature", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_requestReceipts_0 : JR.Method
jm_requestReceipts_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "lockableFeature", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getUserName_0 : JR.Method
jm_getUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_isEnabled_0 : JR.Method
jm_isEnabled_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_requestProducts_0 : JR.Method
jm_requestProducts_0 jheap jthis jargs =
    JR.method [] ""
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

