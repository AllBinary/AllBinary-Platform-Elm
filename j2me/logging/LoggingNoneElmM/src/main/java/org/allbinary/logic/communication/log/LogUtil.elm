module Org.Allbinary.Logic.Communication.Log.LogUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR



jclass : String
jclass =
    "LogUtil"


jchain : List String
jchain =
    [ "LogUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "putP_1", jm_putP_1 )
        , ( "putF_3", jm_putF_3 )
        , ( "putFS_3", jm_putFS_3 )
        , ( "put_4", jm_put_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_putP_1", jm_putP_1 ), ( "jm_putF_3", jm_putF_3 ), ( "jm_putFS_3", jm_putFS_3 ), ( "jm_put_4", jm_put_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LogUtil" jclinit "instance"
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


jm_putP_1 : JR.Method
jm_putP_1 jheap jthis jargs =
    JR.method [ ( "log", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_putF_3 : JR.Method
jm_putF_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_putFS_3 : JR.Method
jm_putFS_3 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "className", "" ), ( "functionName", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_put_4 : JR.Method
jm_put_4 jheap jthis jargs =
    JR.method [ ( "specialMessage", "" ), ( "anyType", "" ), ( "functionName", "" ), ( "exception", "" ) ] ""
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

