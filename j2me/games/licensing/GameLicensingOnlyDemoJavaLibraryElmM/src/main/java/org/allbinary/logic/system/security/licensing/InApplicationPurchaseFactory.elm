module Org.Allbinary.Logic.System.Security.Licensing.InApplicationPurchaseFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "InApplicationPurchaseFactory"


jchain : List String
jchain =
    [ "InApplicationPurchaseFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_2", jm_init_2 )
        , ( "onCreate_2", jm_onCreate_2 )
        , ( "onStart_0", jm_onStart_0 )
        , ( "onResult_3", jm_onResult_3 )
        , ( "onSaveState_1", jm_onSaveState_1 )
        , ( "onStop_0", jm_onStop_0 )
        , ( "onDestroy_0", jm_onDestroy_0 )
        , ( "purchase_1", jm_purchase_1 )
        , ( "isPurchased_1", jm_isPurchased_1 )
        , ( "add_1", jm_add_1 )
        , ( "getUserName_0", jm_getUserName_0 )
        , ( "isEnabled_0", jm_isEnabled_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InApplicationPurchaseFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_onCreate_2", jm_onCreate_2 ), ( "jm_onStart_0", jm_onStart_0 ), ( "jm_onResult_3", jm_onResult_3 ), ( "jm_onSaveState_1", jm_onSaveState_1 ), ( "jm_onStop_0", jm_onStop_0 ), ( "jm_onDestroy_0", jm_onDestroy_0 ), ( "jm_purchase_1", jm_purchase_1 ), ( "jm_isPurchased_1", jm_isPurchased_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_getUserName_0", jm_getUserName_0 ), ( "jm_isEnabled_0", jm_isEnabled_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InApplicationPurchaseFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "stateObject", "" ) ] ""
        identity
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


jm_onStart_0 : JR.Method
jm_onStart_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onResult_3 : JR.Method
jm_onResult_3 jheap jthis jargs =
    JR.method [ ( "requestCode", "I" ), ( "resultCode", "I" ), ( "data", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSaveState_1 : JR.Method
jm_onSaveState_1 jheap jthis jargs =
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


jm_onDestroy_0 : JR.Method
jm_onDestroy_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_purchase_1 : JR.Method
jm_purchase_1 jheap jthis jargs =
    JR.method [ ( "lockableFeature", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isPurchased_1 : JR.Method
jm_isPurchased_1 jheap jthis jargs =
    JR.method [ ( "lockableFeature", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

