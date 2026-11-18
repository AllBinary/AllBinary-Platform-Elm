module Org.Allbinary.Logic.System.Security.Licensing.ClientInformationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.ClientInformation as ClientInformation
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ClientInformationFactory"


jchain : List String
jchain =
    [ "ClientInformationFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ClientInformationFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.field "NOT_IMPLEMENTED" (JR.local "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")) ]), 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.return (JR.new ClientInformation.jnew_4 [ (JR.field "NULL_STRING" (JR.local "stringUtil")), (JR.field "NULL_STRING" (JR.local "stringUtil")), (JR.field "NULL_STRING" (JR.local "stringUtil")), (JR.field "NULL_STRING" (JR.local "stringUtil")) ]) ])
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

