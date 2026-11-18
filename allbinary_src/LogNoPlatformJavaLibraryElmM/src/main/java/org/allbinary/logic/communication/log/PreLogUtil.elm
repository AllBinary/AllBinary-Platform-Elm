module Org.Allbinary.Logic.Communication.Log.PreLogUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "PreLogUtil"


jchain : List String
jchain =
    [ "PreLogUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "put_3", jm_put_3 )
        , ( "putOE_4", jm_putOE_4 )
        , ( "putSE_4", jm_putSE_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PreLogUtil"
        [ ( "jm_put_3", jm_put_3 ), ( "jm_putOE_4", jm_putOE_4 ), ( "jm_putSE_4", jm_putSE_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_put_3 : JR.Method
jm_put_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic jm_putOE_4 [ (JR.local "specialMessage"), (JR.local "anyType"), (JR.local "functionName"), (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_putOE_4 : JR.Method
jm_putOE_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_putSE_4 : JR.Method
jm_putSE_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "className", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
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

